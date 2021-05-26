<%@ Page Title="" Language="C#" MasterPageFile="~/GeneralZone.master" AutoEventWireup="true" CodeFile="contactus.aspx.cs" Inherits="contactus" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        #contact {
            height: 370px;
            width: 670px;
        }
        #cleft {
            min-height: 280px;
            width: 330px;
           background:white;
           float:left;
           border-radius:5%;
        }
        #address {
            width:290px;
           height:280px;
            padding:20px;
            line-height:40px;
            font-size:18px;
        }
        #cright {
            min-height: 300px;
            width: 330px;
            background: white;
            float:right;
            border-radius:5%;
        }
        #map {
             width:300px;
            height:290px;
             padding:15px;
        }
        #msg {
            height:100px;
            width:670px;
            background:white;
            border-radius:10px;
            line-height:100px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPHMain" Runat="Server">
   <div id="contact">
       <div id="cleft">
           <h2 style="text-align:center;background:black;color:white;border-radius:10px 10px 0px 0px;min-height:40px;line-height:40px;">Contact <b style="color:#2bbbad">Us</b></h2>
          
           <div id="address">
               <i class="fa fa-pencil-square"></i> SoftPro Tower, New Hanumaan Mandir, Kapoorthala, Aliganj, Lucknow-226006<br />
               <i class="fa fa-phone"></i> 0522-6565114<br />
               <i class="fa fa-mobile"></i> +91-8601802025<br />
               <i class="fa fa-envelope"></i> hr@softproindia.org<br />
               <i class="fa fa-globe"></i> www.softpro.org<br />
           </div>
       </div>
       <div id="cright">
           <h2 style="text-align:center;background:black;color:white;border-radius:10px 10px 0px 0px;min-height:40px;line-height:40px;">Map <b style="color:#2bbbad">View</b></h2>
           <div id="map">
               <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d14234.67795370525!2d80.94821!3d26.88224!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x730fe46201abc68a!2sSoftpro+India!5e0!3m2!1sen!2sin!4v1411887056855" height="280px" width="290px" style="border:5px solid black;"></iframe>
           </div>
       </div>
   </div>
     <div id="msg">"All Information Provide By Administrator Of Website Do you Have Any Query Plz Feedback Us"</div>
</asp:Content>

