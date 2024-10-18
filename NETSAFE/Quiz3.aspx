<%@ Page Title="" Language="C#" MasterPageFile="~/MainMenu.Master" AutoEventWireup="true" CodeBehind="Quiz3.aspx.cs" Inherits="NETSAFE.Quiz3" %>
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
                <source src="video/sc3.mp4" type="video/mp4" />
                Votre navigateur ne supporte pas la lecture des vidéos.
            </video>
        </div>

        <!-- Question 1 -->
        <div class="question">
            Lila passe des heures à scroller sur les réseaux sociaux et commence à se sentir triste et épuisée. Que devrait-elle faire ?
        </div>
        <div class="radio-group">
            <div class="radio-item">
                <asp:RadioButton ID="rbtnA1" runat="server" GroupName="answers1" Text="Fixer une limite de temps pour l’utilisation des réseaux sociaux chaque jour." />
            </div>
            <div class="radio-item">
                <asp:RadioButton ID="rbtnB1" runat="server" GroupName="answers1" Text="Continuer à scroller jusqu’à ce qu’elle se sente mieux." />
            </div>
            <div class="radio-item">
                <asp:RadioButton ID="rbtnC1" runat="server" GroupName="answers1" Text="Désactiver toutes les notifications pour ne plus être tentée de revenir sans cesse." />
            </div>
        </div>
        <!-- Bouton de validation pour la Question 1 -->
        <asp:Button ID="btnSubmit1" runat="server" CssClass="submit-button" Text="Valider Question 1" OnClick="btnSubmit1_Click" />
        <asp:Label ID="lblResult1" runat="server" CssClass="result-message"></asp:Label>

        <!-- Question 2 -->
        <div class="question">
            Quels sont les signes d’une addiction aux réseaux sociaux ?
        </div>
        <div class="radio-group">
            <div class="radio-item">
                <asp:RadioButton ID="rbtnA2" runat="server" GroupName="answers2" Text="Passer de plus en plus de temps sur les réseaux sans s’en rendre compte." />
            </div>
            <div class="radio-item">
                <asp:RadioButton ID="rbtnB2" runat="server" GroupName="answers2" Text="Être déconnecté de ce qui se passe autour de vous." />
            </div>
            <div class="radio-item">
                <asp:RadioButton ID="rbtnC2" runat="server" GroupName="answers2" Text="Se sentir bien après chaque longue session sur les réseaux." />
            </div>
        </div>
        <!-- Bouton de validation pour la Question 2 -->
        <asp:Button ID="btnSubmit2" runat="server" CssClass="submit-button" Text="Valider Question 2" OnClick="btnSubmit2_Click" />
        <asp:Label ID="lblResult2" runat="server" CssClass="result-message"></asp:Label>

        <!-- Question 3 -->
        <div class="question">
            Que peut faire Lila pour mieux contrôler le temps qu’elle passe sur les réseaux sociaux ?
        </div>
        <div class="radio-group">
            <div class="radio-item">
                <asp:RadioButton ID="rbtnA3" runat="server" GroupName="answers3" Text="Installer une application qui surveille le temps d'écran et envoie des alertes." />
            </div>
            <div class="radio-item">
                <asp:RadioButton ID="rbtnB3" runat="server" GroupName="answers3" Text="Désactiver son compte pendant plusieurs mois." />
            </div>
            <div class="radio-item">
                <asp:RadioButton ID="rbtnC3" runat="server" GroupName="answers3" Text="Ne rien faire, elle finira par se lasser des réseaux sociaux naturellement." />
            </div>
        </div>
        <!-- Bouton de validation pour la Question 3 -->
        <asp:Button ID="btnSubmit3" runat="server" CssClass="submit-button" Text="Valider Question 3" OnClick="btnSubmit3_Click" />
        <asp:Label ID="lblResult3" runat="server" CssClass="result-message"></asp:Label>
    </div>
</asp:Content>

