<%@ Page Language="C#" AutoEventWireup="true" CodeFile="default.aspx.cs" Inherits="home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Techno Task Manager | Homepage</title>
    <link href="css/generalstyle.css" rel="stylesheet" type="text/css"/>
    <link href="css/style.css" rel="stylesheet" type="text/css"/>
    <link href="css/font-awesome.min.css" rel="stylesheet" />
    <link href="favicon.jpg" rel="icon" />
    <script>
        var arr = ["s1.jpg", "s2.jpg", "s3.jpg", "s4.jpg"];
        var imgno = 0;
        function slider()
        {
            var img = document.getElementById("img1");
            img.src = "images/" + arr[imgno];
            imgno++;
            if (imgno == arr.length)
            {
                imgno = 0;
            }
            window.setTimeout("slider()", 3000);
        }
    </script>
    <!--Start of Zendesk Chat Script-->
<script type="text/javascript">
    window.$zopim || (function (d, s) {
        var z = $zopim = function (c) {
            z._.push(c)
        }, $ = z.s =
        d.createElement(s), e = d.getElementsByTagName(s)[0]; z.set = function (o) {
            z.set.
            _.push(o)
        }; z._ = []; z.set._ = []; $.async = !0; $.setAttribute('charset', 'utf-8');
        $.src = 'https://v2.zopim.com/?50Ke5uXwNdn4SANtmdZRVQXaqO6IM8MT'; z.t = +new Date; $.
        type = 'text/javascript'; e.parentNode.insertBefore($, e)
    })(document, 'script');
</script>
<!--End of Zendesk Chat Script-->
</head>
<body onload="slider()">
    <form id="form1" runat="server">
    <div id="outer">
            <div id="top">
                <div id="top1">
                    <span class="fa fa-mobile"></span> +918577885299
                </div>
                <div id="top2">
                    We are very happy to Introduced about Techno Task Manager
                </div>
                <div id="top3">
                    <a href="www.facebook.com/mithileshmsy"><span class="fa fa-facebook"></span></a>
                    <span class="fa fa-twitter"></span> 
                    <span class="fa fa-youtube"></span> 
                    <span class="fa fa-linkedin"></span> 
                </div>
            </div>
            <div id="header">
                <div id="logo">
                    <img src="images/logo2.png" height="120px" width="120px" />
                </div>
                <div id="sitetitle">
                    Welcome To <b style="font-size:47px;color:#2bbbad">T</b>echnoTask <b style="font-size:47px;color:#2bbbad">M</b>anager
                </div>
            </div>
        <div id="slider" style="height:300px;width:1000px;">
            <img src="images/s1.jpg" height="300px" width="1000px" id="img1" />
        </div>
            <div id="menu">
                <asp:Menu ID="menu1" runat="server" Orientation="Horizontal">
                    <Items>
                        <asp:MenuItem Text="Home" Value="Home" NavigateUrl="~/home.aspx"></asp:MenuItem>
                        <asp:MenuItem Text="Team" Value="Team" NavigateUrl="~/team.aspx"></asp:MenuItem>
                        <asp:MenuItem Text="Employee Registration" Value="Employee Registration" NavigateUrl="~/empregistration.aspx"></asp:MenuItem>
                        <asp:MenuItem Text="Contact Us" Value="Contact Us" NavigateUrl="~/contactus.aspx"></asp:MenuItem>
                        <asp:MenuItem Text="Log In" Value="Log In" NavigateUrl="~/login.aspx"></asp:MenuItem>
                    </Items>
                    <StaticHoverStyle BackColor="#2BBBAD" ForeColor="White" />
                    <StaticMenuItemStyle Font-Size="Large" ForeColor="#2BBBAD" HorizontalPadding="50px" VerticalPadding="11px" />
                    <StaticSelectedStyle BackColor="#2BBBAD" ForeColor="White" />
                </asp:Menu>
            </div>
            <div id="main">
                <div id="left">
                    <div id="homepage"> 
                    <h2 style="text-align:center;background:black;color:white;border-radius:10px 10px 0px 0px;min-height:40px;line-height:40px;">Home <b style="color:#2bbbad">Page</b></h2>
                   <p style="font-weight:bold"><i>
                        "Techno Task Provides is a unique Web Portal personalised to meet to all requairements<br />
                    of Company employee at a single platform -which would keep you up-to-date in<br />
                    Company and would be accessible from any place of the world . In this portal every<br />
                    user works their particular given task. They can also take leave for holyday and <br />
                    complaine for any task. He can register complain."</i>
                   </p>
                    <p style="text-align:justify;margin:4px">
                        Today's IT - companies scenario is rapidly changing and deman. The system 
                        demands greater levels of cummunication between employee ans and managers. IT- Industry
                        demands are so soaring with more and more skill requirements in all fields like as good 
                        knowledge of programming language , better professional skills, etc. Mostly employees
                        work in a group wise so they can share their work. Every employee can work can work their
                        particular task. Technical Team of SoftproIndia is proud to present Working Web portal
                        system fulfilling these demands and enacting as a bridge of communication amongst IT-
                        professionals and managers.
                    </p>
                    </div>
                </div>
                <div id="right">
                   <div id="notification">
                       <h2 style="text-align:center;background:black;color:white;border-radius:10px 10px 0px 0px;min-height:40px;line-height:40px;">Notification <b style="color:#2bbbad">Bar</b></h2>
                       <div>
                           <marquee direction="up" onmouseover="stop();" onmouseout="start();">
                           <asp:GridView ID="g1" runat="server" GridLines="Horizontal" Width="100%" Height="480px"  ShowHeader="False" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black">
                               <Columns>
                                   <asp:BoundField DataField="NMsg" HeaderText="NMsg" ControlStyle-Font-Size="30px" SortExpression="NMsg" >
                                   
<HeaderStyle BorderStyle="Dashed"></HeaderStyle>
                                   </asp:BoundField>
                                   
                               </Columns>
                               <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                               <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                               <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                               <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                               <SortedAscendingCellStyle BackColor="#F7F7F7" />
                               <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                               <SortedDescendingCellStyle BackColor="#E5E5E5" />
                               <SortedDescendingHeaderStyle BackColor="#242121" />
                           </asp:GridView></marquee>
                           <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TechnoDBConnectionString %>" SelectCommand="SELECT [NMsg] FROM [Tbl_Notification] ORDER BY [NID] DESC"></asp:SqlDataSource>
                       </div>
                   </div>
                </div>
            </div>
            <div id="ufooter">
                <div class="ufooterp">
                    <br /><br />
                    <h3>Social Websites</h3><br />
				<a href="http://www.facebook.com"><img src="spi_logo\facebooknew.png"/></a>
				<a href="http://www.twitter.com"><img src="spi_logo\twitternew.png"/></a>
				<a href="http://www.linkedin.com"><img src="spi_logo\linkedinnew.png"/></a>
				<a href="http://www.youtube.com"><img src="spi_logo\youtubenew.png"/></a>
            </div>
                <div class="ufooterp">
                    <br /><br />
                    <h3>Important Websites</h3><br />
				<a href="www.softproindia.org">www.softproindia.org</a><br/>
				<a href="www.bteup.ac.in">www.bteup.ac.in</a><br/>
				<a href="www.naukari.com">www.naukari.com</a><br/>
				<a href="www.sarakariresult.com">www.sarakariresult.com</a>
                </div>
                <div class="ufooterp">
                    <br /><br />
                    <h3>Address</h3><br />
				<i class="fa fa-pencil-square"></i> SoftPro Tower, New Hanumaan Mandir, Kapoorthala, Aliganj, Lucknow-226006<br />
               <i class="fa fa-phone"></i> 0522-6565114<br />
               <i class="fa fa-mobile"></i> +91-8601802025<br />
               <i class="fa fa-envelope"></i> hr@softproindia.org<br />
               <i class="fa fa-globe"></i> www.softpro.org<br />
                </div>
            </div>
            <div id="bfooter">
                <div class="bfooterp">
                    &copy; Softpro India Computer Technologies (P) Ltd.
                </div>
                <div class="bfooterp">
                    Developed By : Techno Developer
                </div>
            </div>
        </div>
        <%-- enquiry box--%>
         <div id="box">
            <div id="leftbox">
                E<br />
                n<br />
                q<br />
                u<br />
                i<br />
                r<br />
                y
            </div>
            <div id="rightbox">
                <h2>Enquiry Here</h2>
                <asp:TextBox runat="server" ID="TxtName" placeholder="Enter You Name" CssClass="txt"></asp:TextBox><br />
                <asp:TextBox runat="server" ID="TxtEmail" placeholder="Enter Youe Email" CssClass="txt" TextMode="Email"></asp:TextBox><br />
                <asp:TextBox runat="server" ID="TxtMobNo" placeholder="Enter Mobile No." CssClass="txt" TextMode="Number"></asp:TextBox><br />
                <asp:TextBox runat="server" ID="TxtMsg" placeholder="Enter Your Msg" CssClass="txta" TextMode="MultiLine"></asp:TextBox><br />
                <asp:Button runat="server" ID="btnSave" Text="SAVE" CssClass="btn" OnClick="btnSave_Click" />
            </div>
             
        </div>
        
    </form>
    
</body>
</html>
