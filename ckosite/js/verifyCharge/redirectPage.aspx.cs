using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class alternativePayment_redirectPage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack)
        { 
            Page.Title = Request.Form.AllKeys.Contains("cko-lp-redirectUrl")?"Local Payment":"3D Verification";
        }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string redirectURL = string.Empty;
        if (Request.Form.AllKeys.Contains("cko-lp-redirectUrl") && !string.IsNullOrEmpty(Request.Form["cko-lp-redirectUrl"])) { redirectURL = Request.Form["cko-lp-redirectUrl"]; }
        if (Request.Form.AllKeys.Contains("cko-3d-redirectUrl") && !string.IsNullOrEmpty(Request.Form["cko-3d-redirectUrl"])) { redirectURL = Request.Form["cko-3d-redirectUrl"]; }

        Response.Redirect(redirectURL);
    }
}