<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="GetSetClientText._Default" %>

<%@ Register Assembly="DevExpress.Web.v13.1, Version=13.1.14.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web" TagPrefix="dx" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>How to get or set text of an ASPxEditor control on the client side</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table><tr>
        <td>
            <dx:ASPxLabel ID="ASPxLabel1" runat="server" Text="Your name:">
            </dx:ASPxLabel></td>
        <td>
            <dx:ASPxTextBox ID="txtYourName" runat="server" Width="170px">
                <ClientSideEvents KeyUp="function(s, e) {
  var txt = s.GetText();
  if(txt == '')
    lblGreeting.SetText('');
  else
	lblGreeting.SetText('Hello ' + txt);
}" />
            </dx:ASPxTextBox>
        </td></tr>
        <tr><td colspan="2">
            <dx:ASPxLabel ID="lblGreeting" runat="server" Text="" ClientInstanceName="lblGreeting">
            </dx:ASPxLabel>
        </td></tr>
        </table>
    </div>
    </form>
</body>
</html>
