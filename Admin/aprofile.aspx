﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="aprofile.aspx.cs" Inherits="Admin_aprofile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

 <link type="text/css" rel="stylesheet" href="../css/materialize.min.css"  media="screen,projection"/>
</asp:Content>



<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="col">
<div class="col">
    
      <div class="card  left" style="margin-top: -5px;">
        <div class="card-image ">
            <asp:Image runat="server" ID="displaypic"  class="activator"  height="200px" width="200px" ImageUrl="~/images/default-avatar.png" /><br />
            <asp:FileUpload ID="imageupload" runat="server" Font-Size="Smaller" BackColor="#CCCCFF" BorderColor="#006666" BorderWidth="1px" Font-Names="Times New Roman" ForeColor="#CC3300" Height="22px" Width="100%" /><br />
    <div> <asp:Button runat="server" id="chnge"  style="color: blue; font-weight:normal; font-size: medium" Text="Change Picture" Width="100%" OnClick="imgupload_btn" CausesValidation="False"  ></asp:Button>
     </div>
        </div>
        
          
      </div>
      
   
      
</div>
   
    
    <div class="col" style="margin-left:25%;font-size:20px;font-family:'Segoe Marker';margin-top:-5px;">
    <table style="width: 100%; height: 253px;">
        <tr>

            <td>
                <p style="display:inline;">Name:  </p><asp:Label ID="lblName" CssClass="userinfo" runat="server" ForeColor="#0033CC"></asp:Label>
            </td>
            <td>
                <p style="display:inline;">Email:  </p><asp:Label ID="lblEmail" runat="server"  CssClass="userinfo" ForeColor="#0033CC"></asp:Label>

            </td>
        </tr>
        <tr>
            <td class="auto-style2">
               <p style="display:inline;">Mobile:  </p> <asp:Label ID="lblMobile" runat="server" CssClass="userinfo" ForeColor="#0033CC"></asp:Label>

            </td>
            <td >
                <p style="display:inline;">Admin id:  </p><asp:Label ID="lblAdminid" runat="server" CssClass="userinfo" ForeColor="#0033CC"></asp:Label>

            </td>
         </tr>
        
    </table>
    
</div>
            
</div>
  
  <!--Image avator-->
   

    
            <div class="row" style="width:90%;margin-top:8%">
                <div class="card-panel">
                    <fieldset>

                        <h5 style="font-family: 'Bookman Old Style'; font-size: x-large; font-weight: bold; color: #8D0D64" class="center">Update Profile</h5>

                        <div class="row">
                            <div class="input-field col s12">
                                <asp:TextBox ID="Name" type="text" runat="server" value="" class="validate"></asp:TextBox>
                                <label for="Name">Name</label>

                            </div>
                            <asp:RequiredFieldValidator ID="validforname" runat="server" ControlToValidate="Name" ErrorMessage="*" Font-Names="Segoe UI" ForeColor="Red" Font-Bold="True"></asp:RequiredFieldValidator>
                        </div>

                        <div class="row">
                            <div class="input-field col s12">
                                <asp:TextBox ID="email" type="email" runat="server" value="" class="validate"></asp:TextBox>
                                <label for="email">Email</label>

                            </div>
                            <asp:RequiredFieldValidator ID="validforemail" runat="server" ControlToValidate="email" ErrorMessage="*" Font-Names="Segoe UI" ForeColor="Red" Font-Bold="True"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="emailvalidator" runat="server" ControlToValidate="email" ErrorMessage="Enter correct email" Font-Names="Segoe UI" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                        </div>



                        <div class="row">
                            <div class="input-field col s12">
                                <asp:TextBox ID="Mob" type="number" runat="server" value=""></asp:TextBox>
                                <label for="Mob">Mobile</label>
                            </div>
                            <asp:RequiredFieldValidator ID="validformob" runat="server" ControlToValidate="Mob" ErrorMessage="*" Font-Names="Segoe UI" ForeColor="Red" Font-Bold="True"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="mobvalidator" runat="server" ControlToValidate="Mob" ErrorMessage="Enter correct Mobile number" Font-Names="Segoe UI" ForeColor="Red" ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
                        </div>

                        <div class="row">
                            <div class="center ">
                                <div class="icon-block">
                                    <asp:Button ID="update" class="waves-effect waves-light btn" Style="background-color: #8D0D64" runat="server" Text="Update" formmethod="post" OnClick="btnUpdate" />

                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="center">
                                <asp:Label ID="profilechange" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label>
                            </div>
                        </div>

                    </fieldset>
                </div>
            </div>
        
 
    <!-- profile pic upload-->
   
   
   



</asp:Content>

