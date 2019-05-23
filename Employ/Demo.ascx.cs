using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Employ
{
    public partial class Demo : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Link_GoogleLink_Click(object sender, EventArgs e)
        {
            Response.Redirect("https://www.google.com");
        }

        protected void linkyahoo_Click(object sender, EventArgs e)
        {
            Response.Redirect("https://www.yahoo.com");
        }

        protected void lnkTwitter_Click(object sender, EventArgs e)
        {
            Response.Redirect("https://www.twitter.com");
        }
    }
}