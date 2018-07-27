{extends file="basepage.tpl"}

{block name=page}
    <div id="page-seo">
        <div class="row">
            <div class="col s12 l18 leftcontent">
                <div class="content-wrapper">
                    {field name=content}
                </div>
            </div>
            <div class="col s12 l6 rightcontent">
                <div class="navigation">
                        {include file="views/menus/template.tpl" exclude="-{field name="id"}" parents="{field name="parent"}" title="Услуги" template="11"}
                        {include file="views/menus/template.tpl" parents="{field name="parent"}" title="Товары" template="12"}

                    {if $tv = {snippet name="getTvParent" params=['id'   => {field name="id"}, 'tv'   => "serviceCountriesMenu"]}}
                        {include file="views/menus/aside.tpl" data=explode('||', $tv) title="География перевозок"}
                    {/if}
                    {$tvData = {tv name=seoPages}|json_decode:true}
                    {foreach $tvData as $data}
                        <div class="h5 bold __title">{$data.title}</div>

                        {$links = $data.links|json_decode:true}

                        <ul class="child-menu">
                            {foreach $links as $link}
                                {if $page = $modx->getObject('modResource', $link.target)}
                                    <li>
                                        <a href="{$page->uri}">
                                            <i class="material-icons">chevron_right</i>
                                            {$link.title|default:$page->title}
                                        </a>
                                    </li>
                                {/if}
                            {/foreach}
                        </ul>

                    {/foreach}
                </div>
            </div>
        </div>
    </div>
{/block}