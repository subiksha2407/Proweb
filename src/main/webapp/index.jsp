<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Increment and Decrement Example</title>
</head>
<body>
    <h1>Increment and Decrement Example</h1>

    <%
        // Initialize the number
        Integer number = (Integer) session.getAttribute("number");
        if (number == null) {
            number = 0;
        }

        // Check which button was pressed and update the number accordingly
        String action = request.getParameter("action");
        if ("increment".equals(action)) {
            number++;
        } else if ("decrement".equals(action)) {
            number--;
        }

        // Store the updated number in the session
        session.setAttribute("number", number);
    %>

    <p>Current Number: <%= number %></p>

    <form method="post" action="index.jsp">
        <button type="submit" name="action" value="increment">+</button>
        <button type="submit" name="action" value="decrement">-</button>
    </form>
</body>
</html>
