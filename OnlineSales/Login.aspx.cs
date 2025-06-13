using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RakuichiRakuza.OnlineSales
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // 初期化処理を行う
            if (!IsPostBack) {
                txtAcnt.Text = string.Empty;
                txtPswd.Text = string.Empty;
            }
            else {
                // ローカルの内容でマージした
            }
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
        }
    }
}
