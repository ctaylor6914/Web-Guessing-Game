<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="win.aspx.cs" Inherits="HighLow_A05.win" %>

<!DOCTYPE html>
<!--
	Programmer: Colby Taylor 8466914
	Date: 11/15/2021
	Description: HI Low Game - have the user select a range of numbers to guess, randomly 
	generate a number within that range and have the user guess.  If the guessed number 
	is higher than the random number then the range is decreased to the range below the 
	guessed number.
    This page 4/4 of the highlow game is the win condition, the background colour changes 
    and displays a play again button. If the play again button is pressed page 2/4 is called
    again, to continue another iteration of the game can be played. 
-->
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
        <title>
        High Low Game
    </title>
    <style>
        body 
        {
            background-color: darksalmon;
        }
        h1   
        {
            color: dodgerblue;
        }
    </style>
</head>
<body>
    <h1>Welcome to The High-Low Game</h1>
    <h3>Congratulations</h3>
    <form id="winForm" runat="server">
        <div>
            <p>You Win!! You guessed the number!! </p>
            <p><asp:Button ID="playAgain" runat="server" Text="Play Again?" OnClick="btnPlayAgain_Click" /></p>
        </div>
    </form>
</body>
</html>
