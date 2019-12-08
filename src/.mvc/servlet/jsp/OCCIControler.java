package mvc.servlet.jsp;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class OCCIControler
 */
@WebServlet("/OCCIControler")
public class OCCIControler extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public OCCIControler() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String OCCImethod = request.getParameter("OCCImethod");
		RequestDispatcher dispatcher;
		HttpSession session = request.getSession();
		
		if (OCCImethod.equals("Indentify Patterns")){
				 List<Pattern> Pattern2 = new ArrayList<Pattern>();
				    Model m=new Model();
				    m.OCCIPatternDetection(Pattern2);
				    int i=0;
				    for(i=0; i<Pattern2.size(); i++) 
				        System.out.println(Pattern2.get(i).name.toString()+"///"+Pattern2.get(i).element.toString()+"/////"+Pattern2.get(i).content.toString()); 
				   
				    
				    session.setAttribute("name", "C:\\Hayo\\API_files\\OOI_Ontology_API.owl");
					session.setAttribute("patternlistData2", Pattern2);
				    dispatcher = request.getRequestDispatcher("index.jsp");
				    dispatcher.forward(request, response);
		}	
		
		else
		{
			
			List<Antipattern> AntiPattern = new ArrayList<Antipattern>();
		    Model mp=new Model();
		    mp.OCCIAntiPatternDetection(AntiPattern);
		    /**
		    int i=0;
		    for(i=0; i<AntiPattern.size(); i++) 
		        System.out.println(AntiPattern.get(i).name.toString()+"///"+AntiPattern.get(i).element.toString()+"/////"+AntiPattern.get(i).type.toString()+"/////"+AntiPattern.get(i).content.toString()); 
		   */
		    session.setAttribute("name", "C:\\Hayo\\API_files\\OOI_Ontology_API.owl");
			session.setAttribute("antipatternlistData2", AntiPattern);
		    dispatcher = request.getRequestDispatcher("index.jsp");
		    dispatcher.forward(request, response);
		}
		}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
