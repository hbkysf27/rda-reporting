<%@ Page Title="" Language="C#" MasterPageFile="~/HomeMaster.Master" AutoEventWireup="true" CodeBehind="Authority Login.aspx.cs" Inherits="RDA.Authority_Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container">
        <div class="col-md-5 mx-auto">
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
                           <h3>AUTHORITY LOGIN</h3>
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
                        <label>Account Type</label>
                        <div class="form-group">
                          

                            <asp:DropDownList ID="acctype" runat="server"  CssClass="form-control">
                                <asp:ListItem>Police</asp:ListItem>
                                <asp:ListItem>Insurance</asp:ListItem>
                                <asp:ListItem>RDA</asp:ListItem>
                            </asp:DropDownList>

                            </div>

                        </div>
                      </div>
                      
                    <div class="row">
                     <div class="col">
                        <label>Authority ID</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="txtid" runat="server" placeholder="Authority ID"></asp:TextBox>
                        </div>
                        <label>Password</label>
                        <div class="form-group">
                           <asp:TextBox class="form-control" ID="txtpwd" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                            <br />
                        </div>
                        <div class="form-group">
                            <center>
                           <asp:Button CssClass="btn btn-success btn-block btn-lg" ID="Button1" runat="server" Text="LOGIN" OnClick="Button1_Click" />
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
