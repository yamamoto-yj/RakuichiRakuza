<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EmployeeList.aspx.cs" Inherits="RakuichiRakuza.EmployeeList" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="EmpId" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" OnDataBinding="GridView1_DataBinding" OnDataBound="GridView1_DataBound" OnRowCommand="GridView1_RowCommand" OnRowDataBound="GridView1_RowDataBound" OnRowDeleting="GridView1_RowDeleting">
            <Columns>
                <asp:CommandField SelectText="編集" ShowSelectButton="True" />
                <asp:CommandField  ShowDeleteButton="True" ButtonType="Button" runat="server" />
                <asp:BoundField DataField="EmpId" HeaderText="ID" ReadOnly="True" SortExpression="EmpId" />
                <asp:BoundField DataField="Sei" HeaderText="姓" SortExpression="Sei" />
                <asp:BoundField DataField="Mei" HeaderText="名" SortExpression="Mei" />
                <asp:BoundField DataField="SeiKana" HeaderText="SeiKana" SortExpression="SeiKana" />
                <asp:BoundField DataField="MeiKana" HeaderText="MeiKana" SortExpression="MeiKana" />
                <asp:BoundField DataField="Birthday" HeaderText="Birthday" SortExpression="Birthday" />
                <asp:BoundField DataField="Prefecture" HeaderText="Prefecture" SortExpression="Prefecture" />
                <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                <asp:BoundField DataField="Salary" HeaderText="Salary" SortExpression="Salary" />
                <asp:BoundField DataField="HireDate" HeaderText="HireDate" SortExpression="HireDate" />
                <asp:BoundField DataField="RetirementDate" HeaderText="RetirementDate" SortExpression="RetirementDate" />
                <asp:BoundField DataField="DeptId" HeaderText="DeptId" SortExpression="DeptId" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:Kensyu2025ConnectionString %>" DeleteCommand="DELETE FROM [Employee] WHERE [EmpId] = @original_EmpId AND [Sei] = @original_Sei AND [Mei] = @original_Mei AND [SeiKana] = @original_SeiKana AND [MeiKana] = @original_MeiKana AND (([Birthday] = @original_Birthday) OR ([Birthday] IS NULL AND @original_Birthday IS NULL)) AND (([Prefecture] = @original_Prefecture) OR ([Prefecture] IS NULL AND @original_Prefecture IS NULL)) AND (([Address] = @original_Address) OR ([Address] IS NULL AND @original_Address IS NULL)) AND (([Salary] = @original_Salary) OR ([Salary] IS NULL AND @original_Salary IS NULL)) AND (([HireDate] = @original_HireDate) OR ([HireDate] IS NULL AND @original_HireDate IS NULL)) AND (([RetirementDate] = @original_RetirementDate) OR ([RetirementDate] IS NULL AND @original_RetirementDate IS NULL)) AND (([DeptId] = @original_DeptId) OR ([DeptId] IS NULL AND @original_DeptId IS NULL))" InsertCommand="INSERT INTO [Employee] ([EmpId], [Sei], [Mei], [SeiKana], [MeiKana], [Birthday], [Prefecture], [Address], [Salary], [HireDate], [RetirementDate], [DeptId]) VALUES (@EmpId, @Sei, @Mei, @SeiKana, @MeiKana, @Birthday, @Prefecture, @Address, @Salary, @HireDate, @RetirementDate, @DeptId)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:Kensyu2025ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [Employee]" UpdateCommand="UPDATE [Employee] SET [Sei] = @Sei, [Mei] = @Mei, [SeiKana] = @SeiKana, [MeiKana] = @MeiKana, [Birthday] = @Birthday, [Prefecture] = @Prefecture, [Address] = @Address, [Salary] = @Salary, [HireDate] = @HireDate, [RetirementDate] = @RetirementDate, [DeptId] = @DeptId WHERE [EmpId] = @original_EmpId AND [Sei] = @original_Sei AND [Mei] = @original_Mei AND [SeiKana] = @original_SeiKana AND [MeiKana] = @original_MeiKana AND (([Birthday] = @original_Birthday) OR ([Birthday] IS NULL AND @original_Birthday IS NULL)) AND (([Prefecture] = @original_Prefecture) OR ([Prefecture] IS NULL AND @original_Prefecture IS NULL)) AND (([Address] = @original_Address) OR ([Address] IS NULL AND @original_Address IS NULL)) AND (([Salary] = @original_Salary) OR ([Salary] IS NULL AND @original_Salary IS NULL)) AND (([HireDate] = @original_HireDate) OR ([HireDate] IS NULL AND @original_HireDate IS NULL)) AND (([RetirementDate] = @original_RetirementDate) OR ([RetirementDate] IS NULL AND @original_RetirementDate IS NULL)) AND (([DeptId] = @original_DeptId) OR ([DeptId] IS NULL AND @original_DeptId IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_EmpId" Type="String" />
                <asp:Parameter Name="original_Sei" Type="String" />
                <asp:Parameter Name="original_Mei" Type="String" />
                <asp:Parameter Name="original_SeiKana" Type="String" />
                <asp:Parameter Name="original_MeiKana" Type="String" />
                <asp:Parameter DbType="Date" Name="original_Birthday" />
                <asp:Parameter Name="original_Prefecture" Type="String" />
                <asp:Parameter Name="original_Address" Type="String" />
                <asp:Parameter Name="original_Salary" Type="Decimal" />
                <asp:Parameter DbType="Date" Name="original_HireDate" />
                <asp:Parameter DbType="Date" Name="original_RetirementDate" />
                <asp:Parameter Name="original_DeptId" Type="Int32" />
            </DeleteParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
