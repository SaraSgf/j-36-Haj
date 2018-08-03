using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HAKATHON
{
    public partial class MainPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Hajj.aspx");
        }
        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("Omra.aspx");
        }
    }
}