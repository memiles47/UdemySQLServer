<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UdemyLesson15.aspx.cs" Inherits="TwoParameters.UdemyLesson15" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" DataSourceID="EmpDataTable" GridLines="None">
            <Columns>
                <asp:BoundField DataField="Salary" HeaderText="Salary" SortExpression="Salary" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
            </Columns>
            <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
            <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
            <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
            <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#594B9C" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#33276A" />
        </asp:GridView>
        <asp:SqlDataSource ID="EmpDataTable" runat="server" ConnectionString="<%$ ConnectionStrings:myDBaseConnectionString %>
            " SelectCommand="SELECT [Salary], [Name] FROM [Employees2] WHERE (([Name] = @Name) AND ([Salary] = @Salary)) ORDER BY [Salary] DESC">
            <SelectParameters>
                <asp:Parameter DefaultValue="Mary" Name="Name" Type="String" />
                <asp:Parameter DefaultValue="120000" Name="Salary" Type="Decimal" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        Enter Name:
        <asp:TextBox ID="tb_Name" runat="server"></asp:TextBox>
        <br />
        <hr/>
        Enter Salary:
        <asp:TextBox ID="tb_Salary" runat="server"></asp:TextBox>
    <hr/>
        <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
    </div>
    </form>
</body>
</html>
