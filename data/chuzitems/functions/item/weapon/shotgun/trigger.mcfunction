#> chuzitems:item/weapon/shotgun/trigger
#
# 
#
# @within tag/function chuzitems:item/tick

# メイン処理
    execute if data storage chuz:context Item.Mainhand.tag.ChuzData{ItemID:Craftsman_Shotgun} run function chuzitems:item/weapon/shotgun/main
# リロード
    execute if data storage chuz:context Item.Mainhand.tag.ChuzData{ItemID:Craftsman_Shotgun_Reload} run function chuzitems:item/weapon/shotgun/reload/main