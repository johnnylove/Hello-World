<%@ Control language="vb" CodeBehind="~/admin/Skins/skin.vb" AutoEventWireup="false" Explicit="True" Inherits="DotNetNuke.UI.Skins.Skin" %>
<%@ Register TagPrefix="dnn" TagName="MENU" Src="~/Admin/Skins/solpartmenu.ascx" %>
<%@ Register TagPrefix="dnn" TagName="Breadcrumb" Src="~/Admin/Skins/breadcrumb.ascx" %>
<!-- ************************************************************************************************** -->
<!-- Start: General Javascript Code (These lines must be included in every site.) -->
<!-- ************************************************************************************************** -->
<!-- jQuery is now included by the DNN engine, but that version causes some problems with GetLocal so overwriting for now -->
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.3.2/jquery.min.js" type="text/javascript"></script>

<!-- Other jQuery related -->
<script src="<%= SkinPath %>js/tools.flashembed-1.0.4.min.js" type="text/javascript"></script>
<script src="<%= SkinPath %>js/jquery.cookie.js" type="text/javascript"></script>
<script type="text/javascript">
$(function() {
        var COOKIE_NAME = 'splash-page-cookie';
        $go = $.cookie(COOKIE_NAME);
        if ($go == null) {
                $.cookie(COOKIE_NAME, 'test', { path: '/', expires: 3600 });
                window.location = "/SplashPage/tabid/2038/Default.aspx"
        }
        else {
        }
});
</script>


<script src="<%= SkinPath %>js/jquery.timers-1.1.3.js" type="text/javascript"></script>
<!-- FaceBox Support -->
<link href="<%= SkinPath %>facebox/facebox.css" media="screen" rel="stylesheet" type="text/css" />
<script src="<%= SkinPath %>facebox/facebox.js" type="text/javascript"></script>
<!-- ScrollTo Support -->
<script src="<%= SkinPath %>js/jquery.scrollTo-min.js" type="text/javascript"></script>

<script src="<%= SkinPath %>js/jquery.query-2.1.6.js.js" type="text/javascript"></script>
<script src="<%= SkinPath %>js/jqbrowser-compressed.js" type="text/javascript"></script>
<script src="<%= SkinPath %>js/jquery.url.packed.js" type="text/javascript"></script>

<!-- PNG image fix for IE6 -->
<script language="javascript" type="text/javascript" src="<%= SkinPath %>pngFix.txt"></script>
<!-- CSS Browser Selector -->
<script language="javascript" type="text/javascript" src="<%= SkinPath %>css_browser_selector.txt"></script>


<!-- ************************************************************************************************** -->
<!-- End: General Javascript Code (These lines must be included in every site.) -->
<!-- ************************************************************************************************** -->

<link rel="shortcut icon" href="/Portals/0/favicon.ico" type="image/x-icon">
<link rel="icon" href="/Portals/0/favicon.ico" type="image/x-icon">

<!--  Start Clicky Tracking Code-->
<script src="//static.getclicky.com/js" type="text/javascript"></script>
<script type="text/javascript">    try { clicky.init(66464242); } catch (e) { }</script>
 <noscript><p><img alt="Clicky" width="1" height="1" src="//in.getclicky.com/66464242ns.gif" /></p></noscript>
<!--  End Clicky Tracking Code-->

<!-- Start Sponsor Image Rotation Code -->
    <script language="javascript" src="/Portals/0/Skins/LFDA-Skins/js/dw_event.js" type="text/javascript"></script> 
    <script language="javascript" src="/Portals/0/Skins/LFDA-Skins/js/dw_rotator.js" type="text/javascript"></script> 
    <script language="javascript" src="/Portals/0/Skins/LFDA-Skins/js/dw_rotator_aux.js" type="text/javascript"></script>
    <script type="text/javascript">
        var rotator1 = {
            path: "/Portals/0/Skins/LFDA-Skins/images/",
            speed: 3000, // default is 4500
            id: "r1",
            bTrans: false, // ie win filter
            bMouse: true, // pause/resume
            images: ["Lindt-logo.png", "BAE-Systems.png"],
            actions: ["http://www.lindtusa.com", "http://www.baesystems.com/index.htm"],
            title: ["Lindt Chocolatier", "BAE Systems"]

        }

        var rotator2 = {
            path: "/Portals/0/Skins/LFDA-Skins/images/",
            speed: 4500, // default is 4500
            id: "r2",
            bTrans: false, // ie win filter
            bMouse: true, // pause/resume
            images: ["Stony-field.png", "Thermo-Fisher-Scientific.png", "Stony-field.png"],
            actions: ["http://www.stonyfield.com", "http://www.thermofisher.com/global/en/home.asp", "http://www.stonyfield.com"],
            title: ["Stony Field Organic", "BAE Systems", "Thermo Fisher Scientific", "Stony Field Organic"]

        }


        function initRotator() {
            dw_Rotator.setup(rotator1, rotator2);
        }

        dw_Event.add(window, 'load', initRotator);
    </script>
<!-- End Sponsor Image Rotation Code -->

<!-- Start Twitter Code -->


<script language="javascript" src="/Portals/0/Skins/LFDA-Skins/js/jquery.tweet.js" type="text/javascript"></script> 
<script type='text/javascript'>
    jQuery(function($) {
        $(".tweet").tweet({
            username: "nhlfda",
            join_text: "auto",
            avatar_size: 32,
            count: 4,
            auto_join_text_default: "we said,",
            auto_join_text_ed: "we",
            auto_join_text_ing: "we were",
            auto_join_text_reply: "we replied to",
            auto_join_text_url: "we were checking out",
            loading_text: "loading tweets..."
        });
    });
</script> 

<link href="/Portals/0/Skins/LFDA-Skins/jquery.tweet.css" media="all" rel="stylesheet" type="text/css" />

<!-- End Twitter Code -->


<div id="bodyWrapper">

<div id="headerWrapper"> </div>
    <div id="siteWrapper_HS">
        <noscript>
            <div class="noScriptMessage">
            This website requires JavaScript to function correctly. 
            Please enable JavaScript on your browser in order to enjoy the best experience on this website.
            </div>
        </noscript>
        
       
        <div id="facebook_and_twitter">
            <div id="topLoginHeader">
				<iframe src="http://www.facebook.com/plugins/like.php?app_id=251942714836926&amp;href=https%3A%2F%2Fwww.facebook.com%2FLiveFreeorDieAlliance&amp;send=false&amp;&amp;width=150&amp;show_faces=false&amp;action=like&amp;colorscheme=light&amp;font&amp;height=21" onclick="linkObject.href('http://www.livefreeordiealliance.org')" scrolling="no" frameborder="0" style="border:none; overflow:hidden; width:255px; height:30px; float:left; " allowTransparency="true" ></iframe> 
				<p style="color:#000000; ">
					<a style="text-align: center; color:#000000; padding:2px 0px 2px 0px; font-weight: bold; font-size: larger;" href="http://townhall.livefreeordiealliance.org/main/authorization/signIn?target=http%3A//townhall.livefreeordiealliance.com/" onclick="pageTracker._trackEvent('Top Buttons', 'Signin Click', 'signin');">Log In</a>
					|
					<a style="text-align: center; color:#000000; padding:2px 0px 2px 0px;" href="http://townhall.livefreeordiealliance.org/main/authorization/signUp?" onclick="pageTracker._trackEvent('Top Buttons', 'Signup Click', 'signup');">Not a Member? Click Here to Join</a> 
				  
				</p>
            </div>
		    <div id="topSearchHeader">
		        <span id="span_topSearchHeader">
				    <input name="searchPhrase" type="text" id="Text1" onFocus="return searchPhrase_onFocus(event)" onBlur="return searchPhrase_onBlur(event)" onkeypress="return searchPhrase_onKey(event)" value="Search" size="19" maxlength="100" tabindex="1"/>
				    <input type="button" name="searchGo" id="button_search" value="go" accesskey="g" tabindex="2" onClick="return searchPhrase_onClick(event)" />
				    <script language="javascript" type="text/javascript" src="<%= SkinPath %>js/lfda-google-search-button-handler.js"></script>
			    </span>
			</div>            
        </div>
        <div id="siteContainer">
            <div id="siteContainerInner">
                <div id="headerSection">
                                        <!-- Page Header and Nav -->
                    <div id="topHeaderAndNav">
                        <div id="topHeader" style="background-color:#558ed3">

							<div id="header-left">
							    <div id="header-left-left">
							        <div id="logo-townhall">
							            <a href="http://www.livefreeordiealliance.org"><img src="/Portals/0/Skins/LFDA-Skins/images/townhall-logo-V2.png" alt="Live Free or Die Alliance Town Hall Logo "/></a>
							        </div>
							    </div>
							    
							    <div id="header-left-right">
							        <div id="logo-lfdatext">
							            <img src="/Portals/0/Skins/LFDA-Skins/images/LFDA_header_text_white.png" alt="Live Free or Die Alliance New Hampshire's Virtual Town Hall" />
							        </div>
							        <div style="clear:both;"></div> 
							        
							        <div id="sponsor-thank-you">A Special Thank You to the Following Corporate Sponsors</div>
							         <div id="sponsor-box-blueBG">
							            <p>							                
							                <table>
							                <tr>
							                   <td >
							                        <a href="http://www.lindtusa.com" target="_blank"><img id="r1" src="/Portals/0/Skins/LFDA-Skins/images/Lindt-logo.png" width="160px" height="60" alt="Lindt Chocolatier" title="Lindt Chocolatier" /></a>
							                   </td>
							                   <td >
							                        <a href="http://www.nedelta.com" target="_blank"><img src="/Portals/0/Skins/LFDA-Skins/images/Delta-Dental.png" width="160px" height="60" alt="North East Delta Dental" title="North East Delta Dental" /></a>
							                   </td>
							                    <td >
							                        <a href="http://www.stonyfield.com" target="_blank"><img id="r2" src="/Portals/0/Skins/LFDA-Skins/images/Stony-field.png" width="160px" height="60" alt="Stonyfield Farm" title="Stonyfield Farm" /></a>
							                    </td>
							                    <td >
							                        <a href="http://www.wm.com" target="_blank"><img src="/Portals/0/Skins/LFDA-Skins/images/Waste-Management.png" width="160px" height="60" alt="Waste Management" title="Waste Management" /></a>
							                    </td>
							                </tr>
							                </table>
							            </p>
							        </div>
							        
							        
							    </div>
                                
								<div style="clear:both;"></div> 

							</div>
							<div id="header-right" >
								<div id="topHeader_GetInvolved" >
									<span >	
										<a href="http://townhall.livefreeordiealliance.org/forum"><img src="/Portals/0/Skins/LFDA-Skins/images/Get-Engaged-button.png" alt="Get Engaged - Join Our Online Discussion - Live Free or Die Alliance" /></a>
									</span>
									
								</div>
								<div id="top_signup_signin_Header">
								    <span >	
										<a href="http://www.livefreeordiealliance.org/Engage/Donate/tabid/93/Default.aspx"><img src="/Portals/0/Skins/LFDA-Skins/images/donate.png" alt="Donate to the Live Free or Die Alliance" /></a>
									</span>
									<!-- <iframe src="http://www.facebook.com/plugins/like.php?app_id=251942714836926&amp;href=https%3A%2F%2Fwww.facebook.com%2FLiveFreeorDieAlliance&amp;send=false&amp;&amp;width=150&amp;show_faces=false&amp;action=like&amp;colorscheme=light&amp;font&amp;height=21" onclick="linkObject.href('http://www.livefreeordiealliance.org')" scrolling="no" frameborder="0" style="border:none; overflow:hidden; width:160px; height:55px; float:left; " allowTransparency="true" ></iframe> -->
								</div>
																

								
								<div style="clear:both;"></div> 
								

								
							</div>
						</div>
                        
                        <!-- Begin Main Nav -->
                        <div id="navWrapper_HS">
                            <div id="mainNav_HS">
                                <!-- START - MENU CODE (Part 2) -->
                                <!-- Note: To use a dot as a separator instead of the "|", replace Separator="|" with Separator="&nbsp;&middot;&nbsp;" below in the dnn:MENU. -->
                                <asp:panel id="adminmenu" runat="server" visible="false">
                                    <dnn:MENU runat="server" id="dnnMENUAdmin" display="horizontal" menualignment="Justify" menubarcssclass="MainMenuBar" menuitemcssclass="MainMenuItem" menuitemselcssclass="MainMenuItemSelected" menubreakcssclass="MainMenu_MenuBreak" menuiconcssclass="MainMenu_MenuIcon" submenucssclass="MainMenu_SubMenu" UseRootBreadCrumbArrow="false" UseArrows="false" Separator="|" separatorcssclass="SeparatorCSS" />
                                </asp:panel>
                                <asp:panel id="normalmenu" runat="server">
                                    <dnn:MENU runat="server" id="dnnMENUNormal" display="horizontal" menualignment="Justify" menubarcssclass="MainMenuBar" menuitemcssclass="MainMenuItem" menuitemselcssclass="MainMenuItemSelected" menubreakcssclass="MainMenu_MenuBreak" menuiconcssclass="MainMenu_MenuIcon" submenucssclass="MainMenu_SubMenu" UseRootBreadCrumbArrow="false" UseArrows="false" Separator="|" separatorcssclass="SeparatorCSS" RootOnly="false"/>
                                </asp:panel>
                                <!-- END - MENU CODE (Part 2) -->
                                <div class="clear"></div>
                            </div>
                        </div>
                        <!-- End Main Nav -->
                    </div>        
                </div>

                <!--<div class="clear"></div>-->

                <div id="mainWrapper">
                    <div id="mainWrapperInner">
                        <div id="pageContent">
                            <!-- <div id="ContentPane" runat="server"></div> -->
                                 <!--
                                 <div id="toptwoColumns">
                                   
                                 
                                  </div>
                                  -->
                           <div id="leftColumn">
                               <div id="top_left_Column" runat="server"></div>

                                <div id="LeftFeature" runat="server"></div>
                                
                                <div id="RightFeature" runat="server"></div>

                                <div class="clear"></div>
                                
                                 <div id="PageFeature" runat="server">
                                </div>

                                <div class="clear"></div>
                                <div id="PageOtherContent" runat="server">
                                </div>
                            </div>
                            
                            <div id="rightColumn">  
                                
                                

                                <div id="RightTopContent" runat="server">
                                </div>

                                <div class="clear"></div>
                                
                                <div id="RightBottomContent" runat="server">
                                </div>
                                
                            </div>
                            
                            
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="clear"></div>
        <div id="siteContainerBottom"></div>
        
        <div class="clear"></div>
        
        <div id="PageFooter" runat="server">
        </div>
        
        <div class="clear"></div>
        
    </div>
</div>

<!-- Google Analytics Code -->
<script type="text/javascript">
    var gaJsHost = (("https:" == document.location.protocol) ? "https://ssl." : "http://www.");
    document.write(unescape("%3Cscript src='" + gaJsHost + "google-analytics.com/ga.js' type='text/javascript'%3E%3C/script%3E"));
</script>
<script type="text/javascript">
    try {
        var pageTracker = _gat._getTracker("UA-11088348-1");
        pageTracker._trackPageview();
    } catch (err) { }
</script>

<script type="text/javascript">
    // JavaScript Library for LFDA

    // Attach our handler for document ready.
    jQuery.noConflict();
    jQuery(document).ready(formatPage);
	
	// Create a page level variable to serve as FLAG for the homePage
	homePageFlag=false;
	// Detect the home page TabID to indicate to JS that the current page is the HomePage
	if (<%=PortalSettings.HomeTabId%>==<%=PortalSettings.ActiveTab.TabId%>)
		homePageFlag=true;

    // formatPage takes care of global formatting for items
    // and page specific formatting, if needed.
    function formatPage() {
        // Load the Flash Header onto the page
        //jQuery("#topHeader").flashembed({ src: '/Portals/0/user_images/LFDA-Banner-900x165.swf', width: 900, height: 165, wmode: 'opaque' });

		//var iBrowserHeightBias=0;
		//if (jQuery.browser.msie()) iBrowserHeightBias=20;
		
        // Set the height of the left and right feature columns to be the tallest of the two
        //if (jQuery("#dnn_LeftFeature .containerBoxInner").height() > jQuery("#dnn_RightFeature .containerBoxInner").height()) {
        //    jQuery("#dnn_RightFeature .containerBoxInner").height(jQuery("#dnn_LeftFeature .containerBoxInner").height() + iBrowserHeightBias);
      //  } else {
       //     jQuery("#dnn_LeftFeature .containerBoxInner").height(jQuery("#dnn_RightFeature .containerBoxInner").height() + iBrowserHeightBias);
        //}
		
		// Set the height of the EVENT FEED items correctly, if present
		jQuery("#pageFeed .wrap").each(function(){
			var oNewsItem=jQuery(this);
			oNewsItem.height(jQuery(".clist",oNewsItem).height());
		});
		
		// Fix feed hyperlinks for IE (margins of the first link need to be eliminated since
		// ie does not support "first-child" in CSS
		if (jQuery.browser.msie()) {
			jQuery(".clist a:first-child").css("margin","0px 2px 0px 0px;")
			jQuery(".postbody a:first-child ").css("margin","0px 2px 0px 0px;")
		}
		
		/* Comment out because it won't work without restructuring the skin
		// Hide the PageIntro if there is no content
		// Note, all modules must be removed from this pane (not just empty) for it to be hidden!
		if (jQuery("#dnn_PageIntro div.Normal").length == 0)
		{
			jQuery("#dnn_PageIntro").height(1);
		}
		*/
		
		// Find all iframes and pass user information, if we have any
		var thE=jQuery.cookie("thE");
		var thN=jQuery.cookie("thN");
		if (thE!="" | thN!="") {
			var aFrames=jQuery("iframe")
			jQuery.each(aFrames, function(){
				var newSRC=jQuery(this).attr("src");
				newSRC+="?thE=" + encodeURI(thE) + "&thN=" + encodeURI(thN);
				jQuery(this).attr("src",newSRC);	  
			});
		}
		
		// Enable the Height Limit on whatever content blocks use that container
		limitHeight(300, "#dnn_PageFeature .heightLimited", ".containerBoxInner", ".containerBoxMore", ".containerBoxPopUp");		
		
		// Enable all the FaceBox elements
		jQuery.facebox.settings.opacity = 0.5;
		jQuery.facebox.settings.loadingImage = '/portals/0/skins/lfda-skins/facebox/loading.gif';
		jQuery.facebox.settings.closeImage = '/portals/0/skins/lfda-skins/facebox/closelabel.gif';
		jQuery('a[rel*=facebox]').facebox();	
		
    }

	function limitHeight(iHeightLimit, sSelectorContainer, sSelectorToLimit, sSelectorForMore, sSelectorForPopUp ) {
	
		//*********************************************************************************************************
		//* Updated 2011-05-28 by E.A.Soto 
		//* Change Summary: Added a wrapping EACH function to allow for more than one container in a given ZONE
		//* to be hiehght limited.
		//*********************************************************************************************************
		
		// Loop through each heigh limited area individually
		jQuery(sSelectorContainer).each(function(index) {
			// Save the "each" node to use as CONTEXT for subsequent jQuery operations
			var oSelectorContainer=this;
			
			// Check the size of the given area and limit if necessary		
			var iHeight = jQuery(sSelectorToLimit, oSelectorContainer).height();
			if (iHeight > iHeightLimit) {
				// if it's over limit, we will make it smaller and add navigational elements
				jQuery(sSelectorToLimit, oSelectorContainer).height(iHeightLimit).css("overflow","hidden");
				// Show the "pop up" and attach a click
				if (sSelectorForPopUp != "") {
					jQuery(sSelectorForPopUp, oSelectorContainer).show().click(function(){
						// Get the parent of the parent to the clicked object (which
						// contains the desired content - the entire container with title)
						// and make a clone wince we will modify some formatting
						var oContent=jQuery(this).parent().parent().parent().clone(); 
						// Now make it wide!
						jQuery("div:first",oContent).css("width","800");
						// And allow it to have overflow scroll bars
						jQuery(".containerBoxInner",oContent).css("overflow","auto");
						// Allow for the height of the content
						jQuery(".containerBoxInner",oContent).css("height","400");
						// Fix the width by adding a class we defined in CSS
						jQuery(".containerBoxFeature",oContent).addClass("PopUp");
						// Hide the "growth" controls
						jQuery(".containerBoxBottomBar",oContent).hide();
						jQuery(".containerBoxMore",oContent).hide();
						jQuery(".containerBoxPopUp",oContent).hide();
						// Display the content in a FaceBox
						jQuery.facebox(oContent.html());
						// Scroll to the top in case a previous window had been scrolled down
						jQuery("#facebox .containerBoxInner").scrollTo(0);
					});
				};
				// Show the "read more" and attach a click
				if (sSelectorForMore != "") {
					jQuery(sSelectorForMore, oSelectorContainer).show().click(function(){
						// Figure out how much space the content needs
						// debugger;
						var iNeededSize=jQuery(sSelectorToLimit +" .Normal", oSelectorContainer).height();
						// For IE, we need to add 20 pixels to the "needed".
						if (jQuery.browser.msie()) iNeededSize+=20;
						// Figure out the object above the CLICK
						var oPrev = jQuery(this).parent().siblings(":first");
						// See what state it's in
						if (oPrev.height()<=iHeightLimit) {
							// It's at limit, so we need to animate it to full size
							oPrev.animate({height:iNeededSize});
							jQuery(this).text("Show Less");
						} else {
							// It's already larger, so we need to animate it to reduced size
							oPrev.animate({height:iHeightLimit});
							jQuery(this).text("Show More");
						}
					});
				}
			
			} else {
				// The container is not taller than the limit, 
				// so we set it to the limit.
				jQuery(oSelectorContainer).height(iHeightLimit)
			
			}
		
		
		});
		

	// End Function
	}
	
</script>

