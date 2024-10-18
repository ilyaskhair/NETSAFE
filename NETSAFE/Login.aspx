<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="NETSAFE.Login" %>

<!DOCTYPE html>
<html lang="fr">
<head runat="server">
    <meta charset="utf-8" />
    <title>NETSAFE - Connexion et Inscription</title>
    <link rel="stylesheet" type="text/css" href="LoginFiles/style.css" />
    <script>
        function showLogin() {
            document.getElementById("loginForm").style.display = "block";
            document.getElementById("registerForm").style.display = "none";
        }

        function showRegister() {
            document.getElementById("registerForm").style.display = "block";
            document.getElementById("loginForm").style.display = "none";
        }
    </script>
</head>
<body onload="showLogin()">
    <form id="form1" runat="server">
        <div class="container">
            <h1>NETSAFE</h1>
            <h2>Connexion et Inscription</h2>
            <div class="toggle-buttons">
                <button type="button" class="btn toggle-btn" onclick="showLogin()">Connexion</button>
                <button type="button" class="btn toggle-btn" onclick="showRegister()">Inscription</button>
            </div>

            <!-- Formulaire de connexion -->
            <div id="loginForm" class="form-section">
                <h3>Connexion</h3>
                <div class="form-group">
                    <label for="loginUsername">Email :</label>
                    <asp:TextBox ID="mailTb" runat="server" CssClass="form-control" Width="380px" />
                </div>
                <div class="form-group">
                    <label for="loginPassword">Mot de passe :</label>
                    <asp:TextBox ID="passTb" runat="server" TextMode="Password" CssClass="form-control" Width="380px" />
                </div>
                <div class="form-group">
                    <asp:Button ID="btnLogin" runat="server" Text="Se connecter" CssClass="btn btn-primary" OnClick="Button1_OnClick" />
                </div>
            </div>

            <!-- Formulaire d'inscription -->
            <div id="registerForm" class="form-section" style="display:none;">
                <h3>Inscription</h3>
                <div class="form-group">
                    <label for="registerUsername">Nom :</label>
                    <asp:TextBox ID="fnTb" runat="server" CssClass="form-control" Width="380px" />
                </div>
                <div class="form-group">
                    <label for="registerEmail">Prénom :</label>
                    <asp:TextBox ID="lnTb" runat="server" CssClass="form-control" Width="380px"/>
                </div>
                <div class="form-group">
                    <label for="registerPassword">Email :</label>
                    <asp:TextBox ID="mailRTb" runat="server" TextMode="Email" CssClass="form-control" Width="380px"/>
                </div>
                <div class="form-group">
                    <label for="confirmPassword">Mot de passe :</label>
                    <asp:TextBox ID="passRTb" runat="server" TextMode="Password" CssClass="form-control" Width="380px"/>
                </div>
                <div class="form-group">
                    <asp:Button ID="btnRegister" runat="server" Text="S'inscrire" CssClass="btn btn-primary" OnClick="Button2_OnClick" />
                </div>
            </div>
        </div>
    </form>
</body>
</html>