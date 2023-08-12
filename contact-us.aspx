<%@ Page Title="Contact Us | Archi Architecture And Interior Design" Language="C#" MasterPageFile="~/MasterParent.master" AutoEventWireup="true" CodeFile="contact-us.aspx.cs" Inherits="contact_us" %>
<%@ MasterType VirtualPath="~/MasterParent.master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script type="text/javascript"
        src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCvO0AHfg1cuND1KXbw3t5xZr5p4PVrEk4">
    </script>
    <script type="text/javascript">
        function initialize() {

            var myLatlng = new google.maps.LatLng(16.848230, 74.595984);

            var mapOptions = {
                center: myLatlng,
                zoom: 18, scrollwheel: false, draggable: true,
            };

            var map = new google.maps.Map(document.getElementById("map-canvas"), mapOptions);
            var autoqed = {
                path: 'M95.35,50.645c0,13.98-11.389,25.322-25.438,25.322c-14.051,0-25.438-11.342-25.438-25.322   c0-13.984,11.389-25.322,25.438-25.322C83.964,25.322,95.35,36.66,95.35,50.645 M121.743,50.645C121.743,22.674,98.966,0,70.866,0   C42.768,0,19.989,22.674,19.989,50.645c0,12.298,4.408,23.574,11.733,32.345l39.188,56.283l39.761-57.104   c1.428-1.779,2.736-3.654,3.916-5.625l0.402-0.574h-0.066C119.253,68.516,121.743,59.874,121.743,50.645',
                fillColor: '#443252',
                fillOpacity: 1,
                scale: 0.3
            };
            var marker = new google.maps.Marker({
                position: myLatlng,
                icon: autoqed,
                map: map,
                title: "MAHARASHTRA TECHNICAL AND SELF-EMPLOYMENT TRAINING SOCIETY",
                animation: google.maps.Animation.DROP
            });
            //alert("test");
            marker.addListener('click', toggleBounce);
            function toggleBounce() {
                if (marker.getAnimation() !== null) {
                    marker.setAnimation(null);
                } else {
                    marker.setAnimation(google.maps.Animation.BOUNCE);
                }
            }
        }
        google.maps.event.addDomListener(window, 'load', initialize);
    </script>
    <style>
        #map-canvas {
            height: 350px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <!-- Page Header Starts -->
    <%--<span class="space150"></span>--%>
    <%--<span class="space20"></span>--%>
   
    <div class="pgHeader6" id="pagehead">
        <div class="headerOverlay d-flex align-items-center justify-content-center">
            <div class="container-fluid">
                <div class="p-4">
                    <h1 class="pgheadertitle text-uppercase">Contact us</h1>
                    <h2 class="pgsubtitle text-uppercase" data-aos="fade-right" data-aos-duration="1000">Get in Touch with archi </h2>
                    <div class="float_clear"></div>
                </div>
            </div>
        </div>
    </div>
    <!-- Page Header Ends -->
    <span class="space30"></span>

    <!-- contact  start -->
    <section id="contact-us">
    <div class="container-fluid">
        <div class="p-5">
             <h1 class="semiBold large colorbrawon text-uppercase">Stay Connected With us</h1>
            <div class="shorline"></div>
            <span class="space50"></span>
            <div class="row g-0 m-0">
                <div class="col-md-6">
                    <div class="contctimg">
                        <div class="contctoverly d-flex align-items-center justify-content-center">
                            <div class="p-4">
                                <div class="row"> 
                                    <div class="col-md-12 col-sm-12">
                                    <span class="con-addr line-ht-5 fontRegular colorWhite">Flat No.2, Satya Apartment, Vishrambag Chowk, Vishrambag, Sangli - 416415</span>
                                    </div>
                                <span class="space15"></span>
                                    <div class="col-md-12 col-sm-12">
                                <a href="#" class="con-email line-ht-5 fontRegular colorWhite">armaheshk@gmail.com</a>
                                    </div>
                                  <span class="space15"></span>
                                    <div class="col-md-12 col-sm-12">
                                        <%=contstr %>
                               <%-- <a href="tel:(0233)2302295" class="con_call line-ht-5 fontRegular colorWhite txtDecNone">(0233) 2302295</a>--%>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 bgabout position-relative">
                    <div class="p-4">
                                <%--<form runat="server">--%>
                           <%-- <div><asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager></div>--%>
                            <asp:UpdatePanel ID="UpdatePanel1" runat="server" >
                <ContentTemplate>
                            <div class="form-row">
                                <div class="form-group col-md-12">
                                    <%--<label for="inputEmail4">Your Name <span class="colorred">*</span></label>--%>
                                     <asp:TextBox ID="txtName"  class="conTextBox" placeholder="Name *" runat="server"></asp:TextBox>
                                </div>
                            </div>
                            <div class="form-row">
                                <div class="form-group col-md-12">
                                    <%--<label for="inputPassword4">Email <span class="colorred">*</span></label>--%>
                                    <asp:TextBox ID="txtEmail"  class="conTextBox" placeholder="Email *" runat="server"></asp:TextBox>
                                </div>
                                <div class="form-group col-md-12">
                                    <%--<label for="inputEmail4">Phone</label>--%>
                                    <asp:TextBox ID="txtPhone"  class="conTextBox" placeholder="Mobile No *" runat="server" MaxLength="10"></asp:TextBox>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="">
                                    <%--<label for="exampleFormControlSelect1">Services <span class="colorred">*</span></label>--%>
                                    <asp:DropDownList ID="ddrServices" CssClass="conTextBox" runat="server">
                                        <asp:ListItem Value="0" class="clrdarkgrey">--Select Services *--</asp:ListItem>
                                        <asp:ListItem Value="1">Architectural design of villas and houses</asp:ListItem>
                                        <asp:ListItem Value="2">Interior design of villas and houses</asp:ListItem>
                                        <asp:ListItem Value="3">Apartment interior design</asp:ListItem>
                                        <asp:ListItem Value="4">Interior design of bedroom</asp:ListItem>
                                    </asp:DropDownList>
                                
                                </div>
                            </div>
                            <div class="form-group">
                                <%--<label for="inputAddress2">Message</label>--%>
                                <asp:TextBox ID="txtMsg"  class="conTextBox" TextMode="MultiLine" Height="150" placeholder="Message *" runat="server"></asp:TextBox>
                            </div>
                    <span class="space20"></span>
                    <%--<div class="form-group">
                        <div id="recaptcha" style="transform: scale(0.77); -webkit-transform: scale(0.77); transform-origin: 0 0; -webkit-transform-origin: 0 0;"></div>
                        <script src="https://www.google.com/recaptcha/api.js?onload=onloadCallback&render=explicit" async defer></script>
                    </div>--%>
                            <%--<button type="submit" class="buttonForm text-uppercase">Submit</button>--%>
                    <asp:Button ID="btnSubmit" CssClass="buttonForm text-uppercase" runat="server" Text="Submit" OnClick="btnSubmit_Click"  />

                   

                        </ContentTemplate>
            </asp:UpdatePanel> 
                        <%--</form>--%>
                    </div>
                </div>
            </div>
            <div id="map-canvas"></div>
        </div>
    </div>
</section>
    <!-- contact Ends -->
</asp:Content>

