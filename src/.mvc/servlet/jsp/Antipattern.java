package mvc.servlet.jsp;

import java.util.ArrayList;
import java.util.List;

public class Antipattern {
public String name;
public String element;
public String type;
public String content;
public String recommendation;
public  Antipattern(String name, String element, String type, String content, String recommendation)
{
	this.name=name;
	this.element=element;
	this.type=type;
	this.content=content;
	this.recommendation=recommendation;
}
public void setName(String name) {
    this.name = name;
}

public String getName() {
    return name;
}

public void setrecommendation(String recommendation) {
    this.recommendation = recommendation;
}

public String getrecommendation() {
    return recommendation;
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


}
