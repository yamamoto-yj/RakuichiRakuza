using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RakuichiRakuza
{
    public partial class EmployeeList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack == false)
            {
                GridView1.Columns[5].HeaderText = @"姓カナ";
                
                // 幅設定
                GridView1.Columns[5].HeaderStyle.Width = 200;

                // 表示位置
                GridView1.Columns[5].HeaderStyle.HorizontalAlign = HorizontalAlign.Center;
                GridView1.Columns[5].HeaderStyle.BackColor = Color.DarkGray;
                GridView1.Columns[5].HeaderStyle.ForeColor = Color.White;

                GridView1.Columns[5].ItemStyle.HorizontalAlign = HorizontalAlign.Right;
                GridView1.Columns[5].ItemStyle.BackColor = Color.Yellow;
                GridView1.Columns[5].ItemStyle.ForeColor = Color.Red;
                GridView1.Columns[5].ItemStyle.Font.Size = 10;


            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            string EmpId = (string)GridView1.SelectedDataKey.Value;
            Response.Redirect($"./EmmployeeDetail.aspx?EditMode=Update&EmpId={EmpId}");

        }

        protected void GridView1_DataBinding(object sender, EventArgs e)
        {

        }

        protected void GridView1_DataBound(object sender, EventArgs e)
        {
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                foreach (Control ctl in e.Row.Cells[1].Controls) // CommandField の列インデックスを確認
                {
                    if (ctl is Button btn && btn.CommandName == "Delete")
                    {
                        btn.OnClientClick = "if (!confirm('本当に削除しますか？')) return false;";
                    }
                }
            }
            if (e.Row.RowType == DataControlRowType.Header)
            {
            }
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {

        }
    }
}
