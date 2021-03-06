<div class="row home_blog_post_inner carousel">
		{foreach from=$thnxblogposts item=thnxblgpst}
			<article class="blog_post col-xs-12 col-sm-12">
				<div class="blog_post_content row">
					<div class="blog_post_content_top col-sm-12 col-md-7 col-lg-6 clearfix">
						<div class="post_thumbnail">
							{if $thnxblgpst.post_format == 'video'}
								{assign var="postvideos" value=','|explode:$thnxblgpst.video}
								{include file="module:thnxblogdisplayposts/views/templates/front/post-video.tpl" videos=$postvideos width='270' height="270" class="{if $postvideos|@count > 1 }carousel{/if}"}
							{elseif $thnxblgpst.post_format == 'audio'}
								{assign var="postaudio" value=','|explode:$thnxblgpst.audio}
								{include file="module:thnxblogdisplayposts/views/templates/front/post-audio.tpl" audios=$postaudio width='270' height="270" class="{if $postaudio|@count > 1 }carousel{/if}"}
							{elseif $thnxblgpst.post_format == 'gallery'}
								{include file="module:thnxblogdisplayposts/views/templates/front/post-gallery.tpl" gallery=$thnxblgpst.gallery_lists imagesize="home_default" class="{if $thnxblgpst.gallery_lists|@count > 1 }carousel{/if}"}
							{else}
								{* <img class="img-responsive" src="{$thnxblgpst.post_img_home_default}" alt="{$thnxblgpst.post_title}"> *}
								<div class="post_thumbnail_img" style="background:url({$thnxblgpst.post_img_home_default}) no-repeat scroll center center/ cover; min-height: 460px;">
									
								</div>

								<div class="blog_mask">
									<div class="blog_mask_content">
										<a class="thumbnail_lightbox" href="{$thnxblgpst.post_img_large}">
											<i class="icon-expand"></i>
										</a>
									</div>
								</div>
							{/if}
						</div>
						
						<div class="blog_post_content_top_left">
							<h3 class="post_title"><a href="{$thnxblgpst.link}">{$thnxblgpst.post_title}</a></h3>
							<div class="post_meta clearfix">
								
								<p class="meta_author">
									<i class="icon-user"></i>
									<span>{$thnxblgpst.post_author_arr.firstname} {$thnxblgpst.post_author_arr.lastname}</span>
								</p>
								<p class="meta_date">
									<i class="icon-calendar"></i>
									{$thnxblgpst.post_date|date_format:"%m/%d/%Y"}
								</p>
								{* <p class="meta_category">
									<i class="icon-tag"></i>
										<a href="{$thnxblgpst.category_default_arr.link}">{$thnxblgpst.category_default_arr.name}</a>
								</p> *}
							</div>
						</div>

					</div>
					<div class="post_content col-sm-12 col-md-5 col-lg-6">

						<div class="post_description">
							{$thnxblgpst.post_content|escape:'html5':'UTF-8'|truncate:500:'...'}

							{* {if isset($thnxblgpst.post_excerpt) && !empty($thnxblgpst.post_excerpt)}
								<p>{$thnxblgpst.post_excerpt|truncate:500:'...'|escape:'html':'UTF-8'}</p>
							{else}
								<p>{$thnxblgpst.post_content|truncate:500:'...'|escape:'html':'UTF-8'}</p>
							{/if} *}
						</div>
						<div class="read_more_btn">
							<a class="btn btn-default more" href="{$thnxblgpst.link}">{l s='Read More' mod='thnxblogdisplayposts'}</a>
						</div>
					</div>
				</div>
			</article>
		{/foreach}
		</div> <!-- home_blog_post_inner -->