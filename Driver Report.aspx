<%@ Page Title="" Language="C#" MasterPageFile="~/HomeMaster.Master" AutoEventWireup="true" CodeBehind="Driver Report.aspx.cs" Inherits="RDA.Driver_Report" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
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
                          
                            <img width="100px" class="img-thumbnail" src="images/accreport.jpg" />
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
                   <div class="col">
                       <h5>Accident Details</h5>
                        <label>Upload Image</label>
                        <div class="form-group">
                            <asp:FileUpload ID="FileUpload1" runat="server" CssClass="form-control"/>
                        </div>
                     </div>
                       </div>


                  <div class="row">
                     <div class="col-md-4">
                        <label>NIC Number</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="NIC Number" MaxLength="12"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-4">
                        <label>Insurance Number</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Insurance Number" MaxLength="20"></asp:TextBox>
                        </div>
                     </div>

                      <div class="col-md-4">
                        <label>Vehicle Register Number</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox7" runat="server" placeholder="Vehicle Register Number" MaxLength="20"></asp:TextBox>
                        </div>
                     </div>

                  </div>

                     <div class="row">
                     <div class="col-md-4">
                        <label>Cause for Accident</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Cause for accident" MaxLength="50"></asp:TextBox>
                        </div>
                     </div>
                     

                      <div class="col-md-4">
                        <label>Vehicle Register Number</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder="Vehicle Register Number" MaxLength="10"></asp:TextBox>
                        </div>




                     </div>


                  </div>

                    <div class="row">
                     <div class="col-md-8">
                        <label>Accident Desciption</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="Accident Description" Rows="5" MaxLength="100" TextMode="MultiLine" Width="350px"></asp:TextBox>
                        </div>
                     </div>
                     

                      


                  </div>






                    <div class="row">
                        <h4>Accident Location</h4>
                         <br />
                     <div class="col-md-4">
                         
                        <label>Langitude</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox11" runat="server" placeholder="Langitude"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-4">
                        <label>Logitude</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox12" runat="server" placeholder="Insurance Number" ></asp:TextBox>
                        </div>
                     </div>

                      <div class="col-md-4">
                        <label>Province</label>
                       <div class="form-group">
                            <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control">
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
                                <asp:Button ID="Button2" runat="server" Text="Report Accident" CssClass="btn btn-success" />
                              <asp:Button class="btn btn-primary" ID="Button1" runat="server" Text="UPDATE REPORT" />
                                <asp:Button class="btn btn-danger" ID="Button3" runat="server" Text="DELETE REPORT" />
                           </div>
                        </center>
                     </div>
                  </div>
               </div>
            </div>
            <a href="Home.aspx"><< Back to Home</a><br><br />
             </div>
          




    <div class="col-md-7">

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
                         <asp:GridView class="table table-striped tabel-bordered" ID="GridView1" runat="server"></asp:GridView>
                        



                     </div>
                  </div>




               </div>
            </div>
    </div>



   





</asp:Content>
