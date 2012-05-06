<%@ language='VBScript' %>
<% response.buffer = TRUE %>
<!--#include virtual="/scripts/slideshow.js" -->
<!--#include virtual="/scripts/displayeventfiles.vbs" -->

<%
  'Code to get local drive info and set FileSystemObject. Used throughout the page.
  PageURL=Request.ServerVariables("URL")
  MyFileName=Right(PageURL,Len(PageURL)-InStrRev(PageURL,"/"))
  Set FSO=Server.CreateObject("Scripting.FileSystemObject")
  Set RootFolder=FSO.GetFolder(Server.MapPath("."))
  CurrentDrive=Left(RootFolder.Path,1)
%>

<html>
<head>

<!-- Code for menus. Do not change. -->
<!-- ***** This is the section of code you need to paste into your web pages ***** -->
<script type="text/javascript" src="/scripts/milonic_src.js"></script>	
<script type="text/javascript" src="/scripts/mmenudom.js"></script>
<noscript><a href=http://www.milonic.com/>Milonic JavaScript Menu is only visible when JavaScript is enabled</a></noscript>
<!-- The next file contains your menu data, links and menu structure etc -->
<script type="text/javascript" src="/scripts/menu_data_styles.js"></script>	
<script type="text/javascript" src="/scripts/menu_data_menus.js"></script>	
<!-- **** JavaScript Menu HTML Code -->

<META name="keywords" content="UCC United Church Of Christ Simi Valley California">
<META name="description" content="UCC United Church Of Christ Simi Valley California">

<title>UCC - Simi Valley</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">

<STYLE>
BODY {FONT-SIZE: 8.5pt; FONT-FAMILY: verdana, arial, helvetica, times}
.text {FONT-SIZE: 9pt; COLOR: #333333; LINE-HEIGHT: 1.5; FONT-FAMILY: verdana, arial, helvetica, times}
.text-bold {FONT-WEIGHT: bold; FONT-SIZE: 9pt; COLOR: #333333; LINE-HEIGHT: 1.5; FONT-FAMILY: verdana, arial, helvetica, times}
.nav {FONT-SIZE: 8pt; COLOR: #333333; FONT-FAMILY: verdana, arial, helvetica, times; TEXT-DECORATION: none}
.nav:hover {FONT-SIZE: 8pt; COLOR: #0000ff; FONT-FAMILY: verdana, arial, helvetica, times; TEXT-DECORATION: underline}
.subnav {FONT-SIZE: 8.5pt; COLOR: #333333; FONT-FAMILY: verdana, arial, helvetica, times; TEXT-DECORATION: none}
.subnav:hover {FONT-SIZE: 8.5pt; COLOR: #0000ff; FONT-FAMILY: verdana, arial, helvetica, times; TEXT-DECORATION: underline}
.copyright {FONT-SIZE: 7.5pt; COLOR: #666666; LINE-HEIGHT: 1.5; FONT-FAMILY: verdana, arial, helvetica, times}
DIV {TEXT-ALIGN: left}
DIV.editArea {border: 1px dashed #000000; width:500px; height:300px;}
.toggle-td {FONT-WEIGHT: normal; FONT-SIZE: 11px; BACKGROUND: #ffcc00; WIDTH: 20px; CURSOR: hand; COLOR: #000000; FONT-FAMILY: verdana, arial, helvetica; TEXT-DECORATION: none}
.weekend-td {FONT-WEIGHT: normal; FONT-SIZE: 11px; BACKGROUND: #ececec; WIDTH: 20px; CURSOR: hand; COLOR: #000000; FONT-FAMILY: verdana, arial, helvetica; TEXT-DECORATION: none}
.weekday-td {FONT-WEIGHT: normal; FONT-SIZE: 11px; BACKGROUND: #ffffff; WIDTH: 20px; CURSOR: hand; COLOR: #000000; FONT-FAMILY: verdana, arial, helvetica; TEXT-DECORATION: none}
.event-td {FONT-WEIGHT: normal; FONT-SIZE: 11px; BACKGROUND: #ffffcc; WIDTH: 20px; CURSOR: hand; COLOR: #000000; FONT-FAMILY: verdana, arial, helvetica; TEXT-DECORATION: none}
.outmonth-td_end {FONT-WEIGHT: normal; FONT-SIZE: 11px; BACKGROUND: #ececec; WIDTH: 25px; COLOR: #aaaaaa; FONT-FAMILY: verdana, arial, helvetica}
.outmonth-td_day {FONT-WEIGHT: normal; FONT-SIZE: 11px; BACKGROUND: #ffffff; WIDTH: 25px; COLOR: #aaaaaa; FONT-FAMILY: verdana, arial, helvetica}
.admin-label {FONT-WEIGHT: bold; FONT-SIZE: 10pt; BACKGROUND: #ffffcc; FONT-FAMILY: verdana, arial, helvetica}
.calendar-title {FONT-WEIGHT: bold; FONT-SIZE: 10pt; BACKGROUND: #6699cc; COLOR: #ffffff; FONT-FAMILY: verdana, arial, helvetica}
.weektitle-td {FONT-WEIGHT: normal; FONT-SIZE: 11px; BACKGROUND: #c9e6f9; WIDTH: 25px; COLOR: #000000; FONT-FAMILY: verdana, arial, helvetica; TEXT-DECORATION: none}
.bottom-td {BACKGROUND: #cccccc}
.event-text_1 {FONT-WEIGHT: normal; FONT-SIZE: 11px; BACKGROUND: #ffffff; COLOR: #000000; FONT-FAMILY: verdana, arial, helvetica; TEXT-DECORATION: none}
.event-text_2 {FONT-WEIGHT: normal; FONT-SIZE: 11px; BACKGROUND: #ececec; COLOR: #000000; FONT-FAMILY: verdana, arial, helvetica; TEXT-DECORATION: none}

@font-face
	{font-family:"Lucida Calligraphy";
	panose-1:3 1 1 1 1 1 1 1 1 1;
	mso-font-charset:0;
	mso-generic-font-family:script;
	mso-font-pitch:variable;
	mso-font-signature:3 0 0 0 1 0;}


</STYLE>
<link rel="icon" href="/favicon.ico" type="image/x-icon">
<link rel="shortcut icon" href="/favicon.ico" type="image/x-icon">
<link rel="shortcut icon" href="/favicon.ico"> 
</head>

<body marginwidth="0" background="/images/02_red_ucc_pattern_bg_new.gif" topMargin="0" leftMargin="0" marginheight="0">

<!-- Begin Page. Entire page is on one large table. -->
<table border="0" width="740" cellSpacing="0" cellPadding="0">
  <tr>
    <td valign="top" align="left" width="740"> 

<!-- Begin top bar. -->
      <table border="0" valign="top" width="740" cellspacing="0" cellpadding="0">
        <tr>
          <td>
            <a href="http://www.ucc.org" class="nav"><img border="0" alt="Click here to visit the national UCC website" src="/images/midleftblk_new.gif"></a>
          </td>
          <td>
            <a href="http://www.ucc.org" class="nav"><img border="0" alt="Click here to visit the national UCC website" src="/images/blockstack_new.gif" id="UCC-Colorflag"></a>
            <script language="JavaScript">RunSlideShow("UCC-Colorflag","/images/blockstack_new.gif;/images/colorflag.bmp",6);</script>
          </td>
          <td>
            <a href="http://www.stillspeaking.com/" class="nav"><img border="0" alt="Click here to visit the national StillSpeaking.com website" src="/images/banner1.gif" id="God is still speaking comma logos"></a>
            <script language="JavaScript">RunSlideShow("God is still speaking comma logos","/images/banner1.gif;/images/banner2.gif;/images/banner3.gif;/images/banner2.gif;/images/banner4.gif",5);</script>
          </td>
        </tr>
        <tr>
          <td>
            &nbsp;
          </td>
        </tr>
      </table>
<!-- End top bar. -->

      <table border="0" width="740" cellpadding="0" cellspacing="0">
        <tr>
<!-- Left red/black bar. -->
          <td background="/images/redstripe.gif" valign="top" align="left"><img height="30" width="29" src="/images/spacer.gif"></td>

<!-- Left column -->
          <td valign="top" width="180" align="center"> 
            <table border="0" width="180" cellpadding="0" cellspacing="0">
              <tr>
                <td width="175" align="center">
                  <a href='http://www.facebook.com/pages/Simi-Valley-United-Church-of-Christ/196564462596'><img border="0" alt="Find us on Facebook" src="/images/find_us_on_facebook.jpg"></a>
                </td>
              </tr>
              <tr>
                <td width="175" valign="top" align="center">
                  <hr>
                  <span class="text">
                    <strong><span style='COLOR: #FF0099; FONT-SIZE: 16px;'><b>News And Upcoming Events</b></span><br><br>
                    <%DisplayEventFiles(CurrentDrive+":\InetPub\uccsimi\news")%>
                  </span>
                </td>
              </tr>
              <tr>
                <td width="175" align="center">
                  <hr>
                  <strong><span style='COLOR: #004080; FONT-SIZE: 14px;'>Help our Children Grow Stronger in Faith.</span></strong><br><br>
                  <img src='/images/pic1.jpg'><img src='/images/pic2.jpg'><br><br>
                  <strong><span style='COLOR: #FF0099; FONT-SIZE: 16px;'><b>We Now Accept PayPal!</b></span></strong>
                  <form action="https://www.paypal.com/cgi-bin/webscr" method="post">
                    <input type="hidden" name="cmd" value="_s-xclick">
                    <input type="hidden" name="hosted_button_id" value="E675EQUWFUCT8">
                    <input type="image" src="https://www.paypal.com/en_US/i/btn/btn_donateCC_LG.gif" border="0" name="submit" alt="PayPal - The safer, easier way to pay online!">
                    <img alt="" border="0" src="https://www.paypal.com/en_US/i/scr/pixel.gif" width="1" height="1">
                  </form>
                </td>
              </tr>
              <tr>
                <td width="175" align="center">
                  <hr>
                  <span class="text">
                    <strong><span style='COLOR: #FF0099; FONT-SIZE: 16px;'><b>Spiritual Resources</b></span><br><br>
                    <%DisplayEventFiles(CurrentDrive+":\InetPub\uccsimi\spiritualresources")%>
                  </span>
                </td>
              </tr>
              <tr>
                <td width="175" align="center">
                  <hr>
                  <a href="http://www.simivalley.org/">Simi Valley</a><br>
                  <font face='arial' size='2'><i>The complete online guide to the Simi Valley area, with accommodation, real estate, business and local information.</i></font><br>
                </td>
              </tr>
              <tr>
                <td width="175" align="center">
                  <hr>
                  <font face='arial' size='2'><i>We use MX GuardDog services for e-mail spam and virus filtering. For more information, click the link below.<br><a href="http://www.mxguarddog.com">anti spam software</a></i></font>
                </td>
              </tr>
              <tr>
                <td width="175" align="center">
                  <hr>
                    <font face='arial' size='2'><i>We use menus built by Milonic Solutions. For more information, please click the link below.<br><a href="http://www.milonic.com/">DHTML JavaScript Menu By Milonic</a></i></font>
                </td>
              </tr>
            </table>
          </td>

<!-- Right column -->

          <td valign="top" width="540" align="left">
            <table border="0" width="530" cellpadding="0" cellspacing="5">
              <tr>
                <td valign="top" align="left">
                  <span class="text">
                  <p align="center">
                    <table border="0" cellpadding="0" cellspacing="0" align="left">
                      <tr>
                        <td align="center" width="270">
<%
'                            '=== Slide show begin ===
'                            'Build a list of JPG files in the slideshow pictures folder
'                            strSlideShowPicsFolder="slideshowpics"
'                            Set objPicsFolder=FSO.GetFolder(Server.MapPath(".")+"\"+strSlideShowPicsFolder)
'                            Set colFiles=objPicsFolder.Files
'                            strFileList=""
'                            For Each objFile in colFiles
'                              if Right(UCase(objFile.Name),4)=".JPG" then
'                                if Len(strFileList)>0 then
'                                  strFileList=strFileList+";"
'                                else
'                                  strFirstFile="/"+strSlideShowPicsFolder+"/"+objFile.Name
'                                end if
'                                strFileList=strFileList+"/"+strSlideShowPicsFolder+"/"+objFile.Name
'                              end if
'                            Next
'                          <img border="0" alt="UCC Simi Valley, 370 Royal Ave., Simi Valley, CA 93065, (805) 526-6001" src="strFirstFile" align="left" id="UCCSimi Member Slides">
'                          <script language="JavaScript">RunSlideShow("UCCSimi Member Slides","strFileList",4);</script>
'
'                          '=== Video UCC Extravagent Welcome ===
'                          <object width="240" height="180">
'                            <param name="movie" value="http://vimeo.com/moogaloop.swf?clip_id=16389509&amp;server=vimeo.com&amp;show_title=1&amp;show_byline=1&amp;show_portrait=1&amp;color=&amp;fullscreen=1&amp;autoplay=0&amp;loop=0" />
'                            <param name="allowfullscreen" value="true" />
'                            <param name="allowscriptaccess" value="always" />
'                            <embed src="http://vimeo.com/moogaloop.swf?clip_id=16389509&amp;server=vimeo.com&amp;show_title=1&amp;show_byline=1&amp;show_portrait=1&amp;color=&amp;fullscreen=1&amp;autoplay=0&amp;loop=0" type="application/x-shockwave-flash" allowfullscreen="true" allowscriptaccess="always" width="240" height="180"></embed>
'                          </object>
%>
                          <table style="background-color: #eaf1dd;" border='1' cellpadding='10' cellspacing='0' align='center'>
                            <tr>
                              <td width='100%' height='100%' align='center'>
                                <span style='font-size:12.0pt;line-height:115%;font-family:"Lucida Calligraphy";mso-bidi-font-family:"Times New Roman"'>Our Mission is to grow a compassionate, inclusive community that seeks justice and peace for all people as revealed in the life and teachings of Jesus.</span>
                              </td>
                            </tr>
                          </table>
                        </td>

                        <%'=== Church Name and Address ===%>
                        <td align="center" width="250" valign="center" >
                            <span style="FONT-SIZE: 20px; COLOR: #004080">
                              <strong>
                              United Church<br>
                              of Christ<br>
                              in Simi Valley<br>
                              </strong>
                            <span style="FONT-SIZE: 12px; COLOR: #004080">
                              370 Royal Ave.<br>
                              Simi Valley, CA 93065<br>
                              Phone #: 805-526-6001<br>
                              Fax #: 805-526-6176<br>
                              Email: <A href="mailto:info@uccsimi.org">info@uccsimi.org</a>
                            </span>
                          </strong>
                        </td>
                      </tr>
                    </table>
                  </p>
                </td>
              </tr>
              <tr>
                <td align='center'>
                  <span class="text">
                    <b><i>
<%
'                      <span style="FONT-SIZE: 16px; COLOR: #00A000">
'                        Christmas Eve Service December 24th 7:30 p.m.<br>
'                        All are welcome!<br>
'                      </span>
%>
                      10:00 a.m. Worship Service, Sunday School for Children and Youth.<br>
                    </i></b>
                  </span>
                </td>
              </tr>
              <tr>
                <td>
                  <table width="240" border="0" height="160" cellPadding="0" cellSpacing="0" align="right">
                    <tr>
                      <td valign="top">
<%
'                        <object id="MediaPlayer" width=240 height=180 classid="CLSID:22D6f312-B0F6-11D0-94AB-0080C74C7E95" standby="Loading Windows Media Player components..." type="application/x-oleobject" codebase="http://activex.microsoft.com/activex/controls/mplayer/en/nsmp2inf.cab#Version=6,4,7,1112"> 
'                          <param name="filename" value="http://www.uccsimi.org/media/2011Christmas.wmv"> 
'                          <param name="Showcontrols" value="False"> 
'                          <param name="autoStart" value="True"> 
'                          <param name="Loop" value="True">
'                          <embed type="application/x-mplayer2" src="http://www.uccsimi.org/media/2011Christmas.wmv" name="MediaPlayer" width=240 height=180></embed> 
'                        </object>
'                        <object width="240" height="180">
'                          <param name="movie" value="http://vimeo.com/moogaloop.swf?clip_id=16389509&amp;server=vimeo.com&amp;show_title=1&amp;show_byline=1&amp;show_portrait=1&amp;color=&amp;fullscreen=1&amp;autoplay=0&amp;loop=0" />
'                          <param name="allowfullscreen" value="true" />
'                          <param name="allowscriptaccess" value="always" />
'                          <embed src="http://vimeo.com/moogaloop.swf?clip_id=16389509&amp;server=vimeo.com&amp;show_title=1&amp;show_byline=1&amp;show_portrait=1&amp;color=&amp;fullscreen=1&amp;autoplay=0&amp;loop=0" type="application/x-shockwave-flash" allowfullscreen="true" allowscriptaccess="always" width="240" height="180"></embed>
'                        </object>
'                        <object width="240" height="160">
'                          <param name="movie" value="http://www.youtube.com/v/8ZAQ2-hpQoo&hl=en_US&fs=1"></param>
'                          <param name="allowFullScreen" value="true"></param>
'                          <embed src="http://www.youtube.com/v/8ZAQ2-hpQoo&hl=en_US&fs=1" type="application/x-shockwave-flash" allowfullscreen="true" width="240" height="160"></embed>
'                        </object>
'                        <object width="200" height="160" >
'                          <param name="movie" value="http://www.youtube.com/v/YXn1HnqpxpE&amp;hl=en&amp;fs=1" />
'                          <param name="allowFullScreen" value="true" />
'                          <embed src="http://www.youtube.com/v/YXn1HnqpxpE&hl=en&amp;fs=1" type="application/x-shockwave-flash" allowfullscreen="true" width="200" height="160"></embed>
'                        </object>
%>
<!-- UCC Values Video -->
                        <iframe width="240" height="180" src="http://www.youtube.com/embed/4jxhbv0toog" frameborder="0" allowfullscreen></iframe>
                      </td>
                    </tr>
                  </table>
                  <span class="text">
<%
'                    <strong><span style="COLOR: #004080">Staff:</span></strong>
'                    <ul>
'                      <li><a href="/about/minister.htm">Rev. Dr. June C. Goudey, Minister</a>
'                      <li><a href="/spiritualresources/giffsmith.htm">Rev. Gifford (Giff) Smith, Adjunct Pastor for Spirituality and Recovery</a>
'                      <li>Rev. Earl William Greene, Minister Emeritus
'                      <li>Rev. Frank Johnson, Minister Emeritus
'                      <li>Nancy Pries, Moderator
'                      <li>Billie Dierking, Choir Director
'                      <li>Chris Neumann, Youth - K Thru Grade 5
'                      <li>Brenna Carl, Youth - Grade 6 Thru 12
'                      <li>Kathy Matthews, Church Secretary
'                      <br><small><i>Available Tue thru Fri, 12:00 Noon to 3:00 PM</i></small>
'                    </ul>
'                    &nbsp;<img align='center' height='200' width='180' src='/images/christmascandles.bmp'>&nbsp;
'                    &nbsp;<a href="http://www.ucc.org/100kforpeace"><img border="0" alt="Be one of the 100,000 to sign the petition to end the Iraq war!" src="/images/ucc_100kbanner200x180.jpg"></a>&nbsp;
'
'                    if FSO.FileExists(RootFolder+"\affirmation.txt") then
'                      <table height="100" border="1" width="220" cellPadding="7" cellSpacing="1" align="right">
'                        <tr>
'                          <td valign="top">
'                            <p align="center">
'                              'Read the monthly affirmation file
'                              ' Open the file
'                              Set f=FSO.OpenTextFile(RootFolder+"\affirmation.txt")
'                              ' First line of file is the title
'                              response.write "<span style='FONT-SIZE: 16px; COLOR: #FF0099'><strong>"&f.ReadLine&"</strong></span><br><br>"
'                              ' Second line of file is the body text
'                              response.write "<span style='FONT-SIZE: 12px; COLOR: #0000FF'>"&f.ReadLine&"</span><br>"
'                              if f.AtEndOfStream=false then
'                                ' Third line is any further link
'                                ReadLineLink=f.ReadLine
'                                if f.AtEndOfStream=false then
'                                  ' Fourth line is the text for the above link
'                                  ReadLineText=f.ReadLine
'                                end if
'                                response.write "<br><a href='"&ReadLineLink&"'><span style='FONT-SIZE: 12px; COLOR: #0000FF'>"
'                                if len(ReadLineText)>0 then
'                                  response.write ReadLineText
'                                else
'                                  response.write ReadLineLink
'                                end if
'                                response.write "</span></a><br>"
'                              end if
'                              ' Close the file
'                              f.Close
'                              Set f=Nothing
'                              <br>
'                            </p>
'                          </td>
'                        </tr>
'                      </table>
'                    End If
'                    <p><strong><span style="color: #004080">Our Covenant:</span></strong><br>We covenant to worship God; to live the good news of God&#8217;s love as revealed in the life and teachings of Jesus; to gather in faithful community to seek righteousness, justice, and peace; and to render loving service to all of God&#8217;s creation.</p>
%>
                    <p><center><strong><span style="color: #004080"><a href='/information/MembershipBrochure.pdf' target='_blank'>A Progressive Congregation in Word and Deed</a></span></strong><br>Since its inception in 1995, the United Church of Christ in Simi Valley has lived on the edge of time, one step ahead of other churches in Ventura County in its willingness to be a faith community walking its talk.</center>
                      <ul>
                        <li>In 1998 this congregation declared itself <a href="http://www.ucc.org/lgbt/ ">Open and Affirming (ONA)</a> of Gay, Lesbian, Bisexual, and Transgendered persons. We are still the only UCC church in Ventura County designated as ONA.
                        <li>In May 2006 we became the first and only church in Ventura County, across all denominations, to publicly declare itself a member of <a href="http://www.tcpc.org">The Center for Progressive Christianity (TCPC)</a>
                        <li>In July 2007, we became the first and only church in Ventura County to become a Sanctuary Congregation in <a href="http://www.newsanctuarymovement.org">The New Sanctuary Movement</a>.
                        <li>In June 2008, recognizing that county offices throughout the State of California began to issue licenses that recognize the legality of <a href="/information/weddinginfo.pdf">same-sex marriages</a>, we publicly announced that we welcome all couples with equal regard who seek to covenant together in the rite of marriage.
                      </ul>
                    Each of these steps says something about who we are and what we value.  We are challenged and inspired by the life and teachings of Jesus.  We engage in spiritual journeys, pilgrimages and processes that respect diversity and difference of opinion; and we practice an affirming faith that encourages involvement on behalf of those whose rights are threatened.  These are foundational values that shape our decisions and inform our choices.
                    <p><strong><span style="color: #004080">Faith and Fellowship:</span></strong><br>If you come what will you find?
                      <ul>
                        <li>People like you who reject theologies based on fear and guilt and who worship a loving non-judgmental God.
                        <li>An atmosphere of hospitality and grace nurtured by men and women who understand how painful it is to feel excluded by society, and especially family.
                        <li>An openness to children and a community dedicated to helping each child grow in love, where boys and girls learn to respect themselves and the diversity present in all of life.
                        <li>A community of believers able to respect different points of view while discussing complex and difficult questions of life and death.
                        <li>Opportunities to share your life with people of integrity and purpose who have the courage to work for justice and peace locally and globally.
                        <li>Experiences of love and affection, laughter and playfulness, joy and thanksgiving among people who believe that God&#8217;s love embraces everyone. Our promise to you is simple:  &#8220;Whoever you are, wherever you are on life&#8217;s journey, you are welcome here!&#8221;
                      </ul>
                    </p>
                    <p><strong><span style="color: #004080">Faith and Worship:</span></strong><br>Invitation to Communion: &#8220;It is time to let the Spirit have its way with us. This table is set, for sinners, lovers, dancers, and dreamers, the dying, divorced, suffering, and fearful. All who are weary and heavy laden, all who work for justice, all who seek resurrection.  Come. Be not afraid, for hope is real, love is true, and God is good. Come, let us keep the feast!&#8221;<br><br>The center of our common life is Sunday morning worship, where all ages join together for praise and thanksgiving. The Sacrament of Holy Communion follows a welcome table practice where all are welcome, children as well as adults. Communion is celebrated the first Sunday of every month. The United Church of Christ practices infant and adult Baptism. Baptisms occur in consultation with Dr. Goudey and are scheduled during Sunday worship.</p>
                    <p><strong><span style="color: #004080">Faith and Education:</span></strong><br>The United Church of Christ has a long and honored history of practicing a learned faith.  We say with pride that &#8220;our faith is over two thousand years old, but our thinking is not!&#8221; Classes are held each Sunday for children and youth. Every Monday morning at 10:00 A.M. several folks gather for Bible and Beyond, a contemporary discussion group open to all. Other Adult education courses, including a Lenten Study Series are scheduled throughout the year.</p>
                    <p align="center"><strong><span style="COLOR: #004080">You are welcome to visit and join our church family<br>where all find God's passionate love in action.</span></strong></p>
                    <p align="center"><b><i>There is a new way to search the Internet and raise money for UCC SIMI. Go to <a href="http://www.goodsearch.com">www.goodsearch.com</a> - select United Church of Christ in Simi Valley and search as you normally do! UCC Simi will receive money for every seach you make! Their site is powered by Yahoo!, so you'll get the same quality search results that you're used to. What's unique is that they have developed a way to direct money to your charity or school with every click.</i></b></p>
                  </span>
                </td>
              </tr>
              <tr><td><hr></td></tr>
              <tr><td><p align='center'><font face='arial' size='1'>Web and Email services provided by: <a href="http://www.summy.com">The Summy Family</a>.</td></tr>
            </table>
          </td>
        </tr>
      </table>
    </td>
  </tr>
</table>
</body>
<%'<!--#include virtual="/scripts/fallingsnow.js" -->%>
</html>
