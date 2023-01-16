#> chuz_items:item/techkit_revomachine_gun/gun/
#
# 銃モードのメイン処理
#
# @within function chuz_items:item/techkit_revomachine_gun/main

# 発砲
    # 腰だめ
        execute unless score @s[scores={ChuzItems.Crossbow=0..},predicate=!chuz_items:sneak] ChuzItems.CoolTime matches 0.. unless data storage chuz:context Item.Mainhand.tag.ChuzData{Ammo:0} run function chuz_items:item/techkit_revomachine_gun/gun/shot/setdata_normal
    
    # ADS
        execute unless score @s[scores={ChuzItems.Crossbow=0..},predicate=chuz_items:sneak] ChuzItems.CoolTime matches 0.. unless data storage chuz:context Item.Mainhand.tag.ChuzData{Ammo:0} run function chuz_items:item/techkit_revomachine_gun/gun/shot/setdata_ads

    # 弾の召喚部分
        execute unless score @s[scores={ChuzItems.BurstCount=1..}] ChuzItems.BurstRate matches 0.. unless data storage chuz:context Item.Mainhand.tag.ChuzData{Ammo:0} run function chuz_items:item/techkit_revomachine_gun/gun/shot/


# クールタイム処理
    scoreboard players remove @s[scores={ChuzItems.CoolTime=1..}] ChuzItems.CoolTime 1

# バースト間隔の処理
    scoreboard players remove @s[scores={ChuzItems.BurstRate=1..}] ChuzItems.BurstRate 1
    # リセット
        scoreboard players reset @s[scores={ChuzItems.BurstRate=..0}] ChuzItems.BurstRate
       
# ADS
    #構える
        execute if predicate chuz_items:sneak run scoreboard players add @s ChuzItems.Charge 1
        execute if score @s ChuzItems.Charge matches 1 run playsound minecraft:item.armor.equip_iron player @s ~ ~ ~ 2 1.5
    #戻す
        execute if score @s ChuzItems.Charge matches 1.. unless predicate chuz_items:sneak run playsound minecraft:item.armor.equip_iron player @s ~ ~ ~ 2 1.5
        execute if score @s ChuzItems.Charge matches 1.. unless predicate chuz_items:sneak run scoreboard players reset @s ChuzItems.Charge

# スコア設定されてなかったら設定
    execute unless score @s ChuzItems.Spread matches 0.. run scoreboard players set @s ChuzItems.Spread 40
    # 精度が悪化していく
        execute unless score @s[tag=!ChuzItems.Shot.ADS,tag=!ChuzItems.Shot.Normal] ChuzItems.Spread matches 40.. run scoreboard players add @s ChuzItems.Spread 1

    #scoreboard players reset @s[scores={ChuzItems.Spread=25}] ChuzItems.Spread

# 見た目
    # 通常時
        execute if entity @s run scoreboard players set $CMD Chuz.Temporary 9
    # ADS
        execute if entity @s[tag=!ChuzItems.Shot.Normal] if predicate chuz_items:sneak run scoreboard players set $CMD Chuz.Temporary 10

# リコイルの収まりが戻っていく
    #scoreboard players remove @s[scores={ChuzItems.Recoil.Change=1..}] ChuzItems.Recoil.Change 1
    scoreboard players reset @s[scores={ChuzItems.Recoil.Change=0}] ChuzItems.Recoil.Change

# リセット
    execute if score @s ChuzItems.CoolTime matches 0 run function chuz_items:item/cooltime_end

# 更新
    execute in overworld run function chuz_items:item/replaceitem

# 残弾0ならリロード開始
    execute if entity @s[scores={ChuzItems.Crossbow=0..}] if data storage chuz:context Item.Mainhand.tag.ChuzData{Ammo:0} run function chuz_items:item/techkit_revomachine_gun/reload/start
