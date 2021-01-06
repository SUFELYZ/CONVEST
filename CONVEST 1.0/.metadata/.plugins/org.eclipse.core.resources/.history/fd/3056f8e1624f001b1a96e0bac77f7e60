package dao;
import org.neo4j.driver.*;

import org.neo4j.driver.types.Node;
import org.neo4j.driver.types.Path;
import org.neo4j.driver.types.Relationship;

public class SQL_Dao {
	 public static Driver driver = null;

	    public static void getDriver(){
	        String uri = "bolt://localhost:7687";
	        String user = "neo4j";//鍐欎綘鑷繁鐨刵eo4j鐨勭敤鎴峰悕
	        String password = "991117";//鍐欎綘鑷繁鐨刵eo4j鐨勫瘑鐮�
	        driver = GraphDatabase.driver(uri, AuthTokens.basic(user,password));
	        System.out.println("hello");
	    }

	    public static void close(){
	        if(driver!=null){
	            driver.close();
	        }
	    }
}
