<div id="featured" class="row">

    <div class="h3 text-bold center-align __title">Наши преимущества</div>

    {assign var=params value=[
    'where' => [
    'id'    => 3
    ]
    , 'current' => true
    ]}

    {processor action="site/web/resources/getdata" ns="modxsite" params=$params assign=result}

    {if $tvData = $result.object.tvs.featured.value|json_decode:true}
        {foreach $tvData as $data}
            <div class="col s12 m12 l6">
                <div class="fea-panel">
                {include file="views/featured/item.tpl" data=$data}
                </div>
            </div>
        {/foreach}
    {/if}
</div>