using _385WebExample;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StahrDar
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            api ws = new api();
            StringBuilder sb = new StringBuilder();

            ws.addParam("@state", txtVendors.Text);

            DataTable tbl = ws.sqlExecDataTable("spGetVendorsByState");
            foreach (DataRow row in tbl.Rows)
                sb.Append("<div class='alert alert-success'>" + row["VendorName"] + "</div>");
            lblVendors.Text = sb.ToString();
        }
    }
}