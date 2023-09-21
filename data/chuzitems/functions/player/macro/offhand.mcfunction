#> chuzitems:player/macro/offhand
#
# 
#
# @within function chuzitems:player/macro/

# オフハンド実行
    $function chuzitems:item/$(ItemID)/offhand/$(ItemMode)/
    
# スワップアクションが可能ならこちらも実行
    $execute if data storage chuz:context Item.Inventory[{Slot:-106b}].tag.ChuzData.SwapAction run function chuzitems:item/$(ItemID)/swap_action/
    #$say オフハンド:$(offhand)