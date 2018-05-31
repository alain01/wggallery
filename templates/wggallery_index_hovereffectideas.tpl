<{include file='db:wggallery_header.tpl'}>

<link href="<{$wggallery_url}>/assets/albumtypes/hovereffectideas/<{$css_pgwslideshow}>.css" rel="stylesheet">

<{if $albums}>
	<div class='panel panel-<{$panel_type}>'>
		<div class='panel-heading wgg-cats-header'><{$index_alb_title}></div>
		<div class='panel-body'>
            
			<{foreach name=album item=album from=$albums}>
                <{if $album.newrow}><div class="grid"><{/if}>
                <{include file='db:wggallery_albumitem_hovereffectideas.tpl' album=$album}>
                <{if $album.linebreak}>
                    </div>
                    <div class='clear'>&nbsp;</div>
                    <{if !$smarty.foreach.album.last}><div class="grid"><{/if}>
                <{/if}>
			<{/foreach}>
            
			<div class='clear'>&nbsp;</div>
			<{if $pagenav_albums}>
				<div class='xo-pagenav floatright'><{$pagenav_albums}></div>
				<div class='clear spacer'></div>
			<{/if}>
		</div>
	</div>
<{/if}>
<{if $categories}>
	<div class='panel panel-<{$panel_type}>'>
		<div class='panel-heading wgg-cats-header'><{$index_cats_title}></div>
		<div class='panel-body'>
			<{foreach item=category from=$categories}>
                <{if $wggallery_nbcolc == 4}>
                    <div class='col-xs-12 col-sm-3 wgg-album-panel'>
                        <{include file='db:wggallery_categoryitem_2.tpl' category=$category}>
                    </div>
                    <{if $album.linebreak}>
                        <div class='clear'>&nbsp;</div>
                    <{/if}>
                <{elseif $wggallery_nbcolc == 3}>
                    <div class='col-xs-12 col-sm-4 wgg-album-panel'>
                        <{include file='db:wggallery_categoryitem_2.tpl' category=$category}>
                    </div>
                    <{if $album.linebreak}>
                        <div class='clear'>&nbsp;</div>
                    <{/if}>
                <{elseif $wggallery_nbcolc == 2}>
                    <div class='col-xs-12 col-sm-6 wgg-album-panel'>
                        <{include file='db:wggallery_categoryitem_2.tpl' category=$category}>
                    </div>
                    <{if $album.linebreak}>
                        <div class='clear'>&nbsp;</div>
                    <{/if}>
                <{else}>
                    <{include file='db:wggallery_categoryitem_1.tpl' category=$category}>
                <{/if}>
			<{/foreach}>
			<div class='clear'>&nbsp;</div>
			<{if $pagenav_cats}>
				<div class='xo-pagenav floatright'><{$pagenav_cats}></div>
				<div class='clear spacer'></div>
			<{/if}>
		</div>
	</div>
<{/if}>

<{if $alb_for_id}>
	<div class='clear'>&nbsp;</div>
	<div class='wgg-goback'>
		<a class='btn btn-default wgg-btn' href='index.php?op=list&amp;subm_id=<{$subm_id}>' title='<{$smarty.const._CO_WGGALLERY_BACK}>'>
			<img class='wgg-btn-icon' src='<{$wggallery_icon_url_16}>/back.png' alt='<{$smarty.const._CO_WGGALLERY_BACK}>' /><{$smarty.const._CO_WGGALLERY_BACK}>
		</a>
	</div>
<{/if}>	
<div class='clear'>&nbsp;</div>

<{include file='db:wggallery_footer.tpl'}>