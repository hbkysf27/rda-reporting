<%@ Page Title="" Language="C#" MasterPageFile="~/HomeMaster.Master" AutoEventWireup="true" CodeBehind="Insurance.aspx.cs" Inherits="RDA.Insurance" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        $(document).ready(function() {
            $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <center>

    <h1>
        Insurance
    </h1>
       </center>
       <div class="container-fluid">
      <div class="row">
         <div class="col-md-5">
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
                           <h4>ACCIDENT REPORTS</h4>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <center>
                           
                            <img width="100px" src="images/accreport.jpg" />
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
                              <asp:LinkButton class="btn btn-primary" ID="primary" runat="server" OnClick="primary_Click"><i class="fas fa-check-circle"></i></asp:LinkButton>
                           </div>
                        </div>
                     </div>
                     <div class="col-md-4">
                        <label>Vehicle Type</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="txtvehtype" runat="server" placeholder="Vehicle Type" ReadOnly="True"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-5">
                        <label>Report Status</label>
                        <div class="form-group">
                           <div class="input-group">
                              <asp:TextBox CssClass="form-control mr-1" ID="txtstatus" runat="server" placeholder="Report Status" ReadOnly="True" OnTextChanged="txtstatus_TextChanged"></asp:TextBox>
                              <asp:LinkButton class="btn btn-success mr-1" ID="success" runat="server" OnClick="success_Click"  ><i class="fas fa-check-circle"></i></asp:LinkButton>
                              <asp:LinkButton class="btn btn-warning mr-1" ID="warning" runat="server" OnClick="warning_Click"  ><i class="far fa-pause-circle"></i></asp:LinkButton>
                              <asp:LinkButton class="btn btn-danger mr-1" ID="danger" runat="server" OnClick="danger_Click"  ><i class="fas fa-times-circle"></i></asp:LinkButton>
                           </div>
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-3">
                        <label>Province</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="txtprovince" runat="server" placeholder="Province" ReadOnly="True"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-4">
                        <label>Cause For Accident</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="txtlang" runat="server" placeholder="Cause For Accident" ReadOnly="True"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-5">
                        <label>Accident Description</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="txtlong" runat="server" placeholder="Accident Description" ReadOnly="True"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                  
                 <br />
                  <div class="row">
                     <div class="col-8 mx-auto">
                        <asp:Button ID="deleterep" class="btn btn-lg btn-block btn-danger" runat="server" Text="Delete Report Permanently" OnClick="deleterep_Click"  />
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
                           <h4>ACCIDENT LIST</h4>
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
                         <div class="col">
                        <center>
                           <img width="100px" src="images/reports.png"/>
                        </center>
                     </div>
                         <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:rdaDBConnectionString12 %>" SelectCommand="SELECT * FROM [driver_report]"></asp:SqlDataSource>
                        <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="userID" DataSourceID="SqlDataSource1">
                            <Columns>
                                <asp:BoundField DataField="userID" HeaderText="ID" ReadOnly="True" SortExpression="userID" />
                                
                                <asp:TemplateField>
                                    <ItemTemplate>
                                        <div class="container-fluid">
                                            <div class="row">
                                                <div class="col-lg-10">
                                                    <div class="row">
                                                        <div class="col-lg-12">
                                                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("cause") %>' Font-Bold="True" Font-Italic="True" Font-Size="Large" ForeColor="#660066"></asp:Label>

                                                            </div>
                                                    </div>

                                                    <div class="row">
                                                        <div class="col-lg-12">
                                                           Accident Province-  <asp:Label ID="Label2" runat="server" Text='<%# Eval("province") %>' Font-Italic="True"></asp:Label>
                                                            </div>
                                                    </div>

                                                    <div class="row">
                                                        <div class="col-lg-12">
                                                            Accident Description <asp:Label ID="Label3" runat="server" Text='<%# Eval("acc_descr") %>'></asp:Label>
                                                            </div>

                                                        <div class="row">
                                                        <div class="col-lg-12">
                                                           Accident Report Status <asp:Label ID="Label4" runat="server" Text='<%# Eval("report_status") %>' ForeColor="#000099" Font-Bold="True"></asp:Label>
                                                            </div>
                                                    </div>

                                                    </div>

                                                </div>
                                                <div class="col-lg-2">
                                                    <asp:Image ID="Image1" runat="server" class="img-fluid" ImageUrl='<%# Eval("acc_img_link") %>' />
                                                </div>
                                            </div>
                                        </div>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                
                            </Columns>
                         </asp:GridView>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>
</asp:Content>
