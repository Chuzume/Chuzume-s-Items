#> chuzitems:item/techkit_revomachine_gun/mainhand/reload/start
#
# 
#
# @within function chuzitems:common/reload/start

# 俺が実行者だ
    tag @s add This

# アイテム変更
    loot replace entity @s weapon.mainhand loot chuzitems:item/techkit_revomachine_gun/reload

# 演出
    execute positioned ^ ^-0.2 ^1.0 run playsound minecraft:entity.arrow.shoot player @a ~ ~ ~ 2 0.5
    execute positioned ^ ^-0.2 ^1.0 run playsound minecraft:entity.witch.throw player @a ~ ~ ~ 2 0.7

# 銃を投げる
    summon armor_stand ^ ^ ^ {Silent:1b,Small:1b,Invisible:1b,Tags:["Chuz.Projectile",ChuzItems.Projectile.ThrownGun,"Chuz.UUIDAttack","Chuz.Init"],Pose:{Head:[0f,10.0f,0.1f]},DisabledSlots:4144959,ArmorItems:[{id:"minecraft:structure_void",Count:1b},{},{},{id:"minecraft:crossbow",Count:1b,tag:{CustomModelData:9}}]}
    # 拡散用マーカー召喚
        summon marker ^ ^ ^10 {Tags:["SpreadMarker"]}

# 弾丸にInit処理
    execute as @e[type=armor_stand,tag=Chuz.Init,distance=..100,limit=1] at @s run function chuzitems:entity/revo_machinegun_thrown/init

# 射撃のポーズ戻す
    tag @s remove ChuzItems.Shot.ADS
    tag @s remove ChuzItems.Shot.Normal

# スコアとタグ調整
    scoreboard players reset @s ChuzItems.CoolTime
    scoreboard players reset @s ChuzItems.Spread
    scoreboard players reset @s ChuzItems.Recoil
    scoreboard players reset @s ChuzItems.Recoil.Change
    tag @s remove ChuzItems.ReloadStart

# もう実行者ではない
    tag @s remove This