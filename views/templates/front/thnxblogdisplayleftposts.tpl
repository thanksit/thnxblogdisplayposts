

{if isset($thnxbdp_title)}{$thnxbdp_title}{/if}
{if isset($thnxbdp_subtext)}{$thnxbdp_subtext}{/if}
{if isset($thnxblogposts)}

{foreach from=$thnxblogposts item=thnxblgpst}
		{$thnxblgpst.id_thnxposts}<br>
	    <a href="{$thnxblgpst.link}">link</a><br>
	    {$thnxblgpst.post_author}<br>
	    {* <pre>{$thnxblgpst.post_author_arr}</pre> *}<br>
	    {$thnxblgpst.post_author_arr.firstname}<br>
	    {$thnxblgpst.post_author_arr.lastname}<br>
	    {$thnxblgpst.post_date}<br>
	    {$thnxblgpst.comment_status}<br>
	    {$thnxblgpst.post_password}<br>
	    {$thnxblgpst.post_modified}<br>
	    {$thnxblgpst.post_parent}<br>
	    {$thnxblgpst.category_default}<br>
	    {* <pre>{$thnxblgpst.category_default_arr}</pre> *}<br>
	    {$thnxblgpst.category_default_arr.id}<br>
	    {$thnxblgpst.category_default_arr.name}<br>
	    {$thnxblgpst.category_default_arr.link_rewrite}<br>
	    {$thnxblgpst.category_default_arr.title}<br>
	    {$thnxblgpst.category_default_arr.link}<br>
	    {$thnxblgpst.post_type}<br>
	    {$thnxblgpst.post_format}<br>
	    {$thnxblgpst.post_img}<br>
	    {$thnxblgpst.post_img_small}<br>
	    {$thnxblgpst.post_img_medium}<br>
	    {$thnxblgpst.post_img_large}<br>
	    {$thnxblgpst.video}<br>
	    {$thnxblgpst.audio}<br>
	    {$thnxblgpst.gallery} <br>
	    {$thnxblgpst.related_products}<br>
	    {$thnxblgpst.comment_count}<br>
	    {$thnxblgpst.position}<br>
	    {$thnxblgpst.active}<br>
	    {$thnxblgpst.id_lang}<br>
	    {$thnxblgpst.post_title}<br>
	    {$thnxblgpst.meta_title}<br>
	    {$thnxblgpst.meta_description}<br>
	    {$thnxblgpst.meta_keyword}<br>
	    {$thnxblgpst.post_content}<br>
	    {$thnxblgpst.post_excerpt}<br>
	    {$thnxblgpst.link_rewrite}<br>
	    {$thnxblgpst.id_shop}<br>
{/foreach}

{/if}