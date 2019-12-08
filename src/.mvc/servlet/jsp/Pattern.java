package mvc.servlet.jsp;

import java.util.ArrayList;
import java.util.List;

public class Pattern {
public String name;
public String element;
public String type;
public String content;
public  Pattern(String name, String element, String type, String content)
{
	this.name=name;
	this.element=element;
	this.type=type;
	this.content=content;
}

public void setName(String name) {
    this.name = name;
}

public String getName() {
    return name;
}
public void setelement(String element) {
    this.element = element;

}
public String getelement() {
    return element;
}

public void setType(String type) {
    this.type = type;
}

public String getType() {
    return type;}



public void setcontent(String content) {
    this.content = content;
}
public String getcontent() {
    return content;}



public static void main(String[] args) {
    List<Pattern> Pattern2 = new ArrayList<Pattern>();
    
    Pattern P1= new Pattern("TidyURI","URL","URL","ok/ok/delete");
    Pattern2.add(0, P1);
    Pattern2.add(1, P1);
    for(int i=0; i<Pattern2.size(); i++) 
        System.out.println(Pattern2.get(i).content.toString()); 

    System.out.println(P1.getName().toString()); 
    System.out.println(P1.getelement().toString());
    System.out.println(P1.getType().toString());
    System.out.println(P1.getcontent().toString());
}
}
