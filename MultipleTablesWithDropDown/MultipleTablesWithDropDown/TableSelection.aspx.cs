using System;
using System.Web.UI;
using System.Data;

namespace MultipleTablesWithDropDown
{
    public partial class TableSelection : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            switch (DropDownList1.SelectedValue)
            {
                case "Inner":
                {
                    DataView myData = (DataView) SqlDataSource3.Select(DataSourceSelectArguments.Empty);
                    GridView3.DataSource = myData;
                    GridView3.AutoGenerateColumns = true;
                    GridView3.DataBind();
                }
                    break;
                case "Left Outer":
                {
                    DataView myData = (DataView)SqlDataSource4.Select(DataSourceSelectArguments.Empty);
                    GridView3.DataSource = myData;
                    GridView3.AutoGenerateColumns = true;
                    GridView3.DataBind();
                }
                    break;
                case "Right Outer":
                {
                    DataView myData = (DataView)SqlDataSource5.Select(DataSourceSelectArguments.Empty);
                    GridView3.DataSource = myData;
                    GridView3.AutoGenerateColumns = true;
                    GridView3.DataBind();
                }
                    break;
                case "Full Outer":
                {
                    DataView myData = (DataView)SqlDataSource6.Select(DataSourceSelectArguments.Empty);
                    GridView3.DataSource = myData;
                    GridView3.AutoGenerateColumns = true;
                    GridView3.DataBind();
                }
                    break;
            }
        }
    }
}