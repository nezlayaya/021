<?php
$theme_options = $registry->get('theme_options');
$config = $registry->get('config');
?>
<div class="box box-categories box-with-categories">
    <!--<div class="box-heading"><?php if($theme_options->get( 'category_text', $config->get( 'config_language_id' ) ) != '') { echo html_entity_decode($theme_options->get( 'category_text', $config->get( 'config_language_id' ) )); } else { echo 'Categories'; } ?></div>-->
    <div class="strip-line"></div>
    <div class="box-content box-information" style="min-height: 488px;">
        <div class="box-information">
            <ul class="nav">
                <?php $nom = 0; $ber = 'h'; $ccc = 'c'?>
                <?php $i = 0; foreach ($categories as $category) { $i++; ?>
                <li>
                    <h3 headerindex="<?php echo $nom.$ber; ?>" class="headerbar subs ">
                    <?php if ($category['category_id'] == $category_id) { ?>
                    <a href="<?=$category['href'];?>"
                       class="active"><?php echo $category['name']; ?></a>
                    <?php } else { ?>
                    <a href="<?=$category['href'];?>"><?php echo $category['name']; ?></a>
                    <?php } ?>
                    </h3>
                    <?php if ($category['children']) { ?>
                    <ul class="submenu nav" contentindex="<?php echo $nom.$ccc; ?>">
                        <?php foreach ($category['children'] as $child) { ?>
                        <li>
                            <?php if ($child['category_id'] == $child_id) { ?>
                            <a href="<?php echo $child['href']; ?>" class="active">
                                - <?php echo $child['name']; ?></a>
                            <?php } else { ?>
                            <a href="<?php echo $child['href']; ?>"> - <?php echo $child['name']; ?></a>
                            <?php } ?>
                        </li>
                        <?php } ?>
                    </ul>
                    <?php } ?>
                </li>
                <?php } ?>
            </ul>
        </div>
    </div>
</div>
<script type="text/javascript" src="/catalog/view/javascript/ddaccordion.js"></script>
<script type="text/javascript">
    ddaccordion.init({
        headerclass: "headerbar", //Shared CSS class name of headers group
        contentclass: "submenu", //Shared CSS class name of contents group
        revealtype: "mouseover", //Reveal content when user clicks or onmouseover the header? Valid value: "click" or "mouseover
        mouseoverdelay: 200, //if revealtype="mouseover", set delay in milliseconds before header expands onMouseover
        collapseprev: 1, //Collapse previous content (so only one open at any time)? true/false
        defaultexpanded: [0], //index of content(s) open by default [index1, index2, etc] [] denotes no content
        onemustopen: 1, //Specify whether at least one header should be open always (so never all headers closed)
        animatedefault: false, //Should contents open by default be animated into view?
        persiststate: 1, //persist state of opened contents within browser session?
        toggleclass: ["", "selected"], //Two CSS classes to be applied to the header when it's collapsed and expanded, respectively ["class1", "class2"]
        togglehtml: ["", "", ""], //Additional HTML added to the header when it's collapsed and expanded, respectively  ["position", "html1", "html2"] (see docs)
        animatespeed: 300, //speed of animation: integer in milliseconds (ie: 200), or keywords "fast", "normal", or "slow"
        oninit:function(headers, expandedindices){ //custom code to run when headers have initalized
            //do nothing
        },
        onopenclose:function(header, index, state, isuseractivated){ //custom code to run whenever a header is opened or closed
            //do nothing
        }
    })
</script>