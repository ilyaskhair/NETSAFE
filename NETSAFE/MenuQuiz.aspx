<%@ Page Title="" Language="C#" MasterPageFile="~/MainMenu.Master" AutoEventWireup="true" CodeBehind="MenuQuiz.aspx.cs" Inherits="NETSAFE.MenuQuiz" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
            margin: 0; /* Supprime la marge par défaut */
            height: 100vh; /* Hauteur de la fenêtre */
            display: flex; /* Utilise Flexbox */
            justify-content: center; /* Centre horizontalement */
            align-items: center; /* Centre verticalement */
            flex-direction: column; /* Permet d'ajouter des éléments au-dessus */
        }

        .quiz-container {
            display: flex;
            justify-content: center;
            flex-wrap: wrap; /* Permet aux blocs de s'ajuster */
            gap: 20px; /* Espace entre les blocs */
            max-width: 80%; /* Limite la largeur du conteneur */
            margin-top: 300px; /* Augmente le décalage vers le bas */
        }

        .quiz-block {
            width: 300px; /* Largeur du bloc agrandie */
            height: 400px; /* Hauteur du bloc agrandie */
            border-radius: 10px; /* Coins arrondis */
            overflow: hidden; /* Cache les débordements */
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2); /* Ombre */
            cursor: pointer;
            transition: transform 0.2s;
        }

        .quiz-block:hover {
            transform: scale(1.05); /* Effet de zoom au survol */
        }

        .quiz-image {
            width: 100%; /* Prend toute la largeur du bloc */
            height: 100%; /* Remplit toute la hauteur du bloc */
            object-fit: cover; /* Garde le ratio de l'image et remplit le bloc */
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="quiz-container">
        <div class="quiz-block" onclick="window.location='Quiz1.aspx';">
            <img src="images/1.png" alt="Quiz 1" class="quiz-image" />
        </div>
        <div class="quiz-block" onclick="window.location='Quiz2.aspx';">
            <img src="images/2.png" alt="Quiz 2" class="quiz-image" />
        </div>
        <div class="quiz-block" onclick="window.location='Quiz3.aspx';">
            <img src="images/3.png" alt="Quiz 3" class="quiz-image" />
        </div>
        <div class="quiz-block" onclick="window.location='Quiz4.aspx';">
            <img src="images/4.png" alt="Quiz 4" class="quiz-image" />
        </div>
    </div>
</asp:Content>
