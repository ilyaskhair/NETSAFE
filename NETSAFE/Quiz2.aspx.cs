using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NETSAFE
{
    public partial class Quiz2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnSubmit1_Click(object sender, EventArgs e)
        {
            // Récupérer la réponse sélectionnée pour la Question 1
            string selectedAnswer = string.Empty;

            if (rbtnA1.Checked)
            {
                selectedAnswer = "A";
            }
            else if (rbtnB1.Checked)
            {
                selectedAnswer = "B";
            }
            else if (rbtnC1.Checked)
            {
                selectedAnswer = "C";
            }

            // Vérifier si la réponse est correcte
            if (selectedAnswer == "C")
            {
                lblResult1.CssClass = "result-message correct";
                lblResult1.Text = "Bonne réponse !";
            }
            else
            {
                lblResult1.CssClass = "result-message incorrect";
                lblResult1.Text = "Mauvaise réponse. La bonne réponse est : Signaler le message à la plateforme et soutenir son amie Zoé.";
            }
        }

        protected void btnSubmit2_Click(object sender, EventArgs e)
        {
            // Récupérer la réponse sélectionnée pour la Question 2
            string selectedAnswer = string.Empty;

            if (rbtnA2.Checked)
            {
                selectedAnswer = "A";
            }
            else if (rbtnB2.Checked)
            {
                selectedAnswer = "B";
            }
            else if (rbtnC2.Checked)
            {
                selectedAnswer = "C";
            }

            // Vérifier si la réponse est correcte
            if (selectedAnswer == "B")
            {
                lblResult2.CssClass = "result-message correct";
                lblResult2.Text = "Bonne réponse !";
            }
            else
            {
                lblResult2.CssClass = "result-message incorrect";
                lblResult2.Text = "Mauvaise réponse. La bonne réponse est : La réputation d’une personne peut être endommagée, et cela pourrait mener à du cyberharcèlement.";
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
                lblResult3.Text = "Mauvaise réponse. La bonne réponse est : Pour que la plateforme puisse les supprimer et protéger les utilisateurs.";
            }
        }
    }
}