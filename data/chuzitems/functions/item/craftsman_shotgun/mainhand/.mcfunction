#> chuzitems:item/craftsman_shotgun/mainhand/
#
# メイン処理
#
# @within function chuzitems:item/craftsman_shotgun/mainhand/trigger

# メイン処理
    execute if data storage chuz:context Item.Mainhand.tag.ChuzData{ItemMode:Standby} run function chuzitems:item/craftsman_shotgun/mainhand/main
# リロード
    execute if data storage chuz:context Item.Mainhand.tag.ChuzData{ItemMode:Reload} run function chuzitems:item/craftsman_shotgun/mainhand/reload/