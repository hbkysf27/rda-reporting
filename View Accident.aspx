<%@ Page Title="" Language="C#" MasterPageFile="~/HomeMaster.Master" AutoEventWireup="true" CodeBehind="View Accident.aspx.cs" Inherits="RDA.View_Accident" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

     <script type="text/javascript">
        $(document).ready(function() {
            $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
        });
     </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
    
    <div class="container-fluid">
    <div class="col-md-7 mx-auto">
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
                                <asp:BoundField DataField="userID" HeaderText="Driver Name" ReadOnly="True" SortExpression="userID" />
                                
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



</asp:Content>
