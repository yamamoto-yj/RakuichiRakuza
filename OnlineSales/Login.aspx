<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="RakuichiRakuza.OnlineSales.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>楽市楽座</title>
    <link href="../Css/login.css" rel="stylesheet" />
</head>
<body>
    <div class="login-container">
    <h1>ログイン</h1>

    <form id="form1" runat="server">
        <div class="form-group">
            <asp:Label ID="lblUser" runat="server" Text="アカウント"></asp:Label>
            <asp:TextBox ID="txtAcnt" runat="server"></asp:TextBox>
        </div>
        <div class="form-group">
            <asp:Label ID="lblPswd" runat="server" Text="パスワード"></asp:Label>
            <asp:TextBox ID="txtPswd" runat="server" type="password"></asp:TextBox>
        </div>
        <asp:Button ID="btnLogin" runat="server" Text="ログイン" class="login-button" OnClick="btnLogin_Click" />
    </form>
    </div>
</body>
</html>
