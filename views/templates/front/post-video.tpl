

<div class="post_format_items {if isset($class) && $class}{$class}{/if}">
{foreach from=$videos item=videourl}
	<div class="item post_video">
		<div class="">
			<iframe class="" src="{if isset($videourl) && $videourl}{$videourl}{/if}" width="{if isset($width) && $width}{$width}{/if}" height="{if isset($height) && $height}{$height}{/if}"></iframe>
		</div>
	</div>
{/foreach}
</div>