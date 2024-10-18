using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NETSAFE
{
    public partial class Login : System.Web.UI.Page
    {
        NETSAFEEntities n = new NETSAFEEntities();

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void Button1_OnClick(object sender, EventArgs e)
        {
            n = new NETSAFEEntities();
            // Utilisation de .Text au lieu de .Value
            Utilisateur u = n.Utilisateurs
                .Where(p => p.email.ToLower().Equals(mailTb.Text.ToLower()) &&
                            p.mot_de_passe.Equals(passTb.Text))
                .FirstOrDefault();

            if (u != null)
            {
                // Stocker l'email dans la session
                Session["userEmail"] = u.email;

                // Redirection vers Acceuil.aspx
                Response.Redirect("Acceuil.aspx");
            }
            else
            {
                // Message d'erreur si les identifiants sont incorrects
                Response.Write("<script>alert('Identifiants incorrects. Veuillez réessayer.')</script>");
            }
        }

        protected void Button2_OnClick(object sender, EventArgs e)
        {
            // Vérifier si les champs sont vides
            if (string.IsNullOrWhiteSpace(lnTb.Text) ||
                string.IsNullOrWhiteSpace(fnTb.Text) ||
                string.IsNullOrWhiteSpace(mailRTb.Text) ||
                string.IsNullOrWhiteSpace(passRTb.Text))
            {
                Response.Write("<script>alert('Veuillez remplir tous les champs.')</script>");
                return; // Arrête l'exécution si un champ est vide
            }

            // Vérifier si l'email est déjà utilisé
            if (!n.Utilisateurs.Any(p => p.email.ToLower().Equals(mailRTb.Text.ToLower())))
            {
                Utilisateur u = new Utilisateur
                {
                    nom = lnTb.Text,   // Utilisation de .Text
                    prenom = fnTb.Text,
                    email = mailRTb.Text,
                    mot_de_passe = passRTb.Text
                };

                n.Utilisateurs.Add(u);
                n.SaveChanges();
                Response.Write("<script>alert('Merci pour votre inscription.')</script>");
            }
            else
            {
                Response.Write("<script>alert('Cet email est déjà utilisé.')</script>");
            }
        }

        bool CheckFields()
        {
            return !string.IsNullOrWhiteSpace(fnTb.Text) &&
                   !string.IsNullOrWhiteSpace(lnTb.Text) &&
                   !string.IsNullOrWhiteSpace(mailRTb.Text) &&
                   !string.IsNullOrWhiteSpace(passRTb.Text);
        }

        protected void CustomValidatorEven_ServerValidate(object source, ServerValidateEventArgs args)
        {
            args.IsValid = !string.IsNullOrWhiteSpace(args.Value);
        }
    }
}