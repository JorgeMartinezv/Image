<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ImageZoom.aspx.cs" Inherits="ImageZoom.ImageZoom" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <script src="Script/jquery-1.8.3.min.js"></script>
    <script src="Script/jquery.elevatezoom.js"></script>

    <style>
        #gallery_01 img
        {
            border: 2px solid white;
        }
        .active img
        {
            border: 2px solid #333 !important;
        }
    </style>

</head>
<body>
    <form id="form1" runat="server">
        <table style="width: 100%">
        <tr style="text-align: center">
            <td style="width:20%"></td>
            <td style="width:20%">
        
        <div>
            <img id="zoom_01" src="Images/small/image1.png" data-zoom-image="Images/large/image1.jpg" />
        </div>
            <br />

              <img id="zoom_07" src="Images/small/image3.png" data-zoom-image="Images/large/image3.jpg" />
            <br />

            <div style="text-align:center">
            <img id="zoom_03" style="margin-left: 26%" src="Images/small/image4.png" data-zoom-image="Images/large/image4.jpg" />
            <div id="gallery_01">
                <a href="#" data-image="Images//small/image1.png" data-zoom-image="Images/large/image1.jpg">
                    <img id="img1" src="Images/thumb/image1.jpg" />
                </a>
                <a href="#" data-image="Images/small/image2.png" data-zoom-image="Images/large/image2.jpg">
                    <img id="img2" src="Images/thumb/image2.jpg" />
                </a>
                <a href="#" data-image="Images/small/image3.png" data-zoom-image="Images/large/image3.jpg">
                    <img id="img3" src="Images/thumb/image3.jpg" />
                </a>
                 <a href="#" data-image="Images/small/image4.png" data-zoom-image="Images/large/image4.jpg">
                    <img id="img4" src="Images/thumb/image4.jpg" />
                </a>
            </div>
            </div>
            </td>
            <td></td>
        </tr>
    </table>
    
        <script type="text/javascript">
            $("#zoom_01").elevateZoom();
            $("#zoom_03").elevateZoom({ gallery: 'gallery_01', cursor: 'pointer', galleryActiveClass: 'active', imageCrossfade: true, loadingIcon: 'http://www.elevateweb.co.uk/spinner.gif' });
            $("#zoom_07").elevateZoom({ zoomType: "lens", lensShape: "round", lensSize: 200 });
        </script>
    </form>
</body>
</html>
