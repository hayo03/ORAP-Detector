package mvc.servlet.jsp;
import org.semanticweb.owlapi.model.*;
import org.semanticweb.owlapi.apibinding.OWLManager;
import org.swrlapi.core.*;
import org.swrlapi.factory.*;
import org.swrlapi.sqwrl.*;
import org.swrlapi.sqwrl.exceptions.SQWRLException;

import java.io.*;
import java.util.ArrayList;
import java.util.List;
public class Model {
	public OWLOntology ontology;
	public SWRLRuleEngine swrlRuleEngine;
	public SQWRLQueryEngine queryEngine;
	public String Path;
	public Pattern Pattern;
	
	public void RESTPatternDetection(List<Pattern> Patternlist)
	{
		String name, content, type, element;
		Pattern P1=new Pattern("Pattern","Rest Element","Type","Content");
		Patternlist.add(0,P1); 
		try{ 
			OWLOntologyManager ontologyManager = OWLManager.createOWLOntologyManager(); 
			OWLOntology ontology2 = ontologyManager.loadOntologyFromOntologyDocument(new File("C:/Users/ASUS/Dropbox/Journal2017-2018/Implimentation/TestApi.owl"));
			
			SQWRLQueryEngine queryEngine1 = SWRLAPIFactory.createSQWRLQueryEngine(ontology2);
			 SQWRLResult result = queryEngine1.runSQWRLQuery("ListOfRestpatterns");
			 				 int i=1;
			 				 while (result.next()){
			 					 name=result.getValue("pattern").toString();
			 					 
			 					element=result.getValue("element").toString().replace("base:", "");
			 					
			 					type=result.getValue("elementtype").toString().replace("^^xsd:string", "");
			 					 
			 					content=result.getValue("content").toString().replace("^^xsd:string", "");
			 					
			 					 Pattern p2= new Pattern(name,element,type,content);
			 					Patternlist.add(i,p2); 
			 					i++;
			 					 
			 					/** System.out.println("url and its content: "+ result.getValue("pattern").toString()+"/" + result.getValue("url").toString()+"/"+result.getValue("content").toString()); */
			 				 
			 				 }
			 				
			 				 
			 } catch (OWLOntologyCreationException e) {
			 		        e.printStackTrace();
			 			
			 			
			 			} catch (SQWRLException e) {
			 	      System.err.println("Error running SQWRL query: " + e.getMessage());
			 	      System.exit(-1);
			 	    }
	}
	
	public void RESTAntiPatternDetection(List<Antipattern> AntiPatternlist)
	{
		String name, content, type, element, recommendation;
		Antipattern P1=new Antipattern("Anti-Pattern","Rest Element","Type","Content","recommendation");
		AntiPatternlist.add(0,P1); 
		try{ 
			OWLOntologyManager ontologyManager = OWLManager.createOWLOntologyManager(); 
			OWLOntology ontology2 = ontologyManager.loadOntologyFromOntologyDocument(new File("C:/Users/ASUS/Dropbox/Journal2017-2018/Implimentation/TestApi.owl"));
			
			SQWRLQueryEngine queryEngine1 = SWRLAPIFactory.createSQWRLQueryEngine(ontology2);
			 SQWRLResult result = queryEngine1.runSQWRLQuery("ListOfRESTAnti-patterns");
			 				 int i=1;
			 				 while (result.next()){
			 					name=result.getValue("antipattern").toString();
			 					 
                                 element=result.getValue("element").toString().replace("base:", "");
			 					
			 					type=result.getValue("elementtype").toString().replace("^^xsd:string", "");
			 					 
			 					content=result.getValue("content").toString().replace("^^xsd:string", "");
			 					recommendation=result.getValue("desc").toString().replace("^^xsd:string", "");
			 					
			 					 Antipattern p2= new Antipattern(name,element,type,content,recommendation);
			 					AntiPatternlist.add(i,p2); 
			 					i++;
			 					 
			 					/** System.out.println("url and its content: "+ result.getValue("pattern").toString()+"/" + result.getValue("url").toString()+"/"+result.getValue("content").toString()); */
			 				 
			 				 }
			 				
			 				 
			 } catch (OWLOntologyCreationException e) {
			 		        e.printStackTrace();
			 			
			 			
			 			} catch (SQWRLException e) {
			 	      System.err.println("Error running SQWRL query: " + e.getMessage());
			 	      System.exit(-1);
			 	    }
	}

	public void OCCIPatternDetection(List<Pattern> Patternlist)
	{
		String name, content, type, element;
		Pattern P1=new Pattern("Pattern","Rest Element","Type","Content");
		Patternlist.add(0,P1); 
		try{ 
			OWLOntologyManager ontologyManager = OWLManager.createOWLOntologyManager(); 
			OWLOntology ontology2 = ontologyManager.loadOntologyFromOntologyDocument(new File("C:/Users/ASUS/Dropbox/Journal2017-2018/Implimentation/TestApi.owl"));
			
			SQWRLQueryEngine queryEngine1 = SWRLAPIFactory.createSQWRLQueryEngine(ontology2);
			 SQWRLResult result = queryEngine1.runSQWRLQuery("ListOfOCCIpatterns");
			 				 int i=1;
			 				 while (result.next()){
			 					 name=result.getValue("pattern").toString();
			 					 
                                element=result.getValue("element").toString().replace("base:", "");
			 					
			 					type=result.getValue("elementtype").toString().replace("^^xsd:string", "");
			 					 
			 					content=result.getValue("content").toString().replace("^^xsd:string", "");
			 					
			 					 Pattern p2= new Pattern(name,element,type,content);
			 					Patternlist.add(i,p2); 
			 					i++;
			 					 
			 					/** System.out.println("url and its content: "+ result.getValue("pattern").toString()+"/" + result.getValue("url").toString()+"/"+result.getValue("content").toString()); */
			 				 
			 				 }
			 				
			 				 
			 } catch (OWLOntologyCreationException e) {
			 		        e.printStackTrace();
			 			
			 			
			 			} catch (SQWRLException e) {
			 	      System.err.println("Error running SQWRL query: " + e.getMessage());
			 	      System.exit(-1);
			 	    }
	}
	
	public void OCCIAntiPatternDetection(List<Antipattern> AntiPatternlist)
	{
		String name, content, type, element,recommendation;
		Antipattern P1=new Antipattern("Anti-Pattern","Rest Element","Type","Content","recommendation");
		AntiPatternlist.add(0,P1); 
		try{ 
			OWLOntologyManager ontologyManager = OWLManager.createOWLOntologyManager(); 
			OWLOntology ontology2 = ontologyManager.loadOntologyFromOntologyDocument(new File("C:/Users/ASUS/Dropbox/Journal2017-2018/Implimentation/TestApi.owl"));
			
			SQWRLQueryEngine queryEngine1 = SWRLAPIFactory.createSQWRLQueryEngine(ontology2);
			 SQWRLResult result = queryEngine1.runSQWRLQuery("ListOfOCCIAnti-patterns");
			 				 int i=1;
			 				 while (result.next()){
			 					name=result.getValue("antipattern").toString();
			 					
                                element=result.getValue("element").toString().replace("base:", "");
			 					
			 					type=result.getValue("elementtype").toString().replace("^^xsd:string", "");
			 					 
			 					content=result.getValue("content").toString().replace("^^xsd:string", "");
			 					recommendation=result.getValue("desc").toString().replace("^^xsd:string", "");
			 					Antipattern p2= new Antipattern(name,element,type,content,recommendation);
			 					 
			 					AntiPatternlist.add(i,p2); 
			 					i++;
			 					 
			 					/** System.out.println("url and its content: "+ result.getValue("pattern").toString()+"/" + result.getValue("url").toString()+"/"+result.getValue("content").toString()); */
			 				 
			 				 }
			 				
			 				 
			 } catch (OWLOntologyCreationException e) {
			 		        e.printStackTrace();
			 			
			 			
			 			} catch (SQWRLException e) {
			 	      System.err.println("Error running SQWRL query: " + e.getMessage());
			 	      System.exit(-1);
			 	    }
	}
	public static void main(String[] args) {
	    List<Pattern> Pattern2 = new ArrayList<Pattern>();
	    Model m=new Model();
	    m.RESTPatternDetection(Pattern2);
	    int i=0;
	    for(i=0; i<Pattern2.size(); i++) 
	        System.out.println(Pattern2.get(i).name.toString()+"///"+Pattern2.get(i).element.toString()+"/////"+Pattern2.get(i).content.toString()); 
	   
	         
	    System.out.println("Anti patterns Lists");
	
	List<Antipattern> AntiPattern = new ArrayList<Antipattern>();
    Model mp=new Model();
    mp.RESTAntiPatternDetection(AntiPattern);
    int j=0;
    for(j=0; j<AntiPattern.size(); j++) 
        System.out.println(AntiPattern.get(j).name.toString()+"///"+AntiPattern.get(j).element.toString()+"/////"+AntiPattern.get(j).content.toString()); 
   
         
}
	
	
	
	
}
