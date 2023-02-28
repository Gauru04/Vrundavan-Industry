<%@ Page Title="" Language="C#" MasterPageFile="~/User/MasterPage1.master" AutoEventWireup="true" CodeFile="recipt.aspx.cs" Inherits="User_recipt" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style3 {
            height: 48px;
        }
        .auto-style5 {
            height: 11px;
        }
        .auto-style6 {
            height: 9px;
        }
        .auto-style7 {
            height: 3px;
        }
        .auto-style12 {
            height: 31px;
            }
        .auto-style13 {
            height: 31px;
        }
        .auto-style15 {
            height: 17px;
            width: 245px;
        }
        .auto-style16 {
            height: 17px;
        }
        .auto-style17 {
            height: 32px;
        }
        .auto-style18 {
            height: 34px;
            width: 245px;
        }
        .auto-style19 {
            height: 34px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="rec1">

        <div class="rec2">

            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Image ID="Image11" runat="server" Height="47px" ImageUrl="~/Images/20220204_122143.png" Width="191px" />
            <br />
&nbsp;<br />
            <table class="auto-style1">
                <tr>
                    <td class="auto-style7" colspan="2">
                        &nbsp;v<asp:Label ID="Label20" runat="server" ForeColor="Black" Text="_____________________________________________________"></asp:Label>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style17" colspan="2">
                        &nbsp;&nbsp;
                        <asp:Label ID="Label21" runat="server" ForeColor="Black" Text="_____________________________________________________"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style18">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label10" runat="server" ForeColor="Black" Text="Customer Name  :" Font-Names="Arial Unicode MS"></asp:Label>
                    </td>
                    <td class="auto-style19">
                        <asp:Label ID="lbl1" runat="server" ForeColor="Black" Font-Names="Arial Unicode MS"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style17" colspan="2">
                        &nbsp;&nbsp;
                        <asp:Label ID="Label16" runat="server" ForeColor="Black" Text="______________________________________________________"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style15">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label11" runat="server" ForeColor="Black" Text="Customer Address  :" Font-Names="Arial Unicode MS"></asp:Label>
                    </td>
                    <td class="auto-style16">
                        <asp:Label ID="lbl2" runat="server" ForeColor="Black" Font-Names="Arial Unicode MS"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3" colspan="2">&nbsp;
                        <asp:Label ID="Label17" runat="server" ForeColor="Black" Text="______________________________________________________"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style12">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label14" runat="server" ForeColor="Black" Text="Total Payment  :" Font-Names="Arial Unicode MS"></asp:Label>
                    </td>
                    <td class="auto-style13">
                        <asp:Label ID="lbl3" runat="server" ForeColor="Black" Font-Bold="True" Font-Names="Arial Unicode MS"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style12" colspan="2">
                        <asp:Label ID="Label28" runat="server" ForeColor="Black" Text="______________________________________________________"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style12">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Label ID="Label26" runat="server" Font-Names="Arial Unicode MS" ForeColor="Black" Text="Products  :"></asp:Label>
                    </td>
                    <td class="auto-style13">
                        <asp:Label ID="Label27" runat="server" Font-Names="Arial Unicode MS" ForeColor="Black" Text="Internal And External Super Gear ,"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5" colspan="2">&nbsp;
                        <asp:Label ID="Label18" runat="server" ForeColor="Black" Text="______________________________________________________"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6" colspan="2">&nbsp;
                        <asp:Label ID="Label19" runat="server" ForeColor="Black" Text="______________________________________________________"></asp:Label>
                    </td>
                </tr>
            </table>
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label22" runat="server" Font-Bold="True" Font-Names="Arial Unicode MS" Font-Size="20pt" ForeColor="Black" Text="Thank You.."></asp:Label>
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" BackColor="#FF9933" Font-Bold="True" Font-Names="Arial Narrow" Font-Size="15pt" OnClick="Button1_Click" Text="print" Width="130px" />
            <br />
            <br />

        </div>
        
    </div>
</asp:Content>

