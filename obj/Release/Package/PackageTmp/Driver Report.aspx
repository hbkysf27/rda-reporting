<%@ Page Title="" Language="C#" MasterPageFile="~/HomeMaster.Master" AutoEventWireup="true" CodeBehind="Driver Report.aspx.cs" Inherits="RDA.Driver_Report" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">


    <script type="text/javascript">
        function readURL(input) {
            if (input.files && input.files[0]) {
                var reader = new FileReader();

                reader.onload = function (e) {
                    $('#imgview').attr('src', e.target.result);
                };
                reader.readAsDataURL(input.files[0]);
            }
        }
    </script>
    

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


   
   <div class="container">
        
      <div class="row">
         <div class="col-md-8 mx-auto">
            <div class="card">
                
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
                            <img  width="100px" class="img-thumbnail" src="Report_images/accreport.jpg" id="imgview" height="150px"/>
                            </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <center>
                           <h4>REPORT AN ACCIDENT</h4>

                          
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
                        <label>Driver ID</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="txtid" runat="server" placeholder="Driver ID" MaxLength="15"></asp:TextBox>
                        </div>
                     </div>
                        </div>
                   


                    <div class="row">
                   <div class="col">
                       <h5>Accident Details</h5>
                        <label>Upload Image</label>
                        <div class="form-group">
                          
                               <asp:FileUpload ID="FileUpload1" runat="server" CssClass="form-control" onchange="readURL(this);"/>
                        </div>
                     </div>
                       </div>

                   
                                    

                     <div class="row">
                     <div class="col-md-6">

                        <label>Cause for Accident</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="txtcause" runat="server" placeholder="Cause for accident"  Rows="3" MaxLength="100" TextMode="MultiLine" Width="270px"></asp:TextBox>
                        </div>
                     </div>
                     

                      <div class="col-md-6">
                        <label>Vehicle Type</label>
                        <div class="form-group">


                            <asp:DropDownList ID="dropdownvehtype" runat="server" CssClass="form-control">

                  <asp:ListItem Value="car"> car </asp:ListItem>
                  <asp:ListItem Value="van"> van </asp:ListItem>
                  <asp:ListItem Value="threewheel"> threewheel </asp:ListItem>
                  <asp:ListItem Value="bus"> bus </asp:ListItem>
                  <asp:ListItem Value="bike"> bike </asp:ListItem>

               
                                </asp:DropDownList>


                           
</div>

                        </div>




                     </div>


                  

                    <div class="row">
                     <div class="col-md-8">
                        <label>Accident Desciption</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="txtaccdescr" runat="server" placeholder="Accident Description" Rows="5" MaxLength="300" TextMode="MultiLine" Width="350px"></asp:TextBox>
                        </div>
                     </div>
                                                                 
                  </div>


                    <div class="row">
                        <h4>Accident Location</h4>
                         <br />
                     <div class="col-md-4">
                         
                        <label>Langitude</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="txtlang" runat="server" placeholder="Langitude"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-4">
                        <label>Logitude</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="txtlong" runat="server" placeholder="Longitude" ></asp:TextBox>
                        </div>
                     </div>

                      <div class="col-md-4">
                        <label>Province</label>
                       <div class="form-group">
                            <asp:DropDownList ID="dropdownprovince" runat="server" CssClass="form-control">
                                <asp:ListItem Text="Western Province" Value="Western Province" Selected/>
                                  <asp:ListItem Text="North Western Province" Value="North Western Province"/>
                                <asp:ListItem Text="Central Province" Value="Central Province" />
                                <asp:ListItem Text="Southern Province" Value="Southern Province" />
                                <asp:ListItem Text="Uva Province" Value="Uva Province" />
                                <asp:ListItem Text="North Western Province" Value="North Western Province" />
                                <asp:ListItem Text="North Central Province" Value="North Central Province" />
                                <asp:ListItem Text="Nothern Province" Value="Nothern Province" />
                                <asp:ListItem Text="Eastern Province" Value="Eastern Province" />


                            </asp:DropDownList>
                            

                        </div>
                     </div>

                  </div>
                           
                                                   
                               
                           <br />
                                    
                 
                  <div class="row">
                     <div class="col-8 mx-auto">
                        <center>
                            <br />
                           <div class="form-group">
                                <asp:Button ID="btnreport" runat="server" Text="Report Accident" CssClass="btn btn-success" OnClick="Button2_Click" />
                      </div>
                        </center>
                     </div>
                  </div>
               </div>
            </div>
            <a href="Home.aspx"><< Back to Home</a><br>
            <center><a href="#Update"><button type="button" class="btn btn-info">REDIRECT TO UPDATE ACCOUNT</button></a><br><br /></center>
             </div>
          
          
       



<!--<div class="col-md-7">

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
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>
                  

                     <div class="row">
                     <div class="col">




                    

                         
                                           



                         
                        



                     </div>
                  </div>




               </div>
            </div>
    </div>-->


           <div class="row" id="Update">
         <div class="col-md-7 mx-auto">
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     
                  </div>
                 <div class="row">
                     <div class="col">
                        <center>
                           <img width="100px" src="images/user.png"/>
                        </center>
                     </div>
                     <div class="col-md-5-auto">
                        <center>
                            <br />
                            YOUR ACCOUNT<h4>&nbsp;DETAILS</h4>
                            <span >
                                <asp:Label class="badge rounded-pill bg-info " id="Label1" runat="server" Text="Account Status"></asp:Label>
                                </span>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-5 mx-auto">
                        <label>Driver ID</label>
                        <div class="form-group">
                           <div class="input-group">
                              <asp:TextBox CssClass="form-control" ID="id" runat="server" placeholder="User ID" MaxLength="15"></asp:TextBox>
                              <asp:LinkButton class="btn btn-primary" ID="primary" runat="server" OnClick="primary_Click" ><i class="fas fa-check-circle"></i></asp:LinkButton>
                           </div>
                        </div>
                     </div>
                     <div class="col-md-5 mx-auto">
                        <label>Full Name</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" MaxLength="15" ID="updname" runat="server" placeholder="Full Name"  ></asp:TextBox>
                        </div>
                     </div>
                    
                  </div>
                  <div class="row">
                     <div class="col-md-5 mx-auto">
                        <label>Insurance Number</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="updins" runat="server" placeholder="Insurance Number" MaxLength="15" ></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-5 mx-auto">
                        <label>Vehicle Register Number</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="updreg" runat="server" placeholder="Vehicle Register Number" MaxLength="12" ></asp:TextBox>
                        </div>
                     </div>
                  
                  </div>



                   <div class="row">
                     <div class="col-md-5 mx-auto">
                        <label>Password</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="updpwd" runat="server" placeholder="Password" TextMode="Password" MaxLength="25" ></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-5 mx-auto">
                        <label>E-mail</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="updemail" runat="server" placeholder="Email Address" MaxLength="25" ></asp:TextBox>
                        </div>
                     </div>
                       </div>
                  
                 <br />
                  <div class="row">
                     <div class="col-md-5 mx-auto">
                         <center>

                              <asp:Button ID="Button1" class="btn btn-lg btn-block btn-info" runat="server" Text="Update User" OnClick="Button1_Click" />
                       
                             <br />
                         <br />
                          <asp:Button ID="deleteacc" class="btn btn-lg btn-block btn-danger" runat="server" Text="Delete User Permanently" OnClick="deleteacc_Click" />
                             </center>
                     </div>
                  </div>
               </div>
            </div>
            <a href="Home.aspx"><< Back to Home</a><br>
            <br>
         </div>
      
      </div>

         

          </div>







       </div>
   


</asp:Content>
