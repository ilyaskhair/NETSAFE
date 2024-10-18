using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NETSAFE
{
    public partial class Quiz1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnSubmit1_Click(object sender, EventArgs e)
        {
            if (rbtnC1.Checked) // Correct answer for Question 1
            {
                lblResult1.CssClass = "result-message correct";
                lblResult1.Text = "Bonne réponse !";
            }
            else
            {
                lblResult1.CssClass = "result-message incorrect";
                lblResult1.Text = "Mauvaise réponse. La bonne réponse est : Bloquer le compte de l'inconnu et le signaler à la plateforme.";
            }
        }

        protected void btnSubmit2_Click(object sender, EventArgs e)
        {
            if (rbtnB2.Checked) // Correct answer for Question 2
            {
                lblResult2.CssClass = "result-message correct";
                lblResult2.Text = "Bonne réponse !";
            }
            else
            {
                lblResult2.CssClass = "result-message incorrect";
                lblResult2.Text = "Mauvaise réponse. La bonne réponse est : Parce que cela pourrait être une arnaque ou mener à un vol d'identité.";
            }
        }

        protected void btnSubmit3_Click(object sender, EventArgs e)
        {
            if (rbtnB3.Checked) // Correct answer for Question 3
            {
                lblResult3.CssClass = "result-message correct";
                lblResult3.Text = "Bonne réponse !";
            }
            else
            {
                lblResult3.CssClass = "result-message incorrect";
                lblResult3.Text = "Mauvaise réponse. La bonne réponse est : Se méfier et vérifier la légitimité de l’offre.";
            }
        }
    }
}