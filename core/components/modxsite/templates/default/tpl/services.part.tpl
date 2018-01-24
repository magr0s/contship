{extends file="basepage.tpl"}

{block name=page}
    <div id="page-service-part">
        <div class="row">
            <div class="col l9">
                <div class="content-wrapper">
                    {field name=content}
                </div>
            </div>
            <div class="col l3">
                <div class="navigation">
                    {include file="views/menus/services.tpl" title="[[%contship.menu_countries_title]]"}
                </div>
            </div>
        </div>
    </div>
{/block}