using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using _385WebExample;
using System.Text;
using System.Data;

namespace StahrDar
{
    public partial class UpdateClasses : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // lblUser.Text = User.Identity.Name.Split('@')[0];
            lblUser.Text = User.Identity.Name;
            string login = lblUser.Text.ToString();
            if (!String.IsNullOrWhiteSpace(login))
            {
                int charLocation = login.IndexOf('@');
                if (charLocation > 0)
                {
                    login = login.Substring(0, charLocation);
                }
            }
            lblUser.Text = login;
        }
    }
}
