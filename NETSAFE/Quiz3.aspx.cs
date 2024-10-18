using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NETSAFE
{
    public partial class Quiz3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnSubmit1_Click(object sender, EventArgs e)
        {
            // Récupérer les réponses sélectionnées pour la Question 1
            bool isASelected = rbtnA1.Checked;
            bool isCSelected = rbtnC1.Checked;

            // Vérifier si au moins une des réponses correctes est sélectionnée
            if (isASelected || isCSelected)
            {
                lblResult1.CssClass = "result-message correct";
                lblResult1.Text = "Bonne réponse !";
            }
            else
            {
                lblResult1.CssClass = "result-message incorrect";
                lblResult1.Text = "Mauvaise réponse. Les bonnes réponses sont : Fixer une limite de temps pour l’utilisation des réseaux sociaux chaque jour et Désactiver toutes les notifications.";
            }
        }

        protected void btnSubmit2_Click(object sender, EventArgs e)
        {
            // Récupérer les réponses sélectionnées pour la Question 2
            bool isASelected = rbtnA2.Checked;
            bool isBSelected = rbtnB2.Checked;

            // Vérifier si au moins une des réponses correctes est sélectionnée
            if (isASelected || isBSelected)
            {
                lblResult2.CssClass = "result-message correct";
                lblResult2.Text = "Bonne réponse !";
            }
            else
            {
                lblResult2.CssClass = "result-message incorrect";
                lblResult2.Text = "Mauvaise réponse. Les bonnes réponses sont : Passer de plus en plus de temps sur les réseaux sans s’en rendre compte et Être déconnecté de ce qui se passe autour de vous.";
            }
        }

        protected void btnSubmit3_Click(object sender, EventArgs e)
        {
            // Récupérer la réponse sélectionnée pour la Question 3
            string selectedAnswer = string.Empty;

            if (rbtnA3.Checked)
            {
                selectedAnswer = "A";
            }
            else if (rbtnB3.Checked)
            {
                selectedAnswer = "B";
            }
            else if (rbtnC3.Checked)
            {
                selectedAnswer = "C";
            }

            // Vérifier si la réponse est correcte
            if (selectedAnswer == "A")
            {
                lblResult3.CssClass = "result-message correct";
                lblResult3.Text = "Bonne réponse !";
            }
            else
            {
                lblResult3.CssClass = "result-message incorrect";
                lblResult3.Text = "Mauvaise réponse. La bonne réponse est : Installer une application qui surveille le temps d'écran et envoie des alertes.";
            }
        }
    }
}