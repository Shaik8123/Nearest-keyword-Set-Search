<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Add Documents</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/droid_sans_400-droid_sans_700.font.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
<style type="text/css">
<!--
.style1 {
	color: #3366FF;
	font-size: 26px;
}
.style2 {font-size: 26px}
-->
</style>
<script type='text/javascript'>
function loadFileAsText()
{
	var fileToLoad = document.getElementById("file").files[0];

	var fileReader = new FileReader();
	fileReader.onload = function(fileLoadedEvent) 
	{
		var textFromFileLoaded = fileLoadedEvent.target.result;
		document.getElementById("textarea").value = textFromFileLoaded;
	};
	fileReader.readAsText(fileToLoad, "UTF-8");
}
</script>
</head>
<body>


<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="menu_nav">
	   <%String admin=(String)application.getAttribute("admin");%>
        <ul>
          <li><a href="adminmain.jsp"><span>Home Page</span></a></li>
          <li  class="active"><a href="#"><span><%=admin%></span></a></li>
          <li><a href="adminlogin.jsp"><span>Logout</span></a></li>
        </ul>
      </div>
      <div class="logo">
        <h1 class="style1 style2">Nearest Keyword Set Search in Multi-dimensional Datasets</h1>
      </div>
      <div class="clr"></div>
      <div class="slider">
        <div id="coin-slider"> <a href="#"><img src="images/slide1.jpg" width="940" height="310" alt="" /> </a> <a href="#"><img src="images/slide2.jpg" width="940" height="310" alt="" /> </a> <a href="#"><img src="images/slide3.jpg" width="940" height="310" alt="" /> </a> </div>
        <div class="clr"></div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <div class="article">
       
		<h2 ><em>Add Document Details </em></h2>
        
          <form action="adddocs1.jsp" method="post" name="form1">
              
			      <table width="494" height="288">
                    <tr>
                      <td height="44" align="left" valign="middle">Category </td>
                      <td><input id="tname" name="dc" type="text" /></td>
                    </tr>
                    <tr>
                      <td height="44" align="left" valign="middle">Select Document </td>
                      <td><input name="file" type="file" id="file"  onchange="loadFileAsText()" size="29"></td>
                    </tr>
                    <tr>
                      <td height="44" align="left" valign="middle">Document Name </td>
                      <td><input id="duse" name="dname" type="text" /></td>
                    </tr>
                    <tr>
                      <td height="44" align="left" valign="middle">Document Use </td>
                      <td><input id="dname" name="duse" type="text" /></td>
                    </tr>
                    
                    <tr>
                      <td width="100" height="44" align="left" valign="middle">Description</td>
                      <td><label>
                          <textarea name="textarea" id="textarea" cols="50" rows="20"></textarea>
                      </label></td>
                    </tr>
                    <tr>
                      <td height="44" align="left" valign="middle"><p>&nbsp;
                        </p>
                        <p>&nbsp;</p></td>
                      <td align="center" valign="middle"><div align="right">
                        <p>&nbsp;</p>
                        <p align="left"><a href="adminmain.jsp"></a>
                          <input name="submit" type="submit" value="Add Document" />
                        </p>
                      </div></td>
                    </tr>
                  </table>
		  </form>

          <div class="post_content">
            <p align="right"><a href="adminmain.jsp">Back</a></p>
          </div>
        </div>
        <div class="article">
          <h2><span>About Project </span></h2>
          <p class="infopost">&nbsp;</p>
          <div class="clr"></div>
          <div class="img"><img src="images/img2.jpg" width="640" height="194" alt="" class="fl" /></div>
          <div class="post_content">
            <p align="justify">Objects (e.g., images, chemical compounds, documents, or
              experts in collaborative networks) are often characterized by
              a collection of relevant features, and are commonly represented
              as points in a multi-dimensional feature space. For
              example, images are represented using color feature vectors,
              and usually have descriptive text information (e.g., tags or
            keywords) associated with them.</p>
            <p align="justify"> In this project, we consider
              multi-dimensional datasets where each data point has a set of
              keywords. The presence of keywords in feature space allows
              for the development of new tools to query and explore these
            multi-dimensional datasets.</p>
            <p align="justify"> And also, we study nearest keyword set (referred to as
              NKS) queries on text-rich multi-dimensional datasets. An NKS<br />
              query is a set of user-provided keywords, and the result of the
              query may include k sets of data points each of which contains
              all the query keywords and forms one of the top-k tightest
              cluster in the multi-dimensional space.</p>
          </div>
        </div>
        <p class="pages">&nbsp;</p>
      </div>
      <div class="sidebar">
        <div class="searchform">
          <form id="formsearch" name="formsearch" method="post" action="#">
            <span>
            <input name="editbox_search" class="editbox_search" id="editbox_search" maxlength="80" value="Search Here" type="text" onblur="if(this.value=='') this.value='Search Here'" onfocus="if(this.value =='Search Here' ) this.value=''"/>
			            </span>
            <input name="button_search" src="images/search.gif" class="button_search" type="image" />
          </form>
        </div>
        <div class="gadget">
          <h2 class="star"><span>Sidebar</span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><a href="adminmain.jsp">Home</a></li>
            <li><a href="adminlogin.jsp">Logout</a></li>
            <li></li>
          </ul>
        </div>
        <div class="gadget">
          <h2 class="star">&nbsp;</h2>
          <div class="clr"></div>
          <ul class="ex_menu">
            <li></li>
          </ul>
        </div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="fbg">
    <div class="fbg_resize">
      <div class="col c1">
        <h2><span>Image</span> Gallery</h2>
        <a href="#"><img src="images/gal1.jpg" width="75" height="75" alt="" class="gal" /></a> <a href="#"><img src="images/gal2.jpg" width="75" height="75" alt="" class="gal" /></a> <a href="#"><img src="images/gal3.jpg" width="75" height="75" alt="" class="gal" /></a> <a href="#"><img src="images/gal4.jpg" width="75" height="75" alt="" class="gal" /></a> <a href="#"><img src="images/gal5.jpg" width="75" height="75" alt="" class="gal" /></a> <a href="#"><img src="images/gal6.jpg" width="75" height="75" alt="" class="gal" /></a> </div>
      <div class="col c2">
        <h2>&nbsp;</h2>
        <ul class="fbg_ul">
          <li></li>
          <li></li>
          <li></li>
        </ul>
      </div>
      <div class="col c3">
        <h2>&nbsp;</h2>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="footer">
    <div class="footer_resize">
      <div style="clear:both;"></div>
    </div>
  </div>
</div>
<div align=center></div>
</body>
</html>