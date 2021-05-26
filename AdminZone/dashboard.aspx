<%@ Page Title="" Language="C#" MasterPageFile="~/AdminZone/Admin.master" AutoEventWireup="true" CodeFile="dashboard.aspx.cs" Inherits="AdminZone_dashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        #dash {
            height:auto;
            width:90%;
            background:white;
            margin:0px auto;
            border-radius:5%;
        }
        #tb{
            width:90%;
            padding:5%;
            min-height:250px;
            margin:0px auto;
        }
        td {
            height:150px;
            width:180px;
            border-radius:20px;
            text-align:center;
            font-size:28px;
            color:white;
            margin:15px;
            background:linear-gradient(#c0c0c0,black);
        }
        a {
            text-decoration:none;
            color:white;
        }
            a:hover {
                color:#2bbbad;
            }
        .fa {
            font-size:50px;
            -webkit-transition:0.6s ease-out;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CHPMain" Runat="Server">
    <div id="dash">
        <h2 style="text-align:center;background:black;color:white;border-radius:10px 10px 0px 0px;min-height:40px;line-height:40px;">Dash <b style="color:#2bbbad">Board</b></h2>
       <table id="tb">
          <tr>
            <td><a href="feedbackmgmt.aspx"><span class="fa fa-pencil-square-o"></span><br />FeedBack Mgmt</a></td>
            <td><a href="sendsms.aspx"><span class="fa fa-share-square-o"></span><br />Send SMS</a></td>
        </tr>
         <tr>
            <td><a href="enquirymgmt.aspx"><span class="fa fa-check-square-o "></span><br />Enquiry Mgmt</a></td>
            <td><a href="leavemgmt.aspx"><span class="fa fa-upload"></span><br />Leave Mgmt</a></td>
            
         </tr>
    </table>
    </div>
</asp:Content>

