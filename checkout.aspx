<%@ Page Title="" Language="C#" MasterPageFile="~/User/MasterPage1.master" AutoEventWireup="true" CodeFile="checkout.aspx.cs" Inherits="User_checkout" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="check">
     <div class="check1" style="font-family: Arial">

         <br />
&nbsp;&nbsp; Pay by Credit Card<br />
&nbsp;&nbsp;
         <asp:Label ID="Label4" runat="server" ForeColor="#E34220" Text="_____________"></asp:Label>
         <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <asp:Image ID="Image11" runat="server" Height="82px" ImageUrl="~/Images/20220414_140011.png" Width="219px" />
         <br />
         <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <asp:Label ID="Label5" runat="server" Font-Names="Arial" Text="Card Number"></asp:Label>
         <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <asp:TextBox ID="txt_card" runat="server" Height="40px" Width="360px" placeholder="Enter Card Number" MaxLength="16" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
         <br />
         <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Expiration Date&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;CVC<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <asp:DropDownList ID="DropDownList1" runat="server" Height="40px" Width="124px">
             <asp:ListItem>MONTH</asp:ListItem>
             <asp:ListItem>JAN</asp:ListItem>
             <asp:ListItem>FEB</asp:ListItem>
             <asp:ListItem>MAR</asp:ListItem>
             <asp:ListItem>APR</asp:ListItem>
             <asp:ListItem>MAY</asp:ListItem>
             <asp:ListItem>JUN</asp:ListItem>
             <asp:ListItem>JUL</asp:ListItem>
             <asp:ListItem>AUG</asp:ListItem>
             <asp:ListItem>SEP</asp:ListItem>
             <asp:ListItem>OCT</asp:ListItem>
             <asp:ListItem>NOV</asp:ListItem>
             <asp:ListItem>DEC</asp:ListItem>
         </asp:DropDownList>
         &nbsp;&nbsp;&nbsp;
         <asp:DropDownList ID="DropDownList2" runat="server" Height="40px" Width="124px">
             <asp:ListItem>YEAR</asp:ListItem>
             <asp:ListItem>2022</asp:ListItem>
             <asp:ListItem>2023</asp:ListItem>
             <asp:ListItem>2024</asp:ListItem>
             <asp:ListItem>2025</asp:ListItem>
             <asp:ListItem>2026</asp:ListItem>
             <asp:ListItem>2027</asp:ListItem>
             <asp:ListItem>2028</asp:ListItem>
             <asp:ListItem>2029</asp:ListItem>
             <asp:ListItem>2030</asp:ListItem>
         </asp:DropDownList>
&nbsp;&nbsp;&nbsp;
         <asp:TextBox ID="txt_cvc" runat="server" Height="40px" Width="124px" TextMode="Password" MaxLength="3"></asp:TextBox>
         <br />
         <br />
         <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Card Holder Name<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <asp:TextBox ID="txt_cname" runat="server" Height="40px" Width="436px" placeholder="Enter Name"></asp:TextBox>
         <br />
         <br />
         <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <asp:Button ID="Button1" runat="server" BackColor="#FF9933" Font-Names="Arial Black" Font-Size="15pt" ForeColor="#FFFFCC" Height="48px" Text="Pay Now" Width="394px" OnClick="Button1_Click" />

    </div>
    </div>
</asp:Content>

