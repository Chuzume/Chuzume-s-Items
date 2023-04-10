#> chuzitems:item/weapon/rod_of_darkness_laser/trigger
#
# 
#
# @within tag/function chuzitems:item/tick

# メイン処理
    execute if data storage chuz:context Item.Mainhand.tag.ChuzData{ItemID:Rod_of_Darkness,ItemMode:Laser} run function chuzitems:item/weapon/rod_of_darkness_laser/main