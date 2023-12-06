<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<!DOCTYPE HTML>
<html>
<head>
    <title>XO-GAME SITE</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <link rel="stylesheet" type="text/css" href="resources/style.css">
    <script type="text/javascript" src="resources/gamescript.js" charset="UTF-8"></script>
</head>

<body>
<header>
    <nav class="up">
        <div class = form-one>
            <a href="<%=request.getContextPath()%>/">XO-GAME</a>
        </div>
        <div class="logout">
            <a href="<%=request.getContextPath()%>/logout"
               class="nav-link">Logout</a>
        </div>
    </nav>
</header>

<div class ="scoreboard">

    <table class = "scoretable">
        <tr>
            <th>AI </th>
            <th>You</th>
            <th>Draw</th>
        </tr>
        <tr>
            <td> <span id="aiScore">0</span> </td>
            <td><span id="humanScore">0</span> </td>
            <td> <span id="drawScore">0</span> </td>
        </tr>
    </table>



</div>

<br>

<input type="button" class="clear-button" value="CLEAR THE SCOREBOARD" onclick="ClearScoreboard(this)"/>


<table class="board" id="board">
    <tr>
        <td id="0" onclick="humanMove(this)" class="cell"></td>
        <td id="1" onclick="humanMove(this)" class="cell"></td>
        <td id="2" onclick="humanMove(this)"  class="cell"></td>
    </tr>
    <tr>
        <td id="3" onclick="humanMove(this)" class="cell"></td>
        <td id="4" onclick="humanMove(this)" class="cell"></td>
        <td id="5" onclick="humanMove(this)" class="cell"></td>
    </tr>
    <tr>
        <td id="6" onclick="humanMove(this)" class="cell"></td>
        <td id="7" onclick="humanMove(this)" class="cell"></td>
        <td id="8" onclick="humanMove(this)" class="cell"></td>
    </tr>
</table>



<div class= "button-holder">

    <input class="clear-button" type="button" value="RESTART" id="bnt-restart"  onclick="refreshBoard(this)"/>

    <input class="clear-button" type="button" value="AI START" id="bnt-ai" onclick="LetAIToStart(this)"/>


</div>

</body>
</html>
