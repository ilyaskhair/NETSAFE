<%@ Page Title="" Language="C#" MasterPageFile="~/MainMenu.Master" AutoEventWireup="true" CodeBehind="Quiz4.aspx.cs" Inherits="NETSAFE.Quiz4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        /* Style pour la page de quiz */
        .quiz-container {
            margin-top: 20px;
            color: white; /* Couleur par défaut du texte */
            max-width: 1500px; /* Augmenter la largeur maximale du conteneur */
            padding: 30px; /* Augmenter le padding */
            background-color: #003366; /* Fond bleu */
            border-radius: 10px; /* Coins arrondis */
            font-size: 20px; /* Augmenter la taille de la police de tout le texte */
        }
        .video-container {
            margin-bottom: 20px;
            text-align: center; /* Centrer la vidéo */
        }
        .question {
            font-weight: bold;
            margin-bottom: 20px;
            color: yellow; /* Changer la couleur des questions en jaune */
            font-size: 24px; /* Augmenter la taille de la police pour la question */
        }
        .radio-group {
            display: flex;
            flex-direction: column;
        }
        .radio-item {
            display: flex;
            align-items: center;
            margin-bottom: 15px; /* Espacement entre les options */
            color: white; /* Couleur des options */
        }
        .radio-item input[type="radio"] {
            margin-right: 10px;
        }
        .result-message {
            margin-top: 30px; /* Espacement au-dessus du message de résultat */
            padding: 10px;
            font-weight: bold;
            color: white;
            font-size: 22px; /* Augmenter la taille du texte du message */
        }
        .correct {
            color: lightgreen;
        }
        .incorrect {
            color: red;
        }
        .submit-button {
            font-size: 20px; /* Taille de la police du bouton */
            padding: 15px 30px; /* Padding pour agrandir le bouton */
            color: black; /* Couleur du texte en noir */
            background-color: #0056b3; /* Couleur de fond contrastante */
            border: none; /* Supprimer la bordure par défaut */
            border-radius: 5px; /* Arrondir les coins */
            cursor: pointer; /* Changer le curseur en pointeur */
            transition: background-color 0.3s; /* Transition pour l'effet de survol */
        }
        /* Effet au survol du bouton */
        .submit-button:hover {
            background-color: #004494; /* Couleur plus foncée au survol */
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="quiz-container">
        <!-- Vidéo -->
        <div class="video-container">
            <video width="600" controls>
                <source src="video/sc4.mp4" type="video/mp4" />
                Votre navigateur ne supporte pas la lecture des vidéos.
            </video>
        </div>

        <!-- Question 1 -->
        <div class="question">
            Lila reçoit un lien suspect d’un ami qui lui parle d’une opportunité d’emploi trop belle pour être vraie. Que devrait-elle faire ?
        </div>
        <div class="radio-group">
            <div class="radio-item">
                <asp:RadioButton ID="rbtnA1" runat="server" GroupName="answers1" Text="Ouvrir le lien pour vérifier l’offre immédiatement." />
            </div>
            <div class="radio-item">
                <asp:RadioButton ID="rbtnB1" runat="server" GroupName="answers1" Text="Ignorer le message et ne rien faire." />
            </div>
            <div class="radio-item">
                <asp:RadioButton ID="rbtnC1" runat="server" GroupName="answers1" Text="Vérifier la légitimité de l’offre sur Internet avant de cliquer." />
            </div>
        </div>
        <!-- Bouton de validation pour la Question 1 -->
        <asp:Button ID="btnSubmit1" runat="server" CssClass="submit-button" Text="Valider Question 1" OnClick="btnSubmit1_Click" />
        <asp:Label ID="lblResult1" runat="server" CssClass="result-message"></asp:Label>

        <!-- Question 2 -->
        <div class="question">
            Quels sont les dangers potentiels associés à un lien suspect sur les réseaux sociaux ?
        </div>
        <div class="radio-group">
            <div class="radio-item">
                <asp:RadioButton ID="rbtnA2" runat="server" GroupName="answers2" Text="Le lien peut conduire à un site de phishing qui vole vos informations personnelles." />
            </div>
            <div class="radio-item">
                <asp:RadioButton ID="rbtnB2" runat="server" GroupName="answers2" Text="Le lien pourrait contenir un virus qui infecte votre appareil." />
            </div>
            <div class="radio-item">
                <asp:RadioButton ID="rbtnC2" runat="server" GroupName="answers2" Text="Le lien est inoffensif, il s’agit juste d’un spam." />
            </div>
        </div>
        <!-- Bouton de validation pour la Question 2 -->
        <asp:Button ID="btnSubmit2" runat="server" CssClass="submit-button" Text="Valider Question 2" OnClick="btnSubmit2_Click" />
        <asp:Label ID="lblResult2" runat="server" CssClass="result-message"></asp:Label>

        <!-- Question 3 -->
        <div class="question">
            Comment pouvez-vous vérifier si une opportunité en ligne est légitime avant de cliquer sur un lien ?
        </div>
        <div class="radio-group">
            <div class="radio-item">
                <asp:RadioButton ID="rbtnA3" runat="server" GroupName="answers3" Text="Rechercher des avis ou des informations sur cette opportunité sur des sites fiables." />
            </div>
            <div class="radio-item">
                <asp:RadioButton ID="rbtnB3" runat="server" GroupName="answers3" Text="Partager le lien avec des amis pour savoir ce qu’ils en pensent." />
            </div>
            <div class="radio-item">
                <asp:RadioButton ID="rbtnC3" runat="server" GroupName="answers3" Text="Tester le lien pour voir s’il fonctionne." />
            </div>
        </div>
        <!-- Bouton de validation pour la Question 3 -->
        <asp:Button ID="btnSubmit3" runat="server" CssClass="submit-button" Text="Valider Question 3" OnClick="btnSubmit3_Click" />
        <asp:Label ID="lblResult3" runat="server" CssClass="result-message"></asp:Label>
    </div>
</asp:Content>
