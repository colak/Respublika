<txp:output_form form="colak_pre_head" />
<txp:output_form form="colak_head" />

<txp:hide>==================-body-======================</txp:hide>

<body id="<txp:if_section name="">front<txp:else /><txp:section /></txp:if_section>" class="no-js">

<txp:output_form form="colak_access" />

<txp:hide>==================-header-======================</txp:hide>

<span class="anchor" id="landing">&nbsp;</span>

<txp:output_form form="colak_menu" />
<txp:output_form form="colak_header" />

<txp:hide>==================-front-======================</txp:hide>

<div id="content">
<div class="container_24">

<txp:output_form form="colak_slides" />

<div class="clear">&nbsp;</div>

<txp:if_search>
<div class="grid_24">
<txp:variable name="searchterm_minchars" value="3" />
<txp:variable name="searchterm_tooshort"><txp:php>global $variable, $q; echo ( strlen(trim($q)) < intval($variable['searchterm_minchars']) ) ? 'yes' : '';
</txp:php></txp:variable>
<txp:article pgonly="1" searchall="0" searchsticky="1" />
<txp:if_search_results>
<h3>You searched for <strong><txp:page_url type="q" /></strong>. <txp:search_result_count />.</h3>
<hr />
<txp:else />
<p>Your search for <strong><txp:page_url type="q" /></strong> did not match any documents.</p>
<h3>Suggestions:</h3>
<ul>
<li>Make sure all words are spelled correctly.</li>
<li>Try fewer keywords</li>
<li>Try different keywords</li>
<li>Use our menu links above. Parts of this site are not included in the search facility</li>
</ul>
</txp:if_search_results>
<txp:if_variable name="searchterm_tooshort" value="yes">
<p>Sorry, your search term <em><txp:search_term /></em> is too short. Please try again with a word with at least <txp:variable name="searchterm_minchars" /> letters.</p>
<txp:else />
<txp:article limit="999" searchall="0" />
</txp:if_variable>
<div class="clear">&nbsp;</div>
</div>
</txp:if_search>

<div class="clear">&nbsp;</div>


<txp:article_custom id="1" class="grid_18" wraptag="article">
<txp:body />
</txp:article_custom>


<div id="side" class="grid_6">
<txp:hide><txp:recent_articles /></txp:hide>
<div class="announce">
<h3>Announcements</h3>
<txp:php>echo file_get_contents('http://news.neme.org/?rah_external_output=neme-announce');</txp:php>
</div>
</div>

<div class="clear">&nbsp;</div>
</div></div>



<div id="projects">
<div class="container_24">

<txp:article_custom section="art-projects" limit="18" break="article">
<figure itemscope itemtype="http://schema.org/ImageObject" class="grid_8">
<txp:images>
<txp:permlink><txp:article_image thumbnail="1" /></txp:permlink>
<figcaption><h3><txp:title /></h3></figcaption>
</txp:images>
</figure>
</txp:article_custom>


<div class="clear">&nbsp;</div>
</div></div>
<div class="clear">&nbsp;</div>

<txp:output_form form="colak_foot" />
<txp:output_form form="javascripts" />
</body>
</html>
