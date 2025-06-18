using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RakuichiRakuza
{
    public partial class EmmployeeDetail : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack == false)
            {
                string EmpId = Request.QueryString["EmpId"];
                if (EmpId != null)
                {
                    Response.Write($"EmpId: {EmpId}");

                }

            }
        }
    }
}