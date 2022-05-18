<%@ Page Title="" Language="C#" MasterPageFile="~/HomeMaster.Master" AutoEventWireup="true" CodeBehind="Admin Account Management.aspx.cs" Inherits="RDA.Admin_Account_Management" %>
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
         <div class="col-md-5">
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
                           <h4>USER DETAILS</h4>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <center>
                           
                            <img width="100px" src="images/adminlogin.png" />
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-3">
                        <label>User ID</label>
                        <div class="form-group">
                           <div class="input-group">
                              <asp:TextBox CssClass="form-control" ID="txtid" runat="server" placeholder="User ID"></asp:TextBox>
                              <asp:LinkButton class="btn btn-primary" ID="primary" runat="server" OnClick="LinkButton4_Click"><i class="fas fa-check-circle"></i></asp:LinkButton>
                           </div>
                        </div>
                     </div>
                     <div class="col-md-4">
                        <label>Full Name</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="txtname" runat="server" placeholder="Full Name" ReadOnly="True"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-5">
                        <label>Account Status</label>
                        <div class="form-group">
                           <div class="input-group">
                              <asp:TextBox CssClass="form-control mr-1" ID="txtstatus" runat="server" placeholder="Account Status" ReadOnly="True"></asp:TextBox>
                              <asp:LinkButton class="btn btn-success mr-1" ID="success" runat="server" OnClick="LinkButton1_Click"><i class="fas fa-check-circle"></i></asp:LinkButton>
                              <asp:LinkButton class="btn btn-warning mr-1" ID="warning" runat="server" OnClick="LinkButton2_Click"><i class="far fa-pause-circle"></i></asp:LinkButton>
                              <asp:LinkButton class="btn btn-danger mr-1" ID="danger" runat="server" OnClick="LinkButton3_Click"><i class="fas fa-times-circle"></i></asp:LinkButton>
                           </div>
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-3">
                        <label>DOB</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="txtdob" runat="server" placeholder="DOB" ReadOnly="True"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-4">
                        <label>Contact No</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="txtphone" runat="server" placeholder="Contact No" ReadOnly="True"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-5">
                        <label>Email ID</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="txtemail" runat="server" placeholder="Email ID" ReadOnly="True"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                  
                 <br />
                  <div class="row">
                     <div class="col-8 mx-auto">
                        <asp:Button ID="deleteacc" class="btn btn-lg btn-block btn-danger" runat="server" Text="Delete User Permanently" OnClick="Button2_Click" />
                     </div>
                  </div>
               </div>
            </div>
            <a href="Home.aspx"><< Back to Home</a><br>
            <br>
         </div>
         <div class="col-md-7">
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
                           <h4>USER LIST</h4>
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
                         <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:rdaDBConnectionString4 %>" SelectCommand="SELECT * FROM [driver_acc]"></asp:SqlDataSource>
                        <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="userID" DataSourceID="SqlDataSource1">
                            <Columns>
                                <asp:BoundField DataField="userID" HeaderText="ID" ReadOnly="True" SortExpression="userID" />
                                <asp:BoundField DataField="fullname" HeaderText="Name" SortExpression="fullname" />
                                <asp:BoundField DataField="acc_status" HeaderText="Account Status" SortExpression="acc_status" />
                                <asp:BoundField DataField="phone" HeaderText="Contact Number" SortExpression="phone" />
                                <asp:BoundField DataField="email" HeaderText="E-mail" SortExpression="email" />
                                <asp:BoundField DataField="nic" HeaderText="NIC" SortExpression="nic" />
                                <asp:BoundField DataField="insurance_num" HeaderText="Insurance Number" SortExpression="insurance_num" />
                                <asp:BoundField DataField="veh_reg_num" HeaderText="Vehicle Register Number" SortExpression="veh_reg_num" />
                            </Columns>
                         </asp:GridView>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>

    <br />
    <br />
    <br />


      <div class="container">
        
      <div class="row">
         <div class="col-md-6 mx-auto">
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
                           <img width="100px" src="images/adminlogin.png"/>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <center>
                           <h4>CREATE USER ACCOUNTS</h4>
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
                           <asp:TextBox CssClass="form-control" ID="ctxtfname" runat="server" placeholder="Full Name" MaxLength="20" ></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-6">
                        <label>Date of Birth</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="ctxtdob" runat="server" placeholder="Date Of Birth" TextMode="Date"></asp:TextBox>
                        </div>
                     </div>
                  </div>





                  <div class="row">
                     <div class="col-md-6">
                        <label>Contact No</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="ctxtphone" runat="server" placeholder="Contact No" TextMode="Phone" MaxLength="13"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-6">
                        <label>Email Address</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="ctxtemail" runat="server" placeholder="E-mail" TextMode="Email" MaxLength="30"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                  
                    
                    
                    <div class="row">
                     <div class="col-md-6">
                        <label>NIC Number</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="ctxtnic" runat="server" placeholder="NIC" TextMode="Number" MaxLength="14" ></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-6">
                        <label>Account Type</label>
                        <div class="form-group">
             
                            <asp:DropDownList id="acctype" CssClass="form-control"
                    runat="server">

                  <asp:ListItem Value="Police">Police</asp:ListItem>
                  <asp:ListItem Value="Insurance">Insurance</asp:ListItem>
                  <asp:ListItem Value="RDA">RDA</asp:ListItem>
                  

               </asp:DropDownList>


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
                        <label>User Name</label>
                        <div class="form-group">
                           <asp:TextBox class="form-control" ID="ctxtuname" runat="server" placeholder="User Name" MaxLength="20"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-6">
                        <label>Password</label>
                        <div class="form-group">
                           <asp:TextBox class="form-control" ID="ctxtpwd" runat="server" placeholder="Password" TextMode="Password" MaxLength="25"></asp:TextBox>
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
