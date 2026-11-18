using System;
using System.Web.UI;

namespace AgroMarket.View
{
    public partial class Registro : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnRegistro_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/View/Default");
        }
    }
}
