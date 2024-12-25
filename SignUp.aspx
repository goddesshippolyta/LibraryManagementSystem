<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="LibraryManagementSystem.SignUp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sign Up</title>
    <meta charset="utf-8" />
    <link rel="shortcut icon" href="../LogoImg/logo.png" />
    <meta name="viewport" content="width-device, initial-scale=1" />

    <%--1-Bootstrap CSS--%>
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" />

    <%--2-Datatable CSS--%>
    <link href="datatable/css/jquery.dataTables.min.css" rel="stylesheet" />

    <%--3-Fontawesome CSS--%>
    <link href="fontawesome/css/all.css" rel="stylesheet" />

    <%-- 4-Jquery JS--%>
    <script src="bootstrap/js/jquery-3.3.1.slim.min.js"></script>

    <%--5-Propper JS--%>
    <script src="bootstrap/js/popper.min.js"></script>

    <%--6-Bootstrap Js--%>
    <script src="bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
  <div>
       <nav class="navbar navbar-expand-sm navbar-dark bg-primary">
                <a class="navbar-brand" href="default.aspx">
                    <img src="LogoImg/logo.png" alt="logo" width="49 " />LMS</a>
           <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
               <span class="navbar-toggler-icon"></span>
           </button>
                
                <div class="collapse navbar-collapse" id="collapsibleNavbar">
                    <ul class="navbar-nav">
                        <li class="nav-item">
                            <a class="nav-link" href="default.aspx"><b>Home</b></a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#"><b>Library Collection</b></a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#"><b>Archives</b></a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#"><b>Publication</b></a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#"><b>Gallery</b></a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#"><b>Contact Us</b></a>
                        </li>
                        
                    </ul>
                </div>  
           
                <!-- Navbar Right icon -->
                <div class="pmd-navbar-right-icon ml-auto">
                    <%--<a class="btn btn-sm btn-primary" href="#">Sign Up</a>--%>
                    <a class="btn btn-sm btn-primary" href="Login.aspx">Sign In</a>
                </div>
         </nav>
      </div>
            <div class="jumbotron text-center alert alert-primary" style="margin-bottom:0">
                <h1>The Library of Dreams</h1>
                <p>One way to escape reality is to read books!</p>
            </div>
            <div class="container-fluid">
               <div class="row">
                   <div class="col-sm-2 border border-info"> 
                       <h2>Filter</h2>
                       
                       <p>Top Search</p>
                       <ul class="nav nav-pills flex-column">
                            <li class="nav-item">
                                <a class="nav-link active" href="#">Active</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link " href="#">Link</a>
                            </li> <li class="nav-item">
                                <a class="nav-link" href="#">Link</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link disabled"href="#">Disabled</a>
                            </li>
                       </ul>
                      <hr class="d-sm-none"/>
                   </div>
                   <div class="col-sm-10 border border-info"> 
                      <%-- write your code here--%>

                        <%-- Login screen--%>

  <div class="container mt-3">
  <h2>Create New Account</h2>
  <br/>
  <!-- Nav tabs -->
  <ul class="nav nav-tabs" role="tablist">
    <li class="nav-item">
      <a class="nav-link active" data-bs-toggle="tab" href="#signup">Sign Up</a>
    </li>
    
    
  </ul>

  <!-- Tab panes -->
  <div class="tab-content">
    <div id="signup" class="container tab-pane active"><br/>
      <h3>Sign Up</h3>
      <p></p>
        <!----design login form--->
        <div class="container">
            <div class="row">
                <div class="col-md-12 mx-auto">
                    <div class="card">
                        <div class="card-body">
                            <div class="row">
                                <div class="col">
                                    <center>
                                        <img width="150" src="LogoImg/signup.jpg" />
                                    </center>
                                </div>
                            </div>
                            </div>
                            <div class="row">
                                <div class="col">
                              <center>
                                <h3>Member/User Sign Up</h3>
                              </center>
                             </div>
                             </div>
                            <div class="row">
                                <div class="col">
                                    <hr />
                                </div>
                            </div>
                            <div class="row"> 
                                <div class="col-3">
                                    <label>Member ID</label>
                                    <div class="form-group">
                                        <asp:TextBox ID="txtMemberID" CssClass="form-control" placeholder="Member ID" runat="server"></asp:TextBox>
                                    
                                    </div>

                                    <label>Password</label>
                                    <div class="form-group">
                                        <asp:TextBox ID="txtPassword" CssClass="form-control" placeholder="Password" TextMode="Password" runat="server"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*enter valid password" ControlToValidate="txtPassword" Display="Dynamic" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                    </div>
                                    <label>Full Name</label>
                                    <div class="form-group">
                                        <asp:TextBox ID="txtFullName" CssClass="form-control" placeholder="Full Name"  runat="server"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*enter full name" ControlToValidate="txtFullName" Display="Dynamic" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                    </div>

                                     <%--<div class="form-group">
                                        <a href="SignUp.aspx"><input type="button" class="btn btn-info btn-lg btn-block" value="Sign Up" /></a>
                                    </div>--%>                                                                                                                                                                   
                               
                                   </div>
                                
                                <div class="col-3">
                                    <label>Birthday</label>
                                    <div class="form-group">
                                        <asp:TextBox ID="txtDOB" CssClass="form-control" placeholder="DOB" TextMode="Date" runat="server"></asp:TextBox>
                                    </div>
                                    <label>Contact No</label>
                                    <div class="form-group">
                                        <asp:TextBox ID="txtContactNO" CssClass="form-control" placeholder="Contact No"  runat="server"></asp:TextBox>
                                    </div>
                                    <label>EmailID</label>
                                    <div class="form-group">
                                        <asp:TextBox ID="txtEmail" CssClass="form-control" placeholder="Email" TextMode="Email" runat="server">
                                        </asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*enter e-mail address" ControlToValidate="txtEmail" Display="Dynamic" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="enter valid e-mail" ControlToValidate="txtEmail" Display="Dynamic" ForeColor="#FF0066" SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                                        </div>
                                </div>
                            
                        <div class="col-3">
                             <label>State</label>
                                    <div class="form-group">
                                       
                                        <asp:DropDownList ID="ddlState" CssClass="form-control" runat="server">
                                            <asp:ListItem Text="Select" Value="Select"></asp:ListItem>
                                            <asp:ListItem Text="Hawaii" Value="Hawaii"></asp:ListItem>
                                            <asp:ListItem Text="Colorado" Value="Colorado"></asp:ListItem>
                                            <asp:ListItem Text="Mersin" Value="Mersin"></asp:ListItem>
                                            <asp:ListItem Text="Elmadag" Value="Elmadag"></asp:ListItem>
                                            <asp:ListItem Text="Santa Rona" Value="Santa Rona"></asp:ListItem>
                                            <asp:ListItem Text="Oasis" Value="Oasis"></asp:ListItem>
                                            <asp:ListItem Text="Hope Valley" Value="Hope Valley"></asp:ListItem>
                                            <asp:ListItem Text="Arc City" Value="Ark City"></asp:ListItem>
                                            <asp:ListItem Text="Ankara" Value="Ankara"></asp:ListItem>
                                            <asp:ListItem Text="Gem Cove" Value="Gem Cove"></asp:ListItem>

                                        </asp:DropDownList>
                                    </div>

                                    <label>City</label>
                                    <div class="form-group">
                                        <asp:TextBox ID="txtCity" CssClass="form-control" placeholder="City" runat="server">
                                        </asp:TextBox>
                                    </div>
                                    <label>PIN</label>
                                    <div class="form-group">
                                        <asp:TextBox ID="txtPIN" CssClass="form-control" placeholder="PIN Code" runat="server">
                                        </asp:TextBox>
                                    </div>
                        </div>
                        <div class="col-3">
                            <label>Full Address</label>
                                    <div class="form-group">
                                        <asp:TextBox ID="txtAddress" CssClass="form-control" placeholder="Address" runat="server">
                                        </asp:TextBox>
                                    </div>
                            
                                    <div class="form-group">
                                        <asp:Button ID="btnSignup" CssClass="btn btn-success btn-lg btn-block" runat="server" Text="Sign Up" OnClick="btnSignup_Click"/>
                                    </div>
                                   
                        </div>
                        </div>
                    </div>
                    <a href="default.aspx"><< Back to Home screen</a>
                </div>
            </div>
        </div>
      </div>
        <!---design end--->
    </div>
   

        
    </div>
    
  </div>
</div>
  <!---End Login Screen--->

                   <div>

               
            </div>
            <br />
            <div class="jumbotron text-center aletr alert-danger" style="margin-bottom: 0; border:2px solid red">
                <p>Footer</p>
                <div class="container">
                    <div class="row">
                        <div class="col-md-4">
                            <div class="footer-pad">
                                <h4>Heading1</h4>
                                <ul class="list-unstyled">
                                    <li><a href="#"></a></li>
                                    <li><a href="#">Payment Center</a></li>
                                    <li><a href="#">News and Updates</a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="footer-pad">
                                <h4>Heading1</h4>
                                <ul class="list-unstyled">
                                    <li><a href="#"></a></li>
                                    <li><a href="#">Website</a></li>
                                    <li><a href="#">Disclaimer</a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <h4>Follow Us!</h4>
                            <ul class="social-network social-circle">
                                <li><a href="#" title="Facebook"><i class="fa fa-facebook"></i></a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12 fa-copyright border-dark">
                            <p class="text-center">&copy; Copyrith 2024 - Unicorn Library. All rights reserved.</p>
                        </div>
                    </div>
                </div>
            </div>

           
        </div>
    </form>
</body>
</html>
