<div class="home_blog_post_area {$thnxbdp_designlayout} {$hookName}">
	<div class="home_blog_post">
		<div class="page_title_area">
			{if isset($thnxbdp_title)}
				<h3 class="page-heading">
					<em>{$thnxbdp_title}</em>
					<span class="heading_carousel_arrow"></span>
				</h3>

				{* <a href="{thnxblog::thnxBlogLink()}"><h1 class="h1 products-section-title text-uppercase ">
				    {$thnxbdp_title}
				</h1></a> *}
			{/if}
			{if isset($thnxbdp_subtext)}
				<p class="page_subtitle">{$thnxbdp_subtext}</p>
			{/if}
			<div class="heading-line d_none"><span></span></div>
		</div>
		<div class="row home_blog_post_inner carousel">
		{if (isset($thnxblogposts) && !empty($thnxblogposts))}
			{foreach from=$thnxblogposts item=thnxblgpst}
				<article class="blog_post col-xs-12 col-sm-4">
					<div class="blog_post_content">
						<div class="blog_post_content_top">
							<div class="post_thumbnail">
								{if $thnxblgpst.post_format == 'video'}
									{assign var="postvideos" value=','|explode:$thnxblgpst.video}
									{if $postvideos|@count > 1 }
										{include file="module:thnxblogdisplayposts/views/templates/front/post-video.tpl" videos=$postvideos width='570' height="316" class="carousel"}
									{else}
										{include file="module:thnxblogdisplayposts/views/templates/front/post-video.tpl" videos=$postvideos width='570' height="316" class=""}
									{/if}
								{elseif $thnxblgpst.post_format == 'audio'}
									{assign var="postaudio" value=','|explode:$thnxblgpst.audio}
									{if $postaudio|@count > 1 }
										{include file="module:thnxblogdisplayposts/views/templates/front/post-audio.tpl" audios=$postaudio width='570' height="316" class="carousel"}
									{else}
										{include file="module:thnxblogdisplayposts/views/templates/front/post-audio.tpl" audios=$postaudio width='570' height="316" class=""}
									{/if}
								{elseif $thnxblgpst.post_format == 'gallery'}
									{if $thnxblgpst.gallery_lists|@count > 1 }
										{include file="module:thnxblogdisplayposts/views/templates/front/post-gallery.tpl" gallery=$thnxblgpst.gallery_lists imagesize="home_default" class="carousel"}
									{else}
										{include file="module:thnxblogdisplayposts/views/templates/front/post-gallery.tpl" gallery=$thnxblgpst.gallery_lists imagesize="home_default" class=""}
									{/if}
								{else}
									<img class="thnxblog_img img-responsive" src="{$thnxblgpst.post_img_home_default}" alt="{$thnxblgpst.post_title}">
									<div class="blog_mask">
										<div class="blog_mask_content">
											<a class="thumbnail_lightbox" href="{$thnxblgpst.post_img_large}">
												<i class="icon_plus"></i>
											</a>
										</div>
									</div>
								{/if}
							</div>
						</div>
						<div class="blog_post_content_bottom">
							<h3 class="post_title"><a href="{$thnxblgpst.link}">{$thnxblgpst.post_title}</a></h3>
							<div class="post_meta clearfix">
								<p class="meta_author">
									{* <i class="icon-user"></i> *}
									{l s='Posted by' mod='thnxblogdisplayposts'}
									<span>{$thnxblgpst.post_author_arr.firstname} {$thnxblgpst.post_author_arr.lastname}</span>
								</p>
								<p class="meta_date">
									{* <i class="icon-calendar"></i> *}
									{$thnxblgpst.post_date|date_format:"%b %d, %Y"}
								</p>
								
								<p class="meta_category">
									{* <i class="icon-tag"></i> *}
									{l s='IN' mod='thnxblogdisplayposts'}
									<a href="{$thnxblgpst.category_default_arr.link}">{$thnxblgpst.category_default_arr.name}</a>
								</p>
							</div>
							
							<div class="post_content">
								{if isset($thnxblgpst.post_excerpt) && !empty($thnxblgpst.post_excerpt)}
									<p>{$thnxblgpst.post_excerpt|truncate:100:' ...'|escape:'html':'UTF-8'}</p>
								{else}
									<p>{$thnxblgpst.post_content|truncate:100:' ...'|escape:'html':'UTF-8'}</p>
								{/if}
							</div>
							<div class="content_more">
								<a class="read_more" href="{$thnxblgpst.link}">{l s='Continue' mod='thnxblogdisplayposts'}</a>
							</div>
						</div>
					</div>
				</article>
			{/foreach}
		{else}
			<p>{l s='No Blog Post Found' mod='thnxblogdisplayposts'}</p>
		{/if}
		</div>
	</div>
</div>