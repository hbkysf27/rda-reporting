<%@ Page Title="" Language="C#" MasterPageFile="~/HomeMaster.Master" AutoEventWireup="true" CodeBehind="Admin Login.aspx.cs" Inherits="RDA.Admin_Login" %>
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
                                <img width="150px" src="images/adminlogin.png" />
                            </center>
                        </div>
                    </div>

                   <div class="row">
                     <div class="col">
                        <center>
                           <h3>ADMIN LOGIN</h3>
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
                        <label>Email Address</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Email-Address"></asp:TextBox>
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
