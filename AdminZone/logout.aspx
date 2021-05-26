<%@ Page Language="C#" AutoEventWireup="true" CodeFile="logout.aspx.cs" Inherits="AdminZone_logout" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script>
        window.history.forward();
        window.setTimeout("window.location.href='../login.aspx'", 800);
    </script>
    <link href="../css/font-awesome.min.css" rel="stylesheet" />
    <style>
        .fa {
            font-size:50px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="height:600px;width:1300px;text-align:center;line-height:500px;">
        <i class="fa fa-spinner fa-spin"></i>
    </div>
    </form>
</body>
</html>
