using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NETSAFE
{
    public partial class MainMenu : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Vérifiez que la session contient l'email
            if (Session["userEmail"] != null)
            {
                // Récupérer l'email de la session
                var email = Session["userEmail"].ToString();

                // Créer une instance du contexte Entity Framework
                using (NETSAFEEntities context = new NETSAFEEntities())
                {
                    // Rechercher l'utilisateur par email
                    var utilisateur = context.Utilisateurs
                                              .Where(u => u.email == email)
                                              .FirstOrDefault();

                    // Si un utilisateur est trouvé, récupérer le prénom et le nom
                    if (utilisateur != null)
                    {
                        fName.Text = utilisateur.prenom;  // Assigner le prénom à fName (par exemple un Label ou TextBox)
                        lName.Text = utilisateur.nom;     // Assigner le nom à lName (par exemple un Label ou TextBox)
                    }
                    else
                    {
                        fName.Text = "Prénom non trouvé";  // Si l'utilisateur n'est pas trouvé
                        lName.Text = "Nom non trouvé";
                    }
                }
            }
            else
            {
                // Gérer le cas où l'utilisateur n'est pas connecté (email absent de la session)
                fName.Text = "Utilisateur non connecté";
                lName.Text = "Utilisateur non connecté";
            }

        }
        protected void Logout_OnClick(object sender, EventArgs e)
        {
            Session.Abandon();
            Session["New"] = null;
            Response.Redirect("Login.aspx");

        }
    }
}