<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="LibraryManagementSystem._default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div id="demo" class="carousel slide" data-ride="carousel">
                <!--Indicators -->
                <ul class="carousel-indicators">
                    <li data-target="#demo" data-slide-to="0" class="active"></li>
                    <li data-target="#demo" data-slide-to="1" ></li> 
                    <li data-target="#demo" data-slide-to="2" ></li>
                </ul>
                <!-- The slideshow -->
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <img src="SlideImg/lms1.jpg" alt="Elmadağ">
                    </div>
                     <div class="carousel-item">
                        <img src="SlideImg/lms2.jpg" alt="Elmadağ" width="1000px" height="575px" >
                    </div>
                     <div class="carousel-item">
                        <img src="SlideImg/lms3.jpg" alt="Elmadağ" width="1000px" height="575px" >
                    </div>
                </div>
                <!-- Left and right controls-->
                <a class="carousel-control-prev" href="#demo" data-slide="prev">
                    <span class="carousel-control-prev-icon"></span>
                </a>
                <a class="carousel-control-next" href="#demo" data-slide="next">
                    <span class="carousel-control-next-icon"></span>
                </a>

            </div>

        </div>
        <div class="row">
            <div class="col-sm-12">
                <h2>TITLE HEADING</h2>
                <h5>Title description, Jan 8, 2024</h5>
                <div class="fakeimg">Fake Image</div>
                <p>Some text...</p>
                <p>BLALALALLALALALALALALLALALAALLALAALALALLALALALALALALAL</p>
                <br>
                <h2>TITLE HEADING</h2>
                <h5>Title description, Jan 9, 2024</h5>
                <div calss="fakemimg">Fake Image</div>
                <p>Some text...</p>
                <p>BLALALALLALALALALALALLALALAALLALAALALALLALALALALALALAL</p>
            </div>
        </div>

        <div class="row">
            <div class="container">
                <div class="row">
                    <div class="col-sm-4">
                        <div class="panel panel-primary">
                            <div class="panel-heading">DISCOUNT</div>
                            <div class="card-body">
                                <img src="https://placehold.it/150x80?=IMAGE" class="img-responsive" style="width: 100%" alt="BUY!" >
                            </div>
                            <div class="panel-footer">Let's Buy!</div>
                        </div>
                        </div>
                    <div class="col-sm-4">
                        <div class="card panel panel-danger">
                            <div class="panel-heading">DISCOUNT</div>
                            <div class="card-body">
                                <img src="https://placehold.it/150x80?=IMAGE" class="img-responsive" style="width: 100%" alt="BUY!" >
                            </div>
                            <div class="panel-footer">Let's Buy!</div>
                        </div>
                            </div>
                    <div class="col-sm-4">
                        <div class="panel panel-success">
                            <div class="panel-heading">DISCOUNT</div>
                            <div class="card-body">
                                <img src="https://placehold.it/150x80?=IMAGE" class="img-responsive" style="width: 100%" alt="BUY!" >
                            </div>
                            <div class="panel-footer">Let's Buy!</div>
                        </div>

                    </div>
                </div>
            </div>
        </div>

    </div>
</asp:Content>
