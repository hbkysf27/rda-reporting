<%@ Page Title="" Language="C#" MasterPageFile="~/HomeMaster.Master" AutoEventWireup="true" CodeBehind="Police.aspx.cs" Inherits="RDA.Police" %>

<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
        <div class="row">
                     <div class="col">
                        <center>
                           <h3>TYPES OF ACCIDENT</h3>
                        </center>
                     </div>
                  </div>
         <div class="row">
                     <div class="col">
                        <center>
                            <asp:Chart runat="server">
                                <series>
                                    <asp:Series Name="Series1"></asp:Series>
                                </series>
                                <chartareas>
                                    <asp:ChartArea Name="ChartArea1"></asp:ChartArea>
                                </chartareas>
                            </asp:Chart>
                        </center>
                     </div>
                  </div>
    </div>



</asp:Content>
