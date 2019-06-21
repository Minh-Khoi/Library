<%-- 
    Document   : UpdateBook
    Created on : Jun 17, 2019, 1:22:28 PM
    Author     : USER
--%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<link rel="stylesheet" href="./css/add/small.css">
<body>
    
    <form:form cssStyle="border:1px solid #ccc"
            action="${pageContext.servletContext.contextPath}/listbookupdated/${usingUser.userID}.html" 
            method="POST" commandName="updatingBook">
        
        <div class="container">
            <h1>ALTER BOOK</h1>
            <hr>
            
            <label  ><b>BOOK ID</b></label>
            <form:input placeholder="Enter " type="number" path="bookID" required="true"/>
            
            <label  ><b>NAME</b></label>
            <form:input placeholder="Enter " path="bookName" required="true"/>
            <!--<input type="text" placeholder="Enter "  required>-->

            <label  ><b> AUTHOR </b></label>
            <form:input placeholder="Enter " path="author" required="true"/>
            <!--<input type="text" placeholder="Enter "  required>-->

            <label  ><b>PUBLISHER</b></label>
            <form:input placeholder="Enter " path="publisher" required="true"/>
            <!--<input type="text" placeholder="Enter "  required>-->

            <label  ><b>DAY OF PUBLISH</b></label>
            <form:input placeholder="Enter " path="dayOfPublish" required="true"/>
            <!--<input type="text" placeholder="Enter "  required>-->

            <label ><b>QUANTITY</b></label>
            <form:input type="number" path="quantity" required="true"/>
            <!--<input type="number" placeholder="Enter "  required>-->

            <label ><b>POSITION</b></label>
            <form:input placeholder="Enter " path="position" required="true"/>
            <!--<input type="text" placeholder="Enter "  required>-->
            
            
            <p>By creating an account you agree to our <a href="#" style="color:dodgerblue">Terms & Privacy</a>.</p>

            <div class="clearfix">
                <button type="reset" class="cancelbtn">Cancel</button>
                <button type="submit" class="signupbtn">UPDATE</button>
            </div>
        </div>
        
    </form:form>
    
    <!--<form action="" style="border:1px solid #ccc">
        <div class="container">
            <h1>UPDATE BOOK</h1>
            <hr>

            <label  ><b>BOOK 'S ID</b></label>
            <input type="text" placeholder="Enter "  required>

            <label  ><b>NAME</b></label>
            <input type="text" placeholder="Enter "  required>

            <label  ><b> AUTHOR </b></label>
            <input type="text" placeholder="Enter "  required>

            <label  ><b>PUBLISHER</b></label>
            <input type="text" placeholder="Enter "  required>

            <label  ><b>DAY OF PUBLISH</b></label>
            <input type="number" placeholder="Enter "  required>

            <label ><b>QUANTITY</b></label>
            <input type="number" placeholder="Enter "  required>

            <label ><b>POSITION</b></label>
            <input type="text" placeholder="Enter "  required>
            
            <label>
            <input type="checkbox" checked="checked" name="remember" style="margin-bottom:15px"> Remember me
            </label>
            
            <p>By creating an account you agree to our <a href="#" style="color:dodgerblue">Terms & Privacy</a>.</p>

            <div class="clearfix">
            <button type="button" class="cancelbtn">Cancel</button>
            <button type="submit" class="signupbtn">UPDATE</button>
            </div>
        </div>
    </form> -->

</body>

</html>
