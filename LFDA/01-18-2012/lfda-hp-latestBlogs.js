// Adds a feed for the "Latest Blogs"

// Output a "visible" zone for the feed (we do this one "in place" so it's placed where the JS executes");
document.write('<div id="hpLatestBlogs"></div>');

jQuery(document).ready(function(){
	// Add a "raw zone" to the end of the BODY tag to store the raw data coming from the feed.
	jQuery('body').append('<div id="hpLatestBlogsRaw" style="display: none;"></div>')
	// Now, get the feed and do some processing once i's done.
	jQuery("#hpLatestBlogsRaw").load("/rAjaxGW/rget.aspx?action=ning-blog-featured", function(response, status, xhr) {
		
		// Prepare a varialble to hold the "working" object;
		var firstFewItems;
		// Get the first few blog items from the "raw" zone (where we just read content into)
		firstFewItems=jQuery("#hpLatestBlogsRaw div.xg_module_body").filter(":lt(3)");
		// Now, inside this limited jq object, do some prcessing
		jQuery(".postbody img",firstFewItems).remove();
		// Now, inside this limited jq object, remove the "by lines"
		jQuery("p.small",firstFewItems).remove();
		// Wrap the anchor in it's own DIV so it falls to it's own line
		jQuery("a.xj_expandable:contains(Continue)",firstFewItems).wrap("<div class='readMore'></div>")
		// Replace the "Continue" link with the text "Read More"
		jQuery("div.readMore a.xj_expandable",firstFewItems).html("Read More&#46;&#46;&#46;&nbsp;");
		jQuery("div.readMore",firstFewItems).prepend("<br/>");
		// Now, move the ReadMore out of the "content" of the blog
		jQuery(firstFewItems).each(function(){
			jQuery(this).append(jQuery("div.readMore",jQuery(this)));
		})
		// Now that postbody is "only the article content", we want to remove inconvenient elements
		// like <br/> and <p></p> <a></a>.
		// Remove the BRs
		jQuery(".postbody br",firstFewItems).replaceWith("&nbsp;");
		
		// Remove the blockquote
		jQuery(".postbody blockquote",firstFewItems).replaceWith("");
		
		
		// To remove <p> and <a> (which contains objects) we first have to extract the content (the html)
		// and append it to the parent. 
		jQuery(".postbody p, .postbody a",firstFewItems).each(function(){
			jQuery(this).parent().append(jQuery(this).html(),"&nbsp;");
		});
		// Now, we can remove the P objects (their content has been appended to the parent.)
		jQuery(".postbody p, .postbody a",firstFewItems).remove()
		
		// Limit the content of the article to 200 characters.
		jQuery(".postbody",firstFewItems).each(function(){
			var sArticleHtml = jQuery(this).html();
			sArticleHtml=sArticleHtml.substring(0,195);
			jQuery(this).html(sArticleHtml,"...");
		})
		
		// Wrap a convenience SPAN around the blog title
		jQuery("h3.title span.xg_avatar",firstFewItems).next().each(function(){
			jQuery(this).wrap("<span class='blogTitle'></span>");
			//jQuery(this).append("<div style='clear:both'></div>");
		})
		
		// Since we float the items inside the H3, we need to add a clear float to avoid issues
		jQuery("h3.title").append('<div style="clear:both;"></div>');
		
		
		
		// Finally, set the visible zone to the modified jq Object
		jQuery(firstFewItems).appendTo("#hpLatestBlogs");

	});
	
});
