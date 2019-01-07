package test;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

public class log4jTest {

	public static void main(String[] args) {
		Logger logger = LogManager.getRootLogger();
		logger.info("logger out put");

	}

}
