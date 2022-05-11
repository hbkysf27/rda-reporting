<%@ Page Title="" Language="C#" MasterPageFile="~/HomeMaster.Master" AutoEventWireup="true" CodeBehind="Driver Login.aspx.cs" Inherits="RDA.Driver_Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
        <div class="col-md-6 mx-auto">
            <div class="card">
                <div class="card-body">
                    <div class="row">
                        <div class="col">
                            <center>
                                <img width="150px" src="images/user.png" />
                            </center>
                        </div>
                    </div>

                   <div class="row">
                     <div class="col">
                        <center>
                           <h3>USER LOGIN</h3>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>

                  <div class="row">
                     <div class="col">
                        <label>User ID</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="User ID"></asp:TextBox>
                        </div>
                        <label>Password</label>
                        <div class="form-group">
                           <asp:TextBox class="form-control" ID="TextBox2" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                            <br />
                        </div>
                        <div class="form-group">
                            <center>
                           <asp:Button CssClass="btn btn-success btn-block btn-lg" ID="Button1" runat="server" Text="LOGIN" />
                           </center>
                            
                        </div>
                        <div class="form-group">
                            <br />
                            <center>
                           <a href="User Signup.aspx"><input class="btn btn-info btn-block btn-lg" id="Button2" type="button" value="SIGN-UP" /></a>
                                </center>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
            <a href="Home.aspx"><< Back Home</a>
            <br />
            <br />

         </div>
      </div>
   
   

   
</asp:Content>