<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Dictionary</title>
</head>
<body>
<%!
    Map<String, String> dic = new HashMap<>();

%>
<%
    dic.put("hello", "xin chao");
    dic.put("how", "nhu the nao");
    dic.put("book", "quyen vo");
    dic.put("computer", "may tinh");
    String search = request.getParameter("search");
    String result = dic.get(search);
    if (result != null){
        out.println("word: " + search);
        out.println("Result: "  + result);

    } else {
        out.println("not found");
    }
%>
</body>
</html>