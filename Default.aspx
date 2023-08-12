<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8" />
    <meta content="width=device-width, initial-scale=1.0" name="viewport" />

    <title>Archi Design Interiors | Architecture</title>
    <meta content="" name="description" />
    <meta content="" name="keywords" />

    <!-- Font Roboto -->

    <link rel="preconnect" href="https://fonts.googleapis.com"/>
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin/>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;300;400;500;700&family=Varela+Round&display=swap" rel="stylesheet"/>

    <%--<link rel="preconnect" href="https://fonts.googleapis.com"/>
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin/>
    <link href="https://fonts.googleapis.com/css2?family=Lato:wght@100;300;400;700&display=swap" rel="stylesheet"/>--%>

    <!-- Swiper Slider-->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.css" />
    <script src="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.js"></script>


    <!-- aos -->
    <script src="js/jquery-2.2.4.min.js"></script>
    <link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet"/>
    <script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>

    <!-- Bootstrap -->
    <link href="Vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <script src="Vendor/bootstrap/js/bootstrap.min.js"></script>

    <!--Animate Css  -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css" />
    <link href="css/hover-min.css" rel="stylesheet" />
    
    <!-- Main Css -->
    <link href="css/archidesign.css" rel="stylesheet" />

    <!-- Animate CSS  -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.0.3/css/font-awesome.css" rel="stylesheet"/>

    <!-- js files -->
    <script src="js/accordian.js"></script>

     <!-- Toast Notifications files -->
    <link href="css/toastr.css" rel="stylesheet" />
    <script src="js/toastr.js"></script>

    <script type="text/javascript">
        function TostTrigger(EventName, MsgText) {
            // code to be executed
            Command: toastr[EventName](MsgText)
            toastr.options = {
                "closeButton": true,
                "debug": false,
                "newestOnTop": false,
                "progressBar": false,
                "positionClass": "toast-top-full-width",
                "preventDuplicates": false,
                "onclick": null,
                "showDuration": "300",
                "hideDuration": "1000",
                "timeOut": "5000",
                "extendedTimeOut": "1000",
                "showEasing": "swing",
                "hideEasing": "linear",
                "showMethod": "slideDown",
                "hideMethod": "fadeOut"
            }

        }
    </script>


    <style>
         .active{color:#ff6a00 !important}
    </style>

</head>
<body class="Greybackground" id="top">
    <div class="">
        <a href="https://wa.me/919422411366?text=I%27m%20interested%20in%20your%20services" class="whatsappLink" target="_blank" title="Contact for quick enquiry"></a>
    </div>
    <div class="absTopArrow" title="Scroll Top">
        <a href="#top"><div class="fixedArrow"></div></a>
    </div>
   <!-- Navigations Start -->
    <section id="navrbar" class="py-1">
        <div class="">
            <nav class="navbar navbar-expand-lg">
                <div class="container-fluid">
                    <a class="navbar-brand" href="<%=rootPath%>">
                        <img alt="" src="<%=rootPath + "images/logo-archi-degin.jpeg" %>" class="lg" />
                    </a>
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
                        <img src="images/icons/social/nav-btn-color.png" />
                    </button>
                    <div class="collapse navbar-collapse position-relative" id="navbarNavDropdown">
                        <!--Navigation starts-->
                       
                        <ul class="navbar-nav" >
                            <li class="nav-item">
                                <a class="nav-link active" aria-current="page" href="<%=rootPath%>">Home</a>
                            </li>

                            <li class="nav-item">
                                <a class="nav-link" id="aboutus" runat="server" aria-current="page" href="about-us">About</a>
                            </li>
                           
                                <li class="nav-item">
                                    <a class="nav-link " aria-current="page" href="services">Services</a>
                                </li>

                                <li class="nav-item">
                                    <a class="nav-link " aria-current="page" href="projects">Projects</a>
                                </li>

                                <li class="nav-item">
                                    <a class="nav-link " aria-current="page" href="testimonials">Testimonials</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link " aria-current="page" href="career">Career</a>
                                </li>
                            
                                <li class="nav-item float-end">
                                    <a class="nav-link " href="contact-us">Contact Us</a>
                                </li>

                        </ul>
                    </div>
                        <%--<a class="nav-link float-end btnContact " id="btnget" href="contact-us">Get a quote</a>--%>
                    <div class="mobnav">
                        <a class="btnquick" id="" href="services">Services</a>
                        <a class="btnquick" id="" href="projects">Projects</a>
                        <a class="btnquick" id="" href="Testimonials">Testimonials</a>
                    </div>
                </div>
            </nav>
        </div>
    </section>
    <!-- Navigations End -->
    <!-- Text -->
    <!--<section id="text">
        <span class="space50"></span>
        <div class="typewrite semiBold xx-large text-uppercase ms-2 line-ht-5" data-period="2000" data-type='["Archi Design <br>Best Architecture And Interior Design Services"]'>
            <span class="wrap"></span>
        </div>
        <span class="space50"></span>
    </section>-->
    <section id="text">
        <span class="space50"></span>
        <div class="container-fluid">
            <div class="semiBold maintext text-uppercase ms-2 line-ht-5" data-aos="fade-right" data-aos-duration="1000">
                Archi Design <br />
                Best Architecture And Interior Design Services
            </div>
        </div>
        <span class="space50"></span>
    </section>
    <!-- Text END -->
    <!-- Banner Start -->
    <section id="banner">
        <div id="carouselExampleFade" class="carousel slide carousel-fade" data-bs-ride="carousel" data-aos="fade-right" data-aos-duration="1000">
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img src="images/projects/project-1.jpeg" class="d-block w-100" alt="...">
                </div>
                <div class="carousel-item">
                    <img src="images/projects/project-2.png" class="d-block w-100" alt="...">
                </div>
                <div class="carousel-item">
                    <img src="images/projects/project-3.png" class="d-block w-100" alt="...">
                </div>
            </div>
            <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleFade" data-bs-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Previous</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleFade" data-bs-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Next</span>
            </button>
        </div>
    </section>
    <!-- Banner End -->

    <span class="space50"></span>
    <!-- About start -->
    <section id="about">
        <div class="container-fluid">
            <div class="p-3">
                <h1 class="semiBold medium section-title mb-3">About Us</h1>
                <div class="row">
                    <div class="col-md-4 p-2" data-aos="fade-right" data-aos-duration="1000">
                        <span class="semiBold large">
                            A PLACE WHERE IDEAS MEET SKILLS
                        </span>
                    </div>
                    <div class="col-md-8 p-2" data-aos="fade-left" data-aos-duration="1000">
                        <p class="fontRegular clrmediumgrey line-ht-5">ARCHI DESIGN is an established architectural firm in western Maharashtra, having its office at Pune, Sangli and Kolhapur.
The Company is promoted by architects, civil engineering professionals & interior designers having more than twenty years of experience in the construction & interior Industry. Ours is a company engaged in diversified construction activities for institutional, commercial & industrial complexes and residential buildings catering to the private, public & govt. sector. The Company has successfully completed more than 400 projects in a span of last twenty years.
                            <span class="space10"></span>
                        </p>
                       <a class="linkbtn" href="about-us">About Us</a>
                    </div>
                </div>
            </div>
            <hr />
        </div>
    </section>
    <!-- About end -->
    <!-- Services start -->
    <section id="services">
        <div class="container-fluid">
            <div class="p-3">
                <h1 class="semiBold medium sectonborder mb-3 section-title">Services</h1>
                <div class="row">
                    <div class="col-md-4 p-2" data-aos="fade-right" data-aos-duration="1000">
                        <span class="semiBold large">
                            ARCHITECTURE STUDIO SERVICES
                        </span>
                    </div>
                    <div class="col-md-8 p-2" data-aos="fade-left" data-aos-duration="1000">
                        <p class="fontRegular fontRegular clrmediumgrey line-ht-5">Architectural services means any practice involving the art and science of building design for construction of any structure or grouping of structures and the use of space within and surrounding the structures or the design for construction, including but not specifically limited to, schematic design, design development, preparation of construction contract documents, and administration of the construction contract</p>

                        <a class="linkbtn" href="services">View More</a>
                    </div>
                </div>
                <span class="space30"></span>
                <div class="row">
                    <div class="col-md-4 p-2" data-aos="zoom-in" data-aos-duration="1000">
                        <a href="services">
                            <div class="p-3">
                                <img src="images/projects/services-2.jpg" class="img-fluid imgZoom" />
                                <span class="space20"></span>
                                <a class="semiBold regular servtxt text-decoration-none colorBlack">ARCHITECTURAL DESIGN OF VILLAS AND HOUSES</a>
                            </div>
                        </a>
                    </div>
                    <div class="col-md-4 p-2" data-aos="zoom-in" data-aos-duration="1000">
                        <a href="services">
                            <div class="p-3">
                                <img src="images/projects/services-3.jpg" class="img-fluid imgZoom" />
                                <span class="space20"></span>
                                <a class="semiBold regular servtxt text-decoration-none colorBlack">
                                    INTERIOR DESIGN OF VILLAS AND HOUSES
                                </a>
                            </div>
                        </a>
                    </div>
                    <div class="col-md-4 p-2" data-aos="zoom-in" data-aos-duration="1000">
                        <a href="services">
                            <div class="p-3">
                                <img src="images/projects/services-1.jpg" class="img-fluid imgZoom" />
                                <span class="space20"></span>
                                <a class="semiBold regular servtxt text-decoration-none colorBlack">APARTMENT INTERIOR DESIGN</a>
                            </div>
                        </a>
                    </div>
                </div>
            </div>
            <hr />
        </div>
    </section>
    <!-- Services end -->
    <span class="space20"></span>


    <%-- Enquiry form start --%>
    <section id="enquiry">
        <div class="container-fluid">
            <div class="p-3">
                <h1 class="semiBold medium sectonborder mb-3 section-title">Send us Enquiry</h1>
                <span class="space30"></span>
                <div class="row justify-content-center">
                    <div class="col-md-9">
                        <form runat="server">
                            <asp:ScriptManager runat="server"></asp:ScriptManager>
                            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                <ContentTemplate>
                                    <div class="form-row">
                                        <div class="form-group col-md-12">
                                            <asp:TextBox ID="txtName" class="enqTextBox" placeholder="Name *" runat="server"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="form-row">
                                        <div class="form-group col-md-12">
                                            <asp:TextBox ID="txtEmail" class="enqTextBox" placeholder="Email *" runat="server"></asp:TextBox>
                                        </div>
                                        <div class="form-group col-md-12">
                                            <asp:TextBox ID="txtPhone" class="enqTextBox" MaxLength="10" placeholder="Mobile No *" runat="server"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="">
                                            <asp:DropDownList ID="ddrServices" CssClass="enqTextBox" runat="server">
                                                <asp:ListItem Value="0" class="clrdarkgrey">--Select Services *--</asp:ListItem>
                                                <asp:ListItem Value="1" class="">Architectural design of villas and houses</asp:ListItem>
                                                <asp:ListItem Value="2">Interior design of villas and houses</asp:ListItem>
                                                <asp:ListItem Value="3">Apartment interior design</asp:ListItem>
                                                <asp:ListItem Value="4">Interior design of bedroom</asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <asp:TextBox ID="txtMsg" class="enqTextBox" TextMode="MultiLine" Height="150" placeholder="Message *" runat="server"></asp:TextBox>
                                    </div>
                                    <span class="space20"></span>
                                    <div class="text-center">
                                        <asp:Button ID="btnSubmit" CssClass="buttonForm text-uppercase" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
                                    </div>
                                </ContentTemplate>
                            </asp:UpdatePanel>
                        </form>
                    </div>
                </div>
            </div>
              <span class="space20"></span>
            <hr />
        </div>
    </section>

    <%-- Enquiry form end --%>
    

    <!-- project strat -->
    <section id="projects">
        <div class="container-fluid">
            <div class="p-3">
                <h1 class="semiBold medium sectonborder mb-3 section-title">Projects</h1>
                <span class="space30"></span>
                <%--<div class="swiper">--%>
            <!-- Additional required wrapper -->
                    
            <%--<div class="swiper-wrapper">--%>
                <!-- Slides -->
                <%=GetprojectsData() %>

                <%--<div class="swiper-slide">
                    <div class="row justify-content-center">
                        <div class="col-lg-8 position-relative">
                            <div class="p-4">
                                <a href="#" class="text-decoration-none">

                                     <img src="images/projects/project-7.jpeg" class="d-block w-100 img-fluid" alt="..." />
                                <div class="row">
                                    <div class="col-12">
                                        <div class="px-5">
                                            <div class="projectbox">
                                                <div class="">
                                                    <div class="p-3">
                                                        <p class="fontRegular clrdarkgrey mb-2">Residential architecture</p>
                                                        <p class="semiBold semiMedium mb-2  colorBlack">BLACK LUXURY<span class="btnview float-end">View Project</span></p>

                                                        <p class="fontRegular clrdarkgrey mb-2">Stylish one-story house</p>                     <!--<a href="#" class="btnview">View Project</a>-->
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>--%>
              
            <%--</div>--%>
            
                    <div class="text-center">
                       

                        <span class="space20"></span>
                        <a href="projects" class="btn btnMore">View More</a>
                    </div>
                    
           
                    <%--<div class="carousel-inner">
                        <div class="carousel-item active" data-bs-interval="10000">
                            <div class="row">
                                <div class="col-lg-6 position-relative">
                                    <a href="#" class="text-decoration-none">
                                        <img src="images/projects/project-img.jpeg" class="d-block w-100 img-fluid" alt="..."/>
                                        <div class="row">
                                            <div class="col-12">
                                                <div class="px-5">
                                                    <div class="projectbox">
                                                        <div class="">
                                                            <div class="p-3">
                                                                <p class="fontRegular clrdarkgrey mb-2">Residential architecture</p>
                                                                <p class="semiBold semiMedium mb-2  colorBlack">BLACK LUXURY<span class="btnview float-end">View Project</span></p>

                                                                <p class="fontRegular clrdarkgrey mb-2">Stylish one-story house</p>                     <!--<a href="#" class="btnview">View Project</a>-->
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </a>
                                </div>
                                <div class="col-lg-6 position-relative">
                                    <a href="#" class="text-decoration-none">
                                        <img src="images/projects/faq-3.jpg" class="d-block w-100 img-fluid" alt="...">
                                        <div class="row">
                                            <div class="col-12">
                                                <div class="px-5">
                                                    <div class="projectbox">
                                                        <div class="">
                                                            <div class="p-3">
                                                                <p class="fontRegular clrdarkgrey mb-2">Residential architecture</p>
                                                                <p class="semiBold semiMedium mb-2 colorBlack">SOFIA<span class="btnview float-end">View Project</span></p>

                                                                <p class="fontRegular clrdarkgrey mb-2">Stylish one-story house</p>                     <!--<a href="#" class="btnview">View Project</a>-->
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </a>
                                </div>
                            </div>
                        </div>
                        <div class="carousel-item" data-bs-interval="2000">
                            <div class="row">
                                <div class="col-lg-6 position-relative">
                                    <a href="#" class="text-decoration-none">
                                        <img src="images/projects/project-img-3.jpg" class="d-block w-100 img-fluid" alt="...">
                                        <div class="row">
                                            <div class="col-12">
                                                <div class="px-5">
                                                    <div class="projectbox">
                                                        <div class="">
                                                            <div class="p-3">
                                                                <p class="fontRegular clrdarkgrey mb-2">Residential architecture</p>
                                                                <p class="semiBold semiMedium mb-2 colorBlack">PROJECT NAME<span class="btnview float-end">View Project</span></p>

                                                                <p class="fontRegular clrdarkgrey mb-2">Stylish one-story house</p>                     <!--<a href="#" class="btnview">View Project</a>-->
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </a>
                                </div>
                                <div class="col-lg-6 position-relative">
                                    <a href="#" class="text-decoration-none">
                                        <img src="images/projects/project-img-4.jpg" class="d-block w-100 img-fluid" alt="...">
                                        <div class="row">
                                            <div class="col-12">
                                                <div class="px-5">
                                                    <div class="projectbox">
                                                        <div class="">
                                                            <div class="p-3">
                                                                <p class="fontRegular clrdarkgrey mb-2">Residential architecture</p>
                                                                <p class="semiBold semiMedium mb-2 colorBlack">LAKE<span class="btnview float-end">View Project</span></p>

                                                                <p class="fontRegular clrdarkgrey mb-2">Stylish one-story house</p>                     <!--<a href="#" class="btnview">View Project</a>-->
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </a>
                                </div>
                            </div>
                        </div>
                        <div class="carousel-item">
                            <div class="row">
                                <div class="col-lg-6 position-relative">
                                    <a href="#" class="text-decoration-none">
                                        <img src="images/projects/project-7.jpeg" class="d-block w-100 img-fluid" alt="...">
                                        <div class="row">
                                            <div class="col-12">
                                                <div class="px-5">
                                                    <div class="projectbox">
                                                        <div class="">
                                                            <div class="p-3">
                                                                <p class="fontRegular clrdarkgrey mb-2">Residential architecture</p>
                                                                <p class="semiBold semiMedium mb-2 colorBlack">Project Name<span class="btnview float-end">View Project</span></p>

                                                                <p class="fontRegular clrdarkgrey mb-2">Stylish one-story house</p>                     <!--<a href="#" class="btnview">View Project</a>-->
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </a>
                                </div>
                                <div class="col-lg-6 position-relative">
                                    <a href="#" class="text-decoration-none">
                                        <img src="images/projects/project-img-5.jpg" class="d-block w-100 img-fluid" alt="...">
                                        <div class="row">
                                            <div class="col-12">
                                                <div class="px-5">
                                                    <div class="projectbox">
                                                        <div class="">
                                                            <div class="p-3">
                                                                <p class="fontRegular clrdarkgrey mb-2">Residential architecture</p>
                                                                <p class="semiBold semiMedium mb-2 colorBlack">Project Name<span class="btnview float-end">View Project</span></p>

                                                                <p class="fontRegular clrdarkgrey mb-2">Stylish one-story house</p>                     <!--<a href="#" class="btnview">View Project</a>-->
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>--%>
                    
                <%--</div>--%>
            </div>

             <span class="space20"></span>
    <hr />
    <span class="space30"></span>
  </div>
    </section>
    <!-- project End -->
   
    <!-- testimonial start -->
    <section id="testimonial">
        <div class="container-fluid">
            <div class="p-3">
                <div class="bgTestimonial">
                    <div class="row d-flex align-items-center justify-content-center height">
                        <div class="col-sm-8 testbox text-center" data-aos="zoom-in" data-aos-duration="1000">
                            <div id="carouselExampleSlidesOnly" class="carousel slide" data-bs-ride="carousel">
                                <%=GetTestData()%>
                           <%--     <div class="carousel-inner">
                                    <div class="carousel-item active">
                                        <div class="p-3">
                                            <span class="space30"></span>
                                            <h4 class="semiBold large mb-4 colorWhite">CLIENT REVIEWS</h4>
                                            <p class="fontRegular semiBold regular colorWhite line-ht-5 mb-4">
                                                Thanks Archi Design for building our first house! The build itself is a process but Aimee was great to deal with throughout the whole operation and was very quick in responding and answered all our questions. I would recommend Archi Design to build your house
                                            </p>
                                            <span class="bold semiMedium colorWhite">Pallavi Dhadake</span>
                                            <span class="space5"></span>
                                            <span class="semiBold regular colorWhite">Sangli</span>
                                            <!--<span class="space20"></span>-->
                                            <!--<a href="#" class="text-decoration-none colorWhite">Read More</a>-->
                                            <span class="space10"></span>
                                        </div>
                                    </div>
                                    <div class="carousel-item">
                                        <div class="p-3">
                                            <span class="space30"></span>
                                            <h4 class="semiBold large mb-4 colorWhite">CLIENT REVIEWS</h4>
                                            <p class="fontRegular semiBold regular colorWhite line-ht-5 mb-4">
                                                Thanks Archi Design for building our first house! The build itself is a process but Aimee was great to deal with throughout the whole operation and was very quick in responding and answered all our questions. I would recommend Archi Design to build your house
                                            </p>
                                            <span class="bold semiMedium colorWhite">Pallavi Dhadake</span>
                                            <span class="space5"></span>
                                            <span class="semiBold regular colorWhite">Sangli</span>
                                            <!--<span class="space20"></span>-->
                                            <!--<a href="#" class="text-decoration-none colorWhite">Read More</a>-->
                                            <span class="space10"></span>
                                        </div>
                                    </div>
                                    <div class="carousel-item">
                                        <div class="p-3">
                                            <span class="space30"></span>
                                            <h4 class="semiBold large mb-4 colorWhite">CLIENT REVIEWS</h4>
                                            <p class="fontRegular semiBold regular colorWhite line-ht-5 mb-4">
                                                Thanks Archi Design for building our first house! The build itself is a process but Aimee was great to deal with throughout the whole operation and was very quick in responding and answered all our questions. I would recommend Archi Design to build your house
                                            </p>
                                            <span class="bold semiMedium colorWhite">Pallavi Dhadake</span>
                                            <span class="space5"></span>
                                            <span class="semiBold regular colorWhite">Sangli</span>
                                            <!--<span class="space20"></span>-->
                                            <!--<a href="#" class="text-decoration-none colorWhite">Read More</a>-->
                                            <span class="space10"></span>
                                        </div>
                                    </div>
                                </div>--%>
                                <%--<span class="space20"></span>--%>
                            <%--<a href="testimonials" class="text-decoration-none colorWhite readMore">Read More</a>--%>
                            </div>
                            
                            <span class="space60"></span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- testimonial end -->
    <span class="space30"></span>

    <!-- faq start -->
    <section id="faq">
        <div class="container-fluid position-relative">
            <div class="p-3">
                <h1 class="semiBold medium sectonborder mb-3 section-title">FAQs</h1>
                <div class="row gy-3">
                    <div class="col-xl-7 float-end" data-aos="fade-down" data-aos-duration="1000">
                        <div id="carouselExampleFade" class="carousel slide carousel-fade" data-bs-ride="carousel">
                            <div class="carousel-inner">
                                <div class="carousel-item active">
                                    <img src="images/projects/project-7.jpeg" class="d-block w-100" alt="...">
                                </div>
                                <div class="carousel-item">
                                    <img src="images/projects/project-8.jpeg" class="d-block w-100" alt="...">
                                </div>
                                <div class="carousel-item">
                                    <img src="images/projects/faq-3.jpg" class="d-block w-100" alt="...">
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-5 float-end">
                        <div class="accordinbox" data-aos="fade-down" data-aos-duration="1000">
                            <div class="faqbg shadow">
                                <div class="p-5">
                                    <!--<span class="space30"></span>-->
                                    <div class="pad_15">
                                        <h4 class="themeClrQtr semiBold medium colorWhite">Customers asks us questions</h4>
                                        <span class="space10"></span>
                                        <span class="shortLine faqbg"></span>
                                        <div class="genMedAccordian">
                                            <h3>Why do I need an Architect ?</h3>
                                            <div>
                                                <p class="paraTxt">Architects ensure that the work is professionally done and that it meets the requirements of Building Control. Architects help to make sure the building is well-designed and realistic. An architect can also help you find the best builder for your work and can manage the project whilst keeping within your budget.</p>
                                            </div>
                                            <h3>When should I hire an Architect ?</h3>
                                            <div>
                                                <p class="paraTxt">It is best to hire an architect as soon as you are ready to begin designing your construction project. The earlier the better! We are happy to provide rough estimates for the cost of your project and can provide some preliminary designs at the start of the process.</p>
                                            </div>
                                            <h3>What is the right Budget for the Job ?</h3>
                                            <div>
                                                <p class="paraTxt">The right budget for the job depends on the scope of the project, the materials, and labour requirements amongst many other things. We can provide rough estimates for the cost of your project and will keep within budget when drawing up the designs.</p>
                                            </div>
                                            <h3>What is the right time to involve Interior Designer ?</h3>
                                            <div>
                                                <p class="paraTxt">The Interior Design Team should be established as soon as possible to avoid abortive work.</p>
                                            </div>
                                            <!--<h3>What is OD ?</h3>
                                            <div>
                                                <p class="paraTxt">Oocyte donation involves egg retrieval from the donor, insemination with semen of the recipient's husband, and in vitro culture and transfer of cleaved embryos.</p>
                                            </div>-->
                                            <!--<span class="space10"></span>-->
                                            <!--<a href="services" class="readAnch small semiBold upperCase letter-sp-2 mrg_R_15">More Services</a>-->
                                        </div>
                                    </div>
                                    <!--<span class="space20"></span>-->
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- faq end -->

    <span class="space30"></span>
    <!-- footer start -->
    <section id="footer" class="bgfooter">
        <!-- Footer Starts -->
        <div class="footer">
            <span class="space20"></span>
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-5">
                        <div class="p-3">
                            <div class="">
                                <span class="semiBold large colorWhite" >Archi Design</span>
                                <span class="colorWhite">Architecture and Interior</span>
                            </div>
                            <span class="space10"></span>
                            <span class="clrGrey small fontRegular"> &copy; <%= currentYear %> | Archi Design Architecture And Interior, All Rights Reserved</span>
                            <span class="clrGrey small fontRegular">Website By <a href="http://www.intellect-systems.com" target="_blank" class="intellect" title="Website Design and Development Service By Intellect Systems">Intellect Systems</a></span>
                        </div>  
                    </div>
                    <div class="col-md-7 d-flex align-items-center justify-content-center">
                        <div class="p-3">
                            <div class="row">
                                <div class="col-md-4">
                                    <span class="addr line-ht-5 small">Flat No.2, Satya Apartment, Vishrambag Chowk, Vishrambag, Sangli - 416415</span>
                                </div>
                                <div class="col-md-4">
                                    <a href="#" class="email line-ht-5 small">armaheshk@gmail.com</a>
                                </div>
                                <div class="col-md-4">
                                    <%=contstr %>
                                    <%--<a href="tel:(0233)2302295" class="foo_call line-ht-5 small txtDecNone">(0233) 2302295</a>--%>
                                    <span class="space10"></span>
                                    <%--<img src="images/universal-interio.jpg" />--%>
                                    <span class="fontRegular regular semiBold text-white">Our Interior Designing Branch</span>
                                    <span class="space10"></span>
                                    <img src="images/universal-interio.jpg" style="width: 120px" />
                                </div>
                                </div>
                                
                        </div>
                    </div>
                    <!--<div class="col-md-3">
                        <div class="p-3">
                            <h4 class="footerCaption clrWhite mrg_B_10 clrGrey semiBold upperCase letter-sp-2">Get Social</h4>
                            <div class="fLine mrg_B_15"><span class="fAbsLine"></span></div>
                            <div class="mt-3">
                                <a href="#" target="_blank" class="foo_fb foo_socialIco" title="Follow us on facebook"></a>
                                <a href="#" target="_blank" class="foo_youTube foo_socialIco" title="Follow us on youtube"></a>
                                <a href="#" target="_blank" class="foo_insta foo_socialIco" title="Follow us on Instagram"></a>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="p-3">
                            <h4 class="footerCaption clrWhite mrg_B_10 semiBold clrGrey upperCase letter-sp-2">Contact Info</h4>
                            <div class="fLine mrg_B_15"><span class="fAbsLine"></span></div>
                            <div class="mt-3">
                                <span class="semiBold mrg_B_10">Archi Interior And Architecure Design</span>
                                <span class="addr line-ht-5 small">Sangli - Miraj Road, Neminath Nagar, Vishrambag, Sangli, Maharashtra 416415</span>
                                <span class="space15"></span>
                                <a href="" class="email line-ht-5 small">demo@gmail.com</a>
                                <!--<a href="mailto:sushilhospitals@gmail.com" class="email line-ht-5 small ">frontdesk&#64;sushilivf&#46;com</a>-->
                                <!--<span class="space15"></span>
                                <a href="tel:(0233)2302295" class="foo_call line-ht-5 small txtDecNone">(0233) 2302295</a>
                            </div>
                        </div>
                    </div>-->
                </div>
                <div class="float_clear"></div>
                <div class="Socialicons d-inline-block me-4">
                    <div class="p-3">
                        <a href="https://www.facebook.com/profile.php?id=100054451691079" class="fb" target="_blank"><img src="images/icons/footfb.png" /></a>
                        <a href="https://www.instagram.com/universal_interiors_/" class="insta" target="_blank"><img src="images/icons/footinstagram.png" /></a>
                        <a href="https://www.youtube.com/watch?v=Togyh3WTOy4" class="youtube" target="_blank"><img src="images/icons/footyoutube.png" /></a>
                    </div>
                </div> 
            </div>
            <!--<span class="space20"></span>
            <span class="footerLine"></span>
            <span class="space10"></span>
            <div class="col-md-12 text-center">
                <div class="">
                    <span class="clrGrey small  fontRegular"> &copy; 2022 | Archi Design Interior And Architecture, All Rights Reserved</span>
                    <span class="clrGrey small fontRegular">Website By <a href="http://www.intellect-systems.com" target="_blank" class="intellect" title="Website Design and Development Service By Intellect Systems">Intellect Systems</a></span>
                    <span class="space10"></span>
                </div>
            </div>-->
             <span class="space20"></span>
        </div>
        <!-- Footer Ends -->
    </section>
    <!-- footer end -->

    <script>
        AOS.init();
    </script>

    <script>
        var TxtType = function (el, toRotate, period) {
            this.toRotate = toRotate;
            this.el = el;
            this.loopNum = 0;
            this.period = parseInt(period, 10) || 2000;
            this.txt = '';
            this.tick();
            this.isDeleting = false;
        };

        TxtType.prototype.tick = function () {
            var i = this.loopNum % this.toRotate.length;
            var fullTxt = this.toRotate[i];

            if (this.isDeleting) {
                this.txt = fullTxt.substring(0, this.txt.length - 1);
            } else {
                this.txt = fullTxt.substring(0, this.txt.length + 1);
            }

            this.el.innerHTML = '<span class="wrap">' + this.txt + '</span>';


            var that = this;
            var delta = 200 - Math.random() * 100;

            if (this.isDeleting) { delta /= 2; }

            if (!this.isDeleting && this.txt === fullTxt) {
                delta = this.period;
                this.isDeleting = true;
            } else if (this.isDeleting && this.txt === '') {
                this.isDeleting = false;
                this.loopNum++;
                delta = 500;
            }

            setTimeout(function () {
                that.tick();
            }, delta);
        };

        window.onload = function () {
            var elements = document.getElementsByClassName('typewrite');
            for (var i = 0; i < elements.length; i++) {
                var toRotate = elements[i].getAttribute('data-type');
                var period = elements[i].getAttribute('data-period');
                if (toRotate) {
                    new TxtType(elements[i], JSON.parse(toRotate), period);
                }
            }
            // INJECT CSS
            var css = document.createElement("style");
            css.type = "text/css";
            css.innerHTML = ".typewrite > .wrap { border-right: 0.08em solid #000; font-weight:500;}";
            document.body.appendChild(css);
            typingeffect = true;
            adjustHt();
        };
    </script>

    <script>
        $(document).ready(function () {
            $('.genMedAccordian').accordian({
                collapsible: true,
                prefix: '❖'
            });
        });
    </script>

    <script>
        var swiper = new Swiper(".swiper", {
            slidesPerView: "auto",
            spaceBetween: 30,
            //autoplay:true,
            pagination: {
                el: ".swiper-pagination",
                clickable: true,
            },
            // Navigation arrows
            navigation: {
                nextEl: '.next',
                prevEl: '.prev',
            },


        });
    </script>
    <script>
        
    </script>

</body>
</html>
