<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HelloWorld.aspx.cs" Inherits="WEBForm_testando.HelloWorld" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <header><h1>Lista Salários</h1></header>
        <main>
            <div>
                <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Height="187px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="278px">
                    <Columns>
                        <asp:BoundField DataField="NOME" HeaderText="NOME" SortExpression="NOME" />
                        <asp:BoundField DataField="SALARIO" HeaderText="SALARIO" SortExpression="SALARIO" />
                    </Columns>
                 </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT NOME, SALARIO FROM PESSOA_SALARIO"></asp:SqlDataSource>
                </div>
        </main>
        <footer>

        </footer>
        
    </form>
</body>
</html>
