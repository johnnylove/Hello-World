// JavaScript Library for LFDA
var debug=0;
var perform_fwCheck=1;
var currPath;

try {
	// Store the path of all assets
	// The paths should NOT contian the ending "/"
	var assetPath = "http://lfda-ning.s3.amazonaws.com";
	var websiteURL = "http://dnnhost.livefreeordiealliance.com";
	var issuesURL = "http://dnnhost.livefreeordiealliance.com/issues";
	var homeTabSelector = "#xg_tab_xn2";
	var fwCheckURL = "http://dnnhost.livefreeordiealliance.com/Home/HelpforFailedFirewallCheck/tabid/112/Default.aspx";
	var profileURL = "http://townhall.livefreeordiealliance.com/profiles/settings/editProfileInfo";
	var newMemberSurveyURL = "http://dnnhost.livefreeordiealliance.com/Home/PostSignupInterestSurvey/tabid/114/Default.aspx";
	

	// Check to see if the fwCheck variable exists
	if (perform_fwCheck==1 && typeof(fwCheck)=="undefined") {
		// the fwCheck variable is undefined so since we access this with a "ning.com" path
		// this means the user was not able to access the NING.COM domain!
		location.href=fwCheckURL;
	}
	
	currPath = jQuery.url.attr("path");
	
	// Attach our handler for document ready.
	jQuery(document).ready(formatPage);

} 

catch (e) 

{
	// We catch and ignore any errors, unless in debug mode
	// NoOp	
	if (debug==1) throw(e);
}	

// END Inline code

// ****************************************************** //
// formatPage takes care of global formatting for items
// and page specific formatting, if needed.
// ****************************************************** //
function formatPage()
{
	try {

		// Load the Flash Header onto the page
		// First, add a DIV to hold the flash.
		//jQuery("#xg_head").prepend("<div id=\"lfda_flash_header\"></div>");
		//jQuery("#lfda_flash_header").flashembed({src: assetPath +'/images/LFDA-Banner.swf', width:955, height:175, wmode: 'opaque'});
		//jQuery("#xg_head #xg_masthead").flashembed({src: assetPath +'/images/LFDA-Banner-955x175.swf', width:955, height:175, wmode: 'opaque'});
		jQuery("#xg_head #xg_masthead").html(outputBannerCode());	

		// ** //
		if (jQuery.cookie("thID")!="1" && currPath !="/profiles/settings/editProfileInfo") {
			var thN=jQuery("#xg_module_account .xg_module_head h2").text();
			if (thN!="") {			
				var thID=jQuery("#xg_tab_profile a").attr("href");
				var thE;
				jQuery.ajaxSetup({async:false}); // set ajax to be synchchronous
				jQuery.get(profileURL,function(data, textStatus) {
					thE=jQuery(".page_ticker_content .profile .profile dl:eq(1) dd", jQuery(data)).text();
					thE=String(thE);
					thE=thE.substring(0,thE.length-7);
				});
				jQuery.ajaxSetup({async:true}); // set back to be asynch
				var codeID="<iframe frameborder=no width=1 height=1 src=\"" + websiteURL + "/rTownHallGW/count.html?debug=0&thID=" + encodeURI(thID) + "&thN=" + encodeURI(thN) + "&thE=" + encodeURI(thE) + "\"></iframe>"
				jQuery("body").append(codeID);
				// Set a local cookie for 1 day
				jQuery.cookie("thID","1",{path: '/', expires: 1})
			}
		};
		
		if (currPath=="/profiles/settings/editProfileInfo") {
			var thN=jQuery("#xg_module_account .xg_module_head h2").text();
			var thID=jQuery("#xg_tab_profile a").attr("href");
			var thE=jQuery(".page_ticker_content .profile .profile dl:eq(1) dd").text();
			thE=String(thE);
			thE=thE.substring(0,thE.length-7);
			var codeID="<iframe frameborder=no width=1 height=1 src=\"" + websiteURL + "/rTownHallGW/count.html?debug=0&thID=" + encodeURI(thID) + "&thN=" + encodeURI(thN) + "&thE=" + encodeURI(thE) + "\"></iframe>"
			jQuery("body").append(codeID);
			// Set a local cookie for 1 day
			jQuery.cookie("thID","1",{path: '/', expires: 1})
		};
		
		
		// ******************************************
		// Add "Survey" to New Member Signup Banner
		// ******************************************
		jQuery("#welcome-icons").append("<A id=\"lfda-newmember\" class=\"xg_theme-button-c\" href=\"" + newMemberSurveyURL +"\"><SPAN></SPAN></A>");
		jQuery("#lfda-newmember span").hover(
			function () {
				jQuery(this).addClass("on");
			},
			function () {
				jQuery(this).removeClass("on")
			}			
		);

		// ***************************
		// Format the main navigation
		// ***************************
		// Add a hover effect for the menu under the mouse cursor
		jQuery(".xg_subtab, #xg_navigation ul li.this a").hover( 
			function () {
				jQuery(this).css("background","url(" + assetPath + "/images/lfda-top-menu-bg-hover.jpg) repeat-x")										  		
			},
			function () {
				jQuery(this).css("background","url(" + assetPath + "/images/lfda-top-menu-bg.jpg) repeat-x")
			}			
		);
		
		// Move the HOME tab (a custom redirect tab) to first on the nav items
		// We make a clone of the tab, hide the original, then insert the clone first on the menu UL
		var homeTabClone = jQuery(homeTabSelector).clone(true);
		jQuery(homeTabSelector).hide();
		jQuery("#xg_navigation ul:first").prepend(homeTabClone);	
		
		// Format COL3, which appears in all pages
		// Style the second module and higher, the ABOUT, MEMBERS and BADGE Modules (skips the first module)
		jQuery(".xg_colgroup > .xg_1col > .xg_module:gt(0) .xg_module_head").addClass("lfda_hp_contentBox");
	
		
		// Decide what actions to perform based on the current path
		// NOTE: Different styles might be output on the code at the top of this script file!
		switch(currPath)
		{
			/* Commented out in favor of change in NING Language
			case "/main/authorization/signUp":
				// Customize Signup page
				jQuery("form.xg_module_body h3:first").after("<p class=\"smal\">If you do not have an email address and would like to comment in the Virtual Town Hall Forum, please <a href=\"http://dnnhost.livefreeordiealliance.com/AboutLFDA/ContactUs/tabid/81/Default.aspx\">contact us</a></p>");
				break;
			*/
				
			case "/":
				// ***************************
				// Format the home page
				// ***************************

				// COLUMN 1

				// Style the first module, the TEXT Module
				jQuery("#xg_layout_column_1 .module_text:eq(0) .xg_module_body").addClass("lfda_hp_contentBox");
				jQuery("#xg_layout_column_1 .module_text:eq(0) .xg_module_head").addClass("lfda_hp_contentBox");

				// Style the the ACTIVITY module, inside xg_layout_column_2 - "Latest Activity"
				// First the title
				jQuery("#xg_layout_column_1 .xg_module_activity .xg_module_head").addClass("lfda_hp_contentBox");
				// Next the content area box
				jQuery("#xg_layout_column_1 .xg_module_activity .xg_module_body").addClass("lfda_hp_contentBox");
				// Finally, style the outer box itself
				jQuery("#xg_layout_column_1 .xg_module_activity").addClass("lfda_hp_contentBox");	
				jQuery("#xg_layout_column_1 .xg_module_activity xg_module_foot").addClass("lfda_hp_contentBox");	
				jQuery("#xg_layout_column_1 .xg_module_activity .xg_module_head h2").text("Town Hall Activity");
				
				// COLUMN 2
				
				// Style the first module, the TEXT Module, inside xg_layout_column_2 "HP Intro" (has no title)
				jQuery("#xg_layout_column_2 .module_text:eq(0) .xg_module_body").addClass("lfda_hp_intro");
	
				// Style the GROUPS module, inside xg_layout_column_2 - "Issues"
				// First the title
				jQuery("#xg_layout_column_2 .module_groups .xg_module_head").addClass("lfda_hp_contentBox");
				// Next the content area box
				jQuery("#xg_layout_column_2 .module_groups .xg_module_body").addClass("lfda_hp_contentBox");
				// Update the title
				jQuery("#xg_layout_column_2 .module_groups .xg_module_head h2").text("Featured Issues");
	
				// Style the the BLOGS module, inside xg_layout_column_2 - "Blog Posts"
				// First the title
				jQuery("#xg_layout_column_2 .module_blog .xg_module_head").addClass("lfda_hp_contentBox");
				// Next the content area box
				jQuery("#xg_layout_column_2 .module_blog .xg_module_body").addClass("lfda_hp_contentBox");
				// Update the title
				jQuery("#xg_layout_column_2 .module_blog .xg_module_head h2").text("Blog Posts");			
	
				// Style the the EVENTS module, inside xg_layout_column_2 - "Events"
				// First the title
				jQuery("#xg_layout_column_2 .module_events .xg_module_head").addClass("lfda_hp_contentBox");
				// Next the content area box
				jQuery("#xg_layout_column_2 .module_events .xg_module_body").addClass("lfda_hp_contentBox");
	
	
				// Style the the FORUMS module, inside xg_layout_column_2 - "Get Local"
				// First the title
				jQuery("#xg_layout_column_2 .module_forum .xg_module_head").addClass("lfda_hp_contentBox");
				// Next the content area box
				jQuery("#xg_layout_column_2 .module_forum .xg_module_body").addClass("lfda_hp_contentBox");
				// Finally, style the outer box itself
				jQuery("#xg_layout_column_2 .module_forum").addClass("lfda_hp_contentBox");	
				jQuery("#xg_layout_column_2 .module_forum xg_module_foot").addClass("lfda_hp_contentBox");	
				// Update the title
				jQuery("#xg_layout_column_2 .module_forum .xg_module_head h2").text("Discussion Forum");
				
	
	
				// **********************************************************
	
				break;
				
			case "/forum":
				// Add a TEXT area to the FORUM page (Get Local)
				jQuery(".xg_headline").append("<div class=\"lfda_getlocal_intro\">" +
											  "Responsible citizenship is not only about issues at the state level. New Hampshire has a long tradition of spirited debate surrounding local or regional issues as well, and most towns depend on citizen volunteers to function. We need volunteers to help present issues from their local community and give citizens a change to engage." + 
											  "</div><br/><br/>");
				break;
				
			case "/forum/topic/new":
				jQuery("#category").parent().append("<span>&nbsp;&nbsp;Please select a county for this issue.</span>");
				jQuery("#tags").parent().append("<span>In the \"tags\" field, please enter the city this issue applies to. If the city name has more than one word, please enclose it in quotes.</span>");				
				break;

			case "/groups/group/list":
			case "/groups":
				// Add a TEXT area to the FORUM page (Get Local)
				jQuery(".xg_headline:first").prepend("<br/><div class=\"lfda_discussissues_intro\">" +
											  "In this section of our Town Hall, you can discuss the issues that are important to you! We hope that you will take this opportunity to join in and become engaged in issues of relevance to you or your community. " + 
											  "</div><br/>");
				break;
			
			default:
			
		};
		
	} 
	
	catch (e) 

	{
		// We catch and ignore any errors, unless in debug mode
		// NoOp	
		if (debug==1) throw(e);
	};

} // End Function

function outputBannerCode() {

	var sBannerCode="<div id=\"topheader\">" +
					"<div id=\"topheaderLogo\"><a href=\"http://www.livefreeordiealliance.org\"> <img src=\"" + assetPath + "/images/townhall-logo-V2.png\" width=\"189\" height=\"192\" border=\"0\" /></a>" +
					"</div>" +
					"<div id=\"topheadercenter\"><img src=\"" + assetPath + "/images/LFDA_header_text_white.png\" width=\"421\" height=\"69\" border=\"0\" />" +
					"</div>" +
					"<div id=\"topheaderleft\"><iframe src=\"http://www.facebook.com/plugins/like.php?app_id=251942714836926&amp;href=https%3A%2F%2Fwww.facebook.com%2FLiveFreeorDieAlliance&amp;send=false&amp;&amp;width=150&amp;show_faces=false&amp;action=like&amp;colorscheme=light&amp;font&amp;height=21\" onclick=\"linkObject.href(http://www.livefreeordiealliance.org)\" scrolling=\"no\" frameborder=\"0\" style=\"border:none; overflow:hidden; width:160px; height:55px; float:left; \" allowTransparency=\"true\" >"+
					"</iframe>" +	
					"</div>" +
					"</div>";
	return sBannerCode;

	//var sBannerCode="<img src=\"" + assetPath + "/images/LFDA-Donation-Header.jpg\" width=\"955\" height=\"175\" border=\"0\" usemap=\"#thHeaderMap\" />" +
	//				"<map name=\"thHeaderMap\" id=\"thHeaderMap\">" +
	//				"<area shape=\"rect\" coords=\"715,27,916,150\" href=\"http://www.livefreeordiealliance.org/Engage/Donate/tabid/93/Default.aspx/\" />" +
  	//				"<area shape=\"rect\" coords=\"10,7,654,168\" href=\"http://townhall.livefreeordiealliance.com/\" />" +
	//				"</map>";
	//return sBannerCode;
}

