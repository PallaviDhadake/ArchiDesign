<%@ Page Title="Career At Archi | Architecture And Interiors" Language="C#" MasterPageFile="~/MasterParent.master" AutoEventWireup="true" CodeFile="career.aspx.cs" Inherits="career" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <!-- Page Header Starts -->
    <%--<span class="space150"></span>--%>
    <%--<span class="space20"></span>--%>
    <div class="pgHeader5" id="pagehead">
        <div class="headerOverlay d-flex align-items-center justify-content-center">
            <div class="container-fluid">
                <div class="p-4">
                    <h1 class="pgheadertitle text-uppercase">Career</h1>
                    <h2 class="pgsubtitle text-uppercase" data-aos="fade-right" data-aos-duration="1000">We are hiring  join our team </h2>
                    <div class="float_clear"></div>
                </div>
            </div>
        </div>
    </div>
    <!-- Page Header Ends -->
    <span class="space30"></span>

    <!-- career start -->
    <div class="container-fluid">
        <div class="p-5">
            <h1 class="semiBold large colorbrawon text-uppercase">Start build your future with archi</h1>
            <div class="shorline"></div>
            <span class="space50"></span>
            <div class="row g-0">
            <div class="col-md-6 bgabout position-relative">
                <div class="p-4">
                    <%--<form runat="server">--%>
                    <%-- <div><asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager></div>--%>
                    <%-- <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>--%>
                        <div class="form-row">
                            <div class="form-group col-md-12">
                                <asp:TextBox ID="txtName" class="conTextBox" placeholder="Name *" runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col-md-12">
                                <asp:TextBox ID="txtEmail" class="conTextBox" placeholder="Email *" runat="server"></asp:TextBox>
                            </div>
                            <div class="form-group col-md-12">
                                <asp:TextBox ID="txtPhone" class="conTextBox" MaxLength="10" placeholder="Mobile No *" runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col-md-12">
                                <asp:TextBox ID="txteduc" class="conTextBox" placeholder="Education *" runat="server"></asp:TextBox>
                            </div>
                        </div>

                         <div class="form-row">
                            <div class="form-group col-md-12">
                                <asp:TextBox ID="txtexp" class="conTextBox" placeholder="Experiance *" runat="server"></asp:TextBox>
                            </div>
                        </div>

                        <span class="space20"></span>

                        <div class="form-group col-md-6">
                            <label for="inputEmail4" class="">Upload Resume:*</label>
                            <span class="space10"></span>
                            <asp:FileUpload ID="fuResume" runat="server" CssClass="" />
                        </div>

                        <%--<div class="form-group">
                            <asp:TextBox ID="txtMsg" class="conTextBox" TextMode="MultiLine" Height="150" placeholder="Message *" runat="server"></asp:TextBox>
                        </div>--%>
                        <span class="space30"></span>
                        <asp:Button ID="btnSubmit" CssClass="buttonForm text-uppercase" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
                   <%-- </ContentTemplate>
                </asp:UpdatePanel>--%>
                    <%--</form>--%>
                </div>
            </div>
                <div class="col-md-6">
                    <img src="images/career-archi.jpg" class="img-fluid w-100 h-100" />
                </div>
</div>
        </div>
    </div>
    <!-- career end -->
</asp:Content>

