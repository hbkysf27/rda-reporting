<%@ Page Title="" Language="C#" MasterPageFile="~/HomeMaster.Master" AutoEventWireup="true" CodeBehind="Driver Signup.aspx.cs" Inherits="RDA.User_Signup" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    
     <div class="container">
        
      <div class="row">
         <div class="col-md-6 mx-auto">
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
                           <img width="100px" src="images/user.png"/>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <center>
                           <h4>DRIVER SIGNUP</h4>
                          </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-6">
                        <label>Full Name</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Full Name"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-6">
                        <label>Date of Birth</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Date Of Birth" TextMode="Date"></asp:TextBox>
                        </div>
                     </div>
                  </div>





                  <div class="row">
                     <div class="col-md-6">
                        <label>Contact No</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Contact No" TextMode="Phone"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-6">
                        <label>Email Address</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="E-mail" TextMode="Email"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                  
                    
                    
                    <div class="row">
                     <div class="col-md-6">
                        <label>NIC Number</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder="NIC" TextMode="Number"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-6">
                        <label>Insurance Number</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server" placeholder="Insurance Number" TextMode="Number"></asp:TextBox>
                        </div>
                     </div>
                  </div>


                   <div class="row">
                   <div class="col-md-6">
                        <label>Vehicle Register Number</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox7" runat="server" placeholder="Vehicle Register Number"></asp:TextBox>
                        </div>
                     </div>
                       </div>


                   <br />

                  <div class="row">
                     <div class="col">
                        <center>
                           <span class="badge rounded-pill bg-info text-dark"><h6 style="color:whitesmoke">Login Credentials</h6> </span>
                        </center>
                     </div>
                  </div>

                  <div class="row">
                     <div class="col-md-6">
                        <label>User ID</label>
                        <div class="form-group">
                           <asp:TextBox class="form-control" ID="TextBox8" runat="server" placeholder="User ID"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-6">
                        <label>Password</label>
                        <div class="form-group">
                           <asp:TextBox class="form-control" ID="TextBox9" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                        </div>
                     </div>
                     
                  </div>
                  <div class="row">
                     <div class="col-8 mx-auto">
                        <center>
                            <br />
                           <div class="form-group">
                              <asp:Button class="btn btn btn-success btn-block btn-lg" ID="Button1" runat="server" Text="SIGN-UP" OnClick="Button1_Click" />
                           </div>
                        </center>
                     </div>
                  </div>
               </div>
            </div>
            <a href="Home.aspx"><< Back to Home</a><br><br>
             </div>
          </div>
            
         </div>
    
        


    

</asp:Content>
