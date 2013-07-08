<div class="outer-center">
<div class="inner-center">
{foreach $training_list as $training}
        	<li>
    		<div class="trainingprogcon0">
    			{$training.training_order}
    		</div>
            <div class="trainingprogtitle">
            	{$training.name}
            </div>
    		</li>
{/foreach}
</div>
</div>
<div class="clear"></div>
