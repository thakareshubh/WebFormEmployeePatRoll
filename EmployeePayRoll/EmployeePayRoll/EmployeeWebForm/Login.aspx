<%@ Page Title="" Language="C#" MasterPageFile="~/Employee.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="EmployeePayRoll.EmployeeWebForm.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <link href="../StyleSheetEmp/Login.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="min-height:800px;" >
    <div style="border-radius:10px;margin:auto;display:flex;justify-content:center;border:1px solid gray;width:450px;min-height:300px;margin-top:60px">
        <div style=" padding-bottom:20px" >
            
             
            <div style="align-items:center;text-align:center;font-size:25px;margin-top:-15px">
                <h2> Login</h2>
            </div>
            <div style=" margin-bottom:20px">
                  <asp:TextBox ID="TextEmail" CssClass="Etext" runat="server" placeholder="Email Id "></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorEmail" runat="server" ErrorMessage="Email Id is Required" ControlToValidate="TextEmail" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="RegularExpressionValidator"></asp:RegularExpressionValidator>
            </div>
             <div>     
                 <asp:TextBox ID="TextPassword" CssClass="Etext" runat="server" placeholder="Password "></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Password is Required" ControlToValidate="TextPassword" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                 <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="RegularExpressionValidator"></asp:RegularExpressionValidator>
                 </div>

             <div style="display:flex;flex-direction:row;justify-content:space-between;margin-top:30px">
                 <asp:Button ID="Button1"  runat="server" Text="Register" style="font-size:25px;color:cornflowerblue;border-radius:5px;border:none;background:none;" Height="35px" OnClick="Button1_Click"/>
                 <asp:Button ID="Button3" runat="server" Text="Login"  style="font-size:18px;width: 100px; height: 45px;color:aliceblue;background-color:blue;border-radius:5px" OnClick="Button3_Click" />
                 
               
             </div>
            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
            
            
        </div>
    </div>
      </div>
</asp:Content>
