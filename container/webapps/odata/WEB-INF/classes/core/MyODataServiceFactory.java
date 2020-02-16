package core;

import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.apache.olingo.odata2.api.ODataCallback;
import org.apache.olingo.odata2.api.ODataDebugCallback;
import org.apache.olingo.odata2.api.ep.EntityProvider;
import org.apache.olingo.odata2.api.exception.ODataApplicationException;
import org.apache.olingo.odata2.api.processor.ODataErrorCallback;
import org.apache.olingo.odata2.api.processor.ODataErrorContext;
import org.apache.olingo.odata2.api.processor.ODataResponse;
import org.apache.olingo.odata2.jpa.processor.api.ODataJPAContext;
import org.apache.olingo.odata2.jpa.processor.api.ODataJPAServiceFactory;
import org.apache.olingo.odata2.jpa.processor.api.exception.ODataJPARuntimeException;

public class MyODataServiceFactory extends ODataJPAServiceFactory {
	private static final String persistenceUnitName = "MyOData";

	@Override
	public ODataJPAContext initializeODataJPAContext() throws ODataJPARuntimeException {
		ODataJPAContext oDataJPAContext = this.getODataJPAContext();
		oDataJPAContext.setDefaultNaming(false);
		try {
			EntityManagerFactory emf = Persistence.createEntityManagerFactory(persistenceUnitName);
			oDataJPAContext.setEntityManagerFactory(emf);
			oDataJPAContext.setPersistenceUnitName(persistenceUnitName);
			return oDataJPAContext;
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return oDataJPAContext;
	}

	@Override
	public <T extends ODataCallback> T getCallback(Class<? extends ODataCallback> callbackInterface) {
		// TODO Auto-generated method stub
		T callback;

		if (callbackInterface.isAssignableFrom(MyErrorCallback.class)) {
			callback = (T) new MyErrorCallback();
		} else {
			callback = (T) super.getCallback(callbackInterface);
		}

		return callback;

	}

	public class MyErrorCallback implements ODataErrorCallback {
		@Override
		public ODataResponse handleError(ODataErrorContext context) throws ODataApplicationException {
			System.out.println(context.getException().getClass().getName() + ":" + context.getMessage());
			for (StackTraceElement elem : context.getException().getStackTrace()) {
			    System.err.println(elem);
			}
			return EntityProvider.writeErrorDocument(context);
		}
	}

}
