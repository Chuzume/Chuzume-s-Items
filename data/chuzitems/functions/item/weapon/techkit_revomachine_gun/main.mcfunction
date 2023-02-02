#> chuzitems:item/weapon/techkit_revomachine_gun/main
#
# 武器モードチェック
#
# @within function chuzitems:player/tick

# 通常モード
    execute if data storage chuz:context Item.Mainhand.tag.ChuzData{ItemMode:Standby} run function chuzitems:item/weapon/techkit_revomachine_gun/gun/
  
# リロード
    execute if data storage chuz:context Item.Mainhand.tag.ChuzData{ItemMode:Reloading} run function chuzitems:item/weapon/techkit_revomachine_gun/reload/reloading
  
# リロード開始タグを付与されたらリロード開始
    execute if entity @s[tag=ChuzItems.ReloadStart] run function chuzitems:item/weapon/techkit_revomachine_gun/reload/start