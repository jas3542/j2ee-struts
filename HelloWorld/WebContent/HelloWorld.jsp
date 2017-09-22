<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>HelloWorld</title>
</head>
<body>
	<div><<--Java logic-->></div>
	<!-- JSP scriptlet tag -->
	<div><%out.println("Java Code");%></div>
	<div>----------------------------------------------------------------------------------------------------------</div>
	<br></br>
	
	<div><<--Variable output directly-->></div>
	<!-- JSP expression tag -->
	<div><%=java.util.Calendar.getInstance().getTime()%></div>
	<div>----------------------------------------------------------------------------------------------------------</div>
	<br></br>
	
	<!-- JSP declaration tag -->
	<!-- The code written inside the jsp declaration tag is placed outside the service() method of auto generated servlet.
			So it doesn't get memory at each request.
			The jsp declaration tag can declare variables as well as methods. -->
	<div><%! int cube(int n){  
				return n*n*n;  
			}  %>
	</div>
	<div><<--Using method to return de net value-->></div>
	<div><%= cube(2) %></div>
	<div>----------------------------------------------------------------------------------------------------------</div>
	<br></br>
	
	<!-- JSP page directive -->
	<!-- The page directive defines attributes that apply to an entire JSP page.
		The import attribute is used to import class,interface or all the members of a package.
		It is similar to import keyword in java class or interface. -->
	<%@ page import="java.util.Date" %>
	<div><<--Page directive-->></div>
	<div><%= new Date() %></div>
	<div>----------------------------------------------------------------------------------------------------------</div>
	<br></br>
	
	<!-- Include directive -->
	<!-- The include directive is used to include the contents of any resource it may be jsp file, html file or text file. -->
	<div><<--Include directive-->></div>
	<div><%@ include file="SecondFile.jsp" %></div>
	<div>----------------------------------------------------------------------------------------------------------</div>
	<br></br>
	
	<!-- JSP taglib directive -->
	<!-- The JSP taglib directive is used to define a tag library that defines many tags. 
			We use the TLD (Tag Library Descriptor) file to define the tags. -->
	<div><<--JSP directive-->></div>
	<div></div>
	<div>----------------------------------------------------------------------------------------------------------</div>
	<br></br>
	
	<!-- Expression Language -->
	<!-- Simplifies the accessibility of data stored in the Java Bean component, 
			and other objects like request, session, application etc. -->
	<div><<--Expression Language (EL) in JSP-->></div>
	<div>${ param.name }</div>
	<div>----------------------------------------------------------------------------------------------------------</div>
	<br></br>
	
	<!-- Mysql driver imported with Maven. -->
	<div><<--Mysql Connection-->></div>
	<%@ page import="org.Hello.Connector" %>
	<div>
		<%
			//if(!Connector.getConnection().isClosed()) {
				out.println("Connected");
			//};
		%>
	</div>
	<div>----------------------------------------------------------------------------------------------------------</div>
	<br></br>
	
</body>
</html>