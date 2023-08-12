<%@ Page Title="Services | Archi Architecture And Interior Design" Language="C#" MasterPageFile="~/MasterParent.master" AutoEventWireup="true" CodeFile="services.aspx.cs" Inherits="services" %>
<%@ MasterType VirtualPath="~/MasterParent.master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <!-- Page Header Starts -->
    <%--<span class="space150"></span>--%>
    <%--<span class="space20"></span>--%>
    <div class="pgHeader2" id="pagehead">
        <div class="headerOverlay d-flex align-items-center justify-content-center">
            <div class="container-fluid">
                <div class="p-4">
                    <h1 class="pgheadertitle text-uppercase">Services</h1>
                    <h2 class="pgsubtitle text-uppercase" data-aos="fade-right" data-aos-duration="1000">What we provide to clients</h2>
                    <div class="float_clear"></div>
                </div>
            </div>
        </div>
    </div>
    <!-- Page Header Ends -->
    <span class="space30"></span>

    <!-- Services Starts -->
    <div class="container-fluid">
        <div class="p-5">
            <h1 class="semiBold large text-uppercase">Services We Provide</h1>
            <div class="shorline"></div>
            <span class="space20"></span>
            <p class="clrmediumgrey fontRegular  line-ht-5">ARCHI DESIGN presents a comprehensive approach to design. We produce perfectly coordinated and detailed plans to help you every step of the way, from space planning and construction to material selection.</p>
            <span class="space30"></span>
                  <div class="row">
                <div class="col-md-6">
                    <img src="images/projects/project-2.png" class="img-fluid" />
                </div>
                <div class="col-md-6 ">
                    <div class="p-3">
                        <span class="semiBold medium text-uppercase">We are a multidisciplinary architecture studio, established since 2004, composed by a group of young and ambitious architects, designers and engineers.</span>
                        <span class="space20"></span>
                        <p class="clrmediumgrey fontRegular mb-3">Based on our expertise in contemporary Cycladic architecture, as well as the urban life and landscapes, we aim to provide innovative architectural solutions in India and worldwide. We specialize in the design, licensing and construction, while our portfolio includes commercial projects, private residences, apartments and landscape projects.</p>
                    </div>
                </div>

                <%--<div class="greyLine"  data-aos="fade-right" data-aos-duration="800"></div>
                <div class="greyLine"  data-aos="fade-right" data-aos-duration="800"></div>
                <div class="col-md-6">
                    <img src="images/projects/project-2.png" class="img-fluid" />
                </div>
                <div class="col-md-6 ">
                    <div class="p-3">
                        <span class="semiBold large text-uppercase">WHITE HOUSE</span>
                        <span class="space20"></span>
                        <p class="clrmediumgrey fontRegular mb-3">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</p>
                    </div>
                </div>
                <div class="greyLine"  data-aos="fade-right" data-aos-duration="800"></div>
                <div class="greyLine"  data-aos="fade-right" data-aos-duration="800"></div>
                <div class="col-md-6">
                    <img src="images/projects/project-2.png" class="img-fluid" />
                </div>
                <div class="col-md-6 ">
                    <div class="p-3">
                        <span class="semiBold large text-uppercase">WHITE HOUSE</span>
                        <span class="space20"></span>
                        <p class="clrmediumgrey fontRegular mb-3">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</p>
                    </div>
                </div>
                <span class="greyLine"  data-aos="fade-right" data-aos-duration="800"></span>
            </div>--%>
      
            <span class="space50"></span>
            <div class="semiBold large">FIND OUT THE PRICE OF YOUR HOME DESIGN <a class="linkbtn float-end" href="contact-us">Get Quote</a></div>

        </div>
    </div>
    <!-- Services End  -->

</asp:Content>

