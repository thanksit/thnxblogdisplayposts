

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
