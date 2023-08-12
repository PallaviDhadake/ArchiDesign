<%@ Page Title="Clients Reviews | Archi Architecture And Interior Design" Language="C#" MasterPageFile="~/MasterParent.master" AutoEventWireup="true" CodeFile="testimonials.aspx.cs" Inherits="testimonials" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <!-- Page Header Starts -->
    <%--<span class="space150"></span>--%>
    <%--<span class="space20"></span>--%>
    <div class="pgHeader4" id="pagehead">
        <div class="headerOverlay d-flex align-items-center justify-content-center">
            <div class="container-fluid">
                <div class="p-4">
                    <h1 class="pgheadertitle text-uppercase">Testimonials</h1>
                    <h2 class="pgsubtitle text-uppercase" data-aos="fade-right" data-aos-duration="1000">What Clients Says About us</h2>
                    <div class="float_clear"></div>
                </div>
            </div>
        </div>
    </div>
    <!-- Page Header Ends -->
    <span class="space30"></span>   

    <!-- Testimonials Start -->
    <div class="container-fluid">
        <div class="p-5">
             <h1 class="semiBold large colorbrawon text-uppercase">Client Reviews</h1>
            <div class="shorline"></div>
            <span class="space80"></span>
            <div class="row gy-5">
                <%=GetTestData() %>
                <%=GetVidTestData() %>
                <%--<div class="co-md-12 borderbx position-relative">
                    <div class="namebox">
                        <div class="p-3">
                        <p class="mb-1">Pallavi Dhadake</p>
                        <span class="">Sangli</span>
                        </div>
                    </div>
                    <div class="p-3">
                        <p class="clrmediumgrey fontRegular line-ht-5 mt-5">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</p>
                    </div>
                </div>
                <span class="space5"></span>
                <div class="co-md-12 borderbx position-relative">
                    <div class="namebox">
                        <div class="p-3">
                        <p class="mb-1">Pallavi Dhadake</p>
                        <span class="">Sangli</span>
                        </div>
                    </div>
                    <div class="p-3">
                        <p class="clrmediumgrey fontRegular line-ht-5 mt-5">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</p>
                    </div>
                </div>--%>
            </div>
        </div>
    </div>
    <!-- Testimonials  Ends -->
</asp:Content>

