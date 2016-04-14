<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>  
    <title>left</title>
    <%@include file="/WEB-INF/jsp/public/commons.jspf" %>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/style/l.css" />
  </head>
<body>
<s:form id="form1" >
 	<s:iterator value="#privilegeList" >
 	<s:if test="#session.user.hasPrivilegeByName(privilegeName)">
       <div>
               <dl>
               	 
                  <dt>${privilegeName}</dt>
                   <s:iterator value="children">
                   	<s:if test="#session.user.hasPrivilegeByName(privilegeName)">
                          <dd><a href='${pageContext.request.contextPath}${url}.action' target="right">${privilegeName}</a></dd>
                    </s:if>
                   </s:iterator>
                   
               </dl>
        </div>
     </s:if>
     </s:iterator>
    </s:form>
</body>
</html>
