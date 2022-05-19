<%@ Page Title="" Language="C#" MasterPageFile="~/HomeMaster.Master" AutoEventWireup="true" CodeBehind="Driver Profile.aspx.cs" Inherits="RDA.Driver_Profile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <script type="text/javascript">
        $(document).ready(function() {
            $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
        });
    </script>


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">





     <div class="container-fluid">
        
      <div class="row">
         <div class="col-md-5 mx-auto">
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
                           <h4>YOUR PROFILE</h4>

                            <span>Account Status -</span>
                            <asp:Label class="badge rounded-pill bg-info" ID="Label1" runat="server" Text="Your Status"></asp:Label>
                          </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>
                   <div class="row">
                     <div class="col-md-4">
                       
                        <div class="form-group">
                           <div class="input-group">
                           </div>
                        </div>
                     </div>
                  <div class="row">
                     <div class="col-md-6">
                        <label>Full Name</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="txtfname" runat="server" placeholder="Full Name"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-6">
                        <label>Date of Birth</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="txtdob" runat="server" placeholder="Date Of Birth" TextMode="Date"></asp:TextBox>
                        </div>
                     </div>
                  </div>





                  <div class="row">
                     <div class="col-md-6">
                        <label>Contact No</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="txtphone" runat="server" placeholder="Contact No" TextMode="Phone"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-6">
                        <label>Email Address</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="txtemail" runat="server" placeholder="E-mail" TextMode="Email"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                  
                    
                    
                    <div class="row">
                     <div class="col-md-6">
                        <label>NIC Number</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="txtnic" runat="server" placeholder="NIC" TextMode="Number"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-6">
                        <label>Insurance Number</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="txtins" runat="server" placeholder="Insurance Number" TextMode="Number"></asp:TextBox>
                        </div>
                     </div>
                  </div>


                   <div class="row">
                   <div class="col-md-6">
                        <label>Vehicle Register Number</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="txtvehreg" runat="server" placeholder="Vehicle Register Number"></asp:TextBox>
                        </div>
                     </div>
                       </div>


                   <br />

                  <div class="row">
                     <div class="col">
                        <center>
                            <br />
                           <span class="badge rounded-pill bg-info text-dark"><h6 style="color:whitesmoke">Login Credentials</h6> </span>
                        </center>
                     </div>
                  </div>

                  <div class="row">
                     <div class="col-md-4">
                        <label>User ID</label>
                        <div class="form-group">
                           <asp:TextBox class="form-control" ID="txtid" runat="server" placeholder="User ID" ReadOnly="True"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-4">
                        <label>Old Password</label>
                        <div class="form-group">
                           <asp:TextBox class="form-control" ID="txtoldpwd" runat="server" placeholder="Password" TextMode="Password" ReadOnly="True"></asp:TextBox>
                        </div>
                     </div>

                       <div class="col-md-4">
                        <label>New Password</label>
                        <div class="form-group">
                           <asp:TextBox class="form-control" ID="txtnewpwd" runat="server" placeholder="New Password" TextMode="Password"></asp:TextBox>
                        </div>
                     </div>
                    
                  </div>
                  <div class="row">
                     <div class="col-8 mx-auto">
                        <center>
                            <br />
                           <div class="form-group">
                              <asp:Button class="btn btn-primary" ID="Button1" runat="server" Text="UPDATE ACCOUNT" OnClick="Button1_Click" />
                           </div>
                            <br />
                            <div class="form-group">
                              <asp:Button class="btn btn-danger" ID="Button2" runat="server" Text="DELETE ACCOUNT" OnClick="Button2_Click" />
                           </div>



                        </center>
                     </div>
                  </div>
               </div>
            </div>
            <a href="Home.aspx"><< Back to Home</a><br><br />
             </div>
          
             <br />
             <br />




    <div class="col-md-7 mx-auto">

         <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
                           <img width="100px" src="images/reports.png"/>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <center>
                           <h4>YOUR REPORTS</h4>

                            <span>Report Status -</span>
                            <asp:Label class="badge rounded-pill bg-warning" ID="Label2" runat="server" Text="Pending Approval"></asp:Label>
                          </center>
                         <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server"></asp:GridView>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>
                  

                     <div class="row">
                     <div class="col">
                         <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:rdaDBConnectionString %>" SelectCommand="SELECT * FROM [driver_acc]"></asp:SqlDataSource>
                        



                     </div>
                  </div>




               </div>
            </div>
    </div>


    </div>
         
         </div>

    

























</asp:Content>
