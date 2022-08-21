<%@ Page Title="" Language="C#" MasterPageFile="~/Employee.Master" AutoEventWireup="true" CodeBehind="RegisterEmployee.aspx.cs" Inherits="EmployeePayRoll.EmployeeWebForm.RegisterEmployee" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link href="../StyleSheetEmp/Register.css" rel="stylesheet" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div style="min-height: 800px;">
        <div style="padding: 30px; border-radius: 5px; margin: auto; display: flex; justify-content: center; border: 1px solid gray; width: 500px; min-height: 300px; margin-top: 60px">

            <div>
               
                <div style="align-items: center; text-align: center; font-size: 25px;margin-top:5px">
                    <h3 style="font-size: 40px">Registration</h3>
                </div>
                <div style="padding: 0px 30px 20px 30px">
                    <div style="display: flex; flex-direction: row; margin-top: 30px;">
                        <div style="display: flex; flex-direction: column">

                            <asp:TextBox ID="TextFistName" CssClass="Ftext" runat="server" placeholder="First Name"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidatorName" runat="server" ErrorMessage="Name is required" ControlToValidate="TextFistName" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="RegularExpressionValidator" ControlToValidate="TextFistName" ValidationExpression="^[A-Za-z][A-Za-z0-9_]{7,29}$"></asp:RegularExpressionValidator>
                            </div>

                        <div style="display: flex; flex-direction: column">

                            <asp:TextBox ID="TextLastName" CssClass="Ltext" runat="server" placeholder="Last Name"></asp:TextBox>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidatorLastName" runat="server" ErrorMessage="Last Name is required" ControlToValidate="TextLastName" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="RegularExpressionValidator" ControlToValidate="TextLastName" ValidationExpression="^[A-Za-z][A-Za-z0-9_]{7,29}$"></asp:RegularExpressionValidator>
                           
                            </div>
                    </div>

                    <div style="margin-bottom: 30px; display: flex; flex-direction: column">
                      <asp:TextBox ID="TextEmail" CssClass="Etext" runat="server" placeholder="Email" TextMode="Email" Height="45px" Width="360px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorEmail" runat="server" ErrorMessage="Email is required" ControlToValidate="TextEmail" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="RegularExpressionValidator" ControlToValidate="TextEmail"></asp:RegularExpressionValidator>
                        </div>

                    <div style="display: flex; flex-direction: row; margin-top: 30px;">
                        <div style="display: flex; flex-direction: column">
                            <asp:TextBox ID="TextPassword" CssClass="Ftext" runat="server" placeholder="Password" TextMode="Password" Height="45px" Width="170px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidatorPassword" runat="server" ErrorMessage="Password is required" ControlToValidate="TextPassword" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ErrorMessage="RegularExpressionValidator" ControlToValidate="TextPassword"></asp:RegularExpressionValidator>
                        </div>

                        <div style="display: flex; flex-direction: column">

                            <asp:TextBox ID="TextConfirmPassword" CssClass="Ltext" runat="server" placeholder="Confirm Password" TextMode="Password"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidatorCPassword" runat="server" ErrorMessage="Confirm password is required" ControlToValidate="TextConfirmPassword" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ErrorMessage="RegularExpressionValidator" ControlToValidate="TextConfirmPassword"></asp:RegularExpressionValidator>                
                           
                        </div>
                    </div>


                    <div style="margin-top: 20px; display: flex; flex-direction: row; justify-content: space-between">
                        <a style="font-size: 25px" href="Login">Sing in Instead</a>
                        <asp:Button ID="Button2" runat="server" Text="Submit" Style="width: 100px; height: 40px; border-radius: 5px; font-size: 16px; font-size: 18px; color: aliceblue; background-color: blue; border-radius: 5px" OnClick="Button2_Click" />


                    </div>
                </div>
            </div>
        </div>

    </div>
</asp:Content>
