<section id="blog" class="grey lighten-3 section">
    <div class="container">
        <div class="h3 text-bold center-align __title">[[%contship.blog_title? &topic=`contship` &namespace=`modxsite` &language=`[[++cultureKey]]`]]</div>
        <div class="row grid">

            {assign var=params value=[
                'parent'    => 5
                , 'limit'   => 3
                , 'dir'     => 'desc'
            ]}

            {processor action='site/web/resources/getdata' ns='modxsite' params=$params assign=result}

            {if $result.success}
                {$i = 0}
                {foreach $result.object as $object}
                    {$i = $i +1}
                    <div class="col cell s24 m12 {($i >= 3) ? 'only-large': ''} xl8">
                        <div class="__item">
                            <a class="__image" href="{$object.uri}">
                                {assign var=thumb value=[
                                    "input" => $object.tvs.image.value,
                                    "options" => "&w=420&h=280&zc=1&aoe=0&far=0"
                                ]}

                                <img alt="{$object.pagetitle}" class="responsive-img" src="{snippet name="phpthumbon" params=$thumb}">
                            </a>
                            <div class="__detail">
                                <div class="h5 __title"><a href="{$object.uri}">{$object.pagetitle}</a></div>
                                <p>{$object.introtext}</p>
                            </div>
                        </div>
                    </div>
                {/foreach}
             {/if}
        </div>
        {include file="views/buttons/view_all.tpl" link=$modx->makeUrl(5) title="[[%contship.all_blog? &topic=`contship` &namespace=`modxsite` &language=`[[++cultureKey]]`]]"}
    </div>
</section>