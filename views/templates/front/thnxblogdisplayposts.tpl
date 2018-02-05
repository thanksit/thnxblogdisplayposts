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
{*
/**
 * 2007-2018 PrestaShop
 *
 * NOTICE OF LICENSE
 *
 * This source file is subject to the Academic Free License (AFL 3.0)
 * that is bundled with this package in the file LICENSE.txt.
 * It is also available through the world-wide-web at this URL:
 * http://opensource.org/licenses/afl-3.0.php
 * If you did not receive a copy of the license and are unable to
 * obtain it through the world-wide-web, please send an email
 * to license@prestashop.com so we can send you a copy immediately.
 *
 * DISCLAIMER
 *
 * Do not edit or add to this file if you wish to upgrade PrestaShop to newer
 * versions in the future. If you wish to customize PrestaShop for your
 * needs please refer to http://www.prestashop.com for more information.
 *
 * @author    PrestaShop SA <contact@prestashop.com>
 * @copyright 2007-2018 PrestaShop SA
 * @license   http://opensource.org/licenses/afl-3.0.php  Academic Free License (AFL 3.0)
 * International Registered Trademark & Property of PrestaShop SA
 */
*}
