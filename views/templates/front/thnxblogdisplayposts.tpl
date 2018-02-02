<div class="home_blog_post_area {$thnxbdp_designlayout}">
	<div class="home_blog_post">
		<div class="page_title_area {$thnx.home_title_style}">
			{if isset($thnxbdp_title)}
				<h3 class="page-heading">
					<em>{$thnxbdp_title}</em>
					<span class="page_title_shadow_text"><span>{$thnxbdp_title}</span></span>
					<span class="heading_carousel_arrow"></span>
				</h3>
			{/if}
			{if isset($thnxbdp_subtext)}
				<p class="page_subtitle d_none">{$thnxbdp_subtext}</p>
			{/if}
			<div class="heading-line d_none"><span></span></div>
		</div>
		
		{if $thnxbdp_designlayout == 'default'}
			{include file="module:thnxblogdisplayposts/views/templates/front/thnxblogdisplayposts_default.tpl"}
		{elseif $thnxbdp_designlayout == 'classic'}
			{include file="module:thnxblogdisplayposts/views/templates/front/thnxblogdisplayposts_classic.tpl"}
		{else}
			{include file="module:thnxblogdisplayposts/views/templates/front/thnxblogdisplayposts_general.tpl"}
		{/if}
		

		


	</div>
</div>
{* {addJsDef thnxbdp_numcolumn=$thnxbdp_numcolumn|intval} *}