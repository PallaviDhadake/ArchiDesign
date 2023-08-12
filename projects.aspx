<%@ Page Title="Projects | Archi Architecture And Interior Design" Language="C#" MasterPageFile="~/MasterParent.master" AutoEventWireup="true" CodeFile="projects.aspx.cs" Inherits="projects" %>
<%@ MasterType VirtualPath="~/MasterParent.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
       
       /** {box-sizing: border-box;}
       .masonry img {max-width: 100%; display: block;}
       .masonry {width: 100%; margin: 0 auto; column-count: 5!important; column-gap: .7em; }
       .masonry_item {margin: 0; width: 100%;}
       .masonry_item img {margin: 0 0 .5em 0;}
       

        @media screen and (max-width: 768px) {
            .masonry {width: 90%; column-count: 3; }
        }

        @media screen and (max-width: 480px) {
            .masonry {width: 100%; column-count: 2;}
        }

        @media screen and (max-width: 320px) {
            .masonry {column-count: 1;}
        }*/


img {
	max-width: 100%;
	height: auto;
	vertical-align: middle;
	display: inline-block;
}

/* Main CSS */
.grid-wrapper > div {
	display: flex;
	justify-content: center;
	align-items: center;
}
.grid-wrapper > div > img {
	width: 100%;
	height: 100%;
	object-fit: cover;
	border-radius: 5px;
}

.grid-wrapper {
	display: grid;
	grid-gap: 10px;
	grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
	grid-auto-rows: 200px;
	grid-auto-flow: dense;
}
.grid-wrapper .wide {
	grid-column: span 2;
}
.grid-wrapper .tall {
	grid-row: span 2;
}
.grid-wrapper .big {
	grid-column: span 2;
	grid-row: span 2;
}

    
    </style>

    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <!-- Page Header Starts -->
    <%--<span class="space150"></span>--%>
    <%--<span class="space20"></span>--%>
    <div class="pgHeader3" id="pagehead">
        <div class="headerOverlay d-flex align-items-center justify-content-center">
            <div class="container-fluid">
                <div class="p-4">
                    <h1 class="pgheadertitle text-uppercase ">Projects</h1>
                    <h2 class="pgsubtitle text-uppercase" data-aos="fade-right" data-aos-duration="1000">Portfolio of Archi Design</h2>
                    <div class="float_clear"></div>
                </div>
            </div>
        </div>
    </div>
    <!-- Page Header Ends -->
    <span class="space30"></span>

    <!-- Projects Start -->
    <div class="container-fluid">
        <div class="p-5">
                <div id="data" runat="server">
                    <h1 class="semiBold large colorbrawon text-uppercase">Our Projects</h1>
                <div class="shorline"></div>
                 <span class="space20"></span>
                <p class="clrmediumgrey fontRegular line-ht-5 ">ARCHI DESIGN presents a comprehensive approach to design. We produce perfectly coordinated and detailed plans to help you every step of the way, from space planning and construction to material selection.</p>
                </div>
            
                <%--<span class="space10"></span>--%>
                <%=projstr %>
                <div class="space30"></div>
        </div>

</div>
    <!-- Projects End -->

</asp:Content>

