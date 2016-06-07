using System;
using System.Reflection.Emit;

namespace TwoParameters
{
    public partial class UdemyLesson15 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            EmpDataTable.SelectParameters["Name"].DefaultValue = tb_Name.Text;
            EmpDataTable.SelectParameters["Salary"].DefaultValue = tb_Salary.Text;
        }
    }
}