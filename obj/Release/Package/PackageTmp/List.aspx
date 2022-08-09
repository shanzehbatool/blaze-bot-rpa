<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="List.aspx.cs" Inherits="BlazeRPA.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table style="width:800px ; margin:auto; background-color:aqua">
                <tr>
                    <td>
                        <asp:GridView ID="GridView1" runat="server" Width="100%"></asp:GridView>
                    </td>
                </tr>
            </table>
            
        </div>
    </form>
</body>
</html>
