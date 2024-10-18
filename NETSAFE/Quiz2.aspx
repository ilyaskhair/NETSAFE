<%@ Page Title="" Language="C#" MasterPageFile="~/MainMenu.Master" AutoEventWireup="true" CodeBehind="Quiz2.aspx.cs" Inherits="NETSAFE.Quiz2" %>
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
        #btnSubmit {
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
        #btnSubmit:hover {
            background-color: #004494; /* Couleur plus foncée au survol */
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="quiz-container">
        <!-- Vidéo -->
        <div class="video-container">
            <video width="600" controls>
                <source src="video/sc2.mp4" type="video/mp4" />
                Votre navigateur ne supporte pas la lecture des vidéos.
            </video>
        </div>

        <!-- Question 1 -->
        <div class="question">
            Lila voit un message insultant à propos de son amie Zoé dans un groupe de discussion. Que devrait-elle faire ?
        </div>
        <div class="radio-group">
            <div class="radio-item">
                <asp:RadioButton ID="rbtnA1" runat="server" GroupName="answers1" Text="Ignorer le message et ne pas réagir." />
            </div>
            <div class="radio-item">
                <asp:RadioButton ID="rbtnB1" runat="server" GroupName="answers1" Text="Réagir en partageant l’information avec d’autres amis pour en discuter." />
            </div>
            <div class="radio-item">
                <asp:RadioButton ID="rbtnC1" runat="server" GroupName="answers1" Text="Signaler le message à la plateforme et soutenir son amie Zoé." />
            </div>
        </div>
        <!-- Bouton de validation pour la Question 1 -->
        <asp:Button ID="btnSubmit1" runat="server" Text="Valider Question 1" OnClick="btnSubmit1_Click" />
        <asp:Label ID="lblResult1" runat="server" CssClass="result-message"></asp:Label>

        <!-- Question 2 -->
        <div class="question">
            Que peut-il se passer si une fausse information est partagée sans être vérifiée ?
        </div>
        <div class="radio-group">
            <div class="radio-item">
                <asp:RadioButton ID="rbtnA2" runat="server" GroupName="answers2" Text="Rien, car tout le monde sait que ce n’est pas vrai." />
            </div>
            <div class="radio-item">
                <asp:RadioButton ID="rbtnB2" runat="server" GroupName="answers2" Text="La réputation d’une personne peut être endommagée, et cela pourrait mener à du cyberharcèlement." />
            </div>
            <div class="radio-item">
                <asp:RadioButton ID="rbtnC2" runat="server" GroupName="answers2" Text="L’information sera rapidement supprimée par le réseau social." />
            </div>
        </div>
        <!-- Bouton de validation pour la Question 2 -->
        <asp:Button ID="btnSubmit2" runat="server" Text="Valider Question 2" OnClick="btnSubmit2_Click" />
        <asp:Label ID="lblResult2" runat="server" CssClass="result-message"></asp:Label>

        <!-- Question 3 -->
        <div class="question">
            Pourquoi est-il important de signaler les contenus inappropriés ou diffamatoires sur les réseaux sociaux ?
        </div>
        <div class="radio-group">
            <div class="radio-item">
                <asp:RadioButton ID="rbtnA3" runat="server" GroupName="answers3" Text="Pour que la plateforme puisse les supprimer et protéger les utilisateurs." />
            </div>
            <div class="radio-item">
                <asp:RadioButton ID="rbtnB3" runat="server" GroupName="answers3" Text="Pour faire savoir à tout le monde que vous avez vu le message." />
            </div>
            <div class="radio-item">
                <asp:RadioButton ID="rbtnC3" runat="server" GroupName="answers3" Text="Pour éviter que le contenu soit vu par plus de personnes." />
            </div>
        </div>
        <!-- Bouton de validation pour la Question 3 -->
        <asp:Button ID="btnSubmit3" runat="server" Text="Valider Question 3" OnClick="btnSubmit3_Click" />
        <asp:Label ID="lblResult3" runat="server" CssClass="result-message"></asp:Label>
    </div>
</asp:Content>
