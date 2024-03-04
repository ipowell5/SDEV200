<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Addition Quiz</title>
</head>
<body>
<h1>Addition Quiz</h1>
<form action="quizResult.jsp" method="post">
    <% 
        // Generate two random numbers for the quiz
        int num1 = (int)(Math.random() * 100);
        int num2 = (int)(Math.random() * 100);
        // Store the correct answer
        int correctAnswer = num1 + num2;
        // Display the question
        out.println("<p>What is " + num1 + " + " + num2 + "?</p>");
    %>
    <input type="hidden" name="correctAnswer" value="<%= correctAnswer %>">
    <input type="number" name="userAnswer">
    <br><br>
    <input type="submit" value="Submit">
</form>
</body>
</html>
