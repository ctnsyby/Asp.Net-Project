<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Ana Sayfa.aspx.cs" Inherits="Default3" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <html lang=''>
<head>
   <meta charset='utf-8'>
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1">
   <link rel="stylesheet" href="source_3/cssmenu/css/styles.css">
   <script src="http://code.jquery.com/jquery-latest.min.js" type="text/javascript"></script>
   <script src="source_3/cssmenu/js/script.js"></script>
   <title>CSS MenuMaker</title>
</head>
</head>
<body>
    
    <form id="form1" runat="server">
    <div id='cssmenu'>
<ul>
   <li class='active'><a href='Ana Sayfa.aspx'><span>Ana Sayfa</span></a></li>
   <li class='has-sub'><a href='Müşteri Bilgileri.aspx'><span>Müşteri Bilgileri</span></a>
      <ul>
         <li><a href='Müşteri Ekle.aspx'><span>Müşteri Ekle</span></a></li>
         <li><a href='Müşteri Güncelle.aspx'><span>Müşteri Güncelle</span></a></li>
         <li class='last'><a href='Müşteri Sil.aspx'><span>Müşteri Sil</span></a></li>
      </ul>
   </li>
   <li class='has-sub'><a href='Servis Bilgileri.aspx'><span>Servis Bilgileri</span></a>
      <ul>
         <li><a href='Servis Ekle.aspx'><span>Servis Ekle</span></a></li>
         <li><a href='Servis Güncelle.aspx'><span>Servis Güncelle</span></a></li>
         <li class='last'><a href='Servis Sil.aspx'><span>Servis Sil</span></a></li>
      </ul>
   </li>
<li class='has-sub'><a href='Tamir Bilgileri.aspx'><span>Tamir Bilgileri</span></a>
      <ul>
         <li><a href='Tamir Ekle.aspx'><span>Tamir Ekle</span></a></li>
         <li><a href='Tamir Güncelle.aspx'><span>Tamir Güncelle</span></a></li>
         <li class='last'><a href='Tamir Sil.aspx'><span>Tamir Sil</span></a></li>
      </ul>
   </li>
</ul>
</div>
        
    </form>
</body>
</html>
