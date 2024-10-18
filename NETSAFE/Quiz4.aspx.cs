using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NETSAFE
{
    public partial class Quiz4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnSubmit1_Click(object sender, EventArgs e)
        {
            // Récupérer la réponse sélectionnée pour la Question 1
            if (rbtnC1.Checked)
            {
                lblResult1.CssClass = "result-message correct";
                lblResult1.Text = "Bonne réponse !";
            }
            else
            {
                lblResult1.CssClass = "result-message incorrect";
                lblResult1.Text = "Mauvaise réponse. La bonne réponse est : Vérifier la légitimité de l’offre sur Internet avant de cliquer.";
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
                lblResult2.Text = "Mauvaise réponse. Les bonnes réponses sont : Le lien peut conduire à un site de phishing qui vole vos informations personnelles et Le lien pourrait contenir un virus qui infecte votre appareil.";
            }
        }

        protected void btnSubmit3_Click(object sender, EventArgs e)
        {
            // Récupérer la réponse sélectionnée pour la Question 3
            if (rbtnA3.Checked)
            {
                lblResult3.CssClass = "result-message correct";
                lblResult3.Text = "Bonne réponse !";
            }
            else
            {
                lblResult3.CssClass = "result-message incorrect";
                lblResult3.Text = "Mauvaise réponse. La bonne réponse est : Rechercher des avis ou des informations sur cette opportunité sur des sites fiables.";
            }
        }
    }
}