#> chuzitems:item/craftsman_launcher/mainhand/standby/shot/charge0
#
# 
#
# @within function chuzitems:item/craftsman_launcher/mainhand/standby/

# 俺が実行者だ
    tag @s add This
    
# 演出
    execute positioned ^ ^-0.2 ^1.0 run playsound chuzume:launcher_shot player @a ~ ~ ~ 3 1.1
    execute positioned ^ ^-0.2 ^1.0 run playsound minecraft:entity.firework_rocket.blast player @a ~ ~ ~ 4 0.7
    execute positioned ^ ^-0.2 ^1.0 run playsound minecraft:entity.firework_rocket.blast player @a ~ ~ ~ 4 1
    execute positioned ^ ^-0.2 ^1.0 run playsound minecraft:entity.blaze.hurt player @a ~ ~ ~ 3 1.5

# 弾を召喚
    function chuzitems:item/craftsman_launcher/mainhand/standby/shot/summon

# 弾丸にInit処理
    scoreboard players set @e[type=item,tag=Chuz.Init,distance=..100,limit=1] Chuz.Speed 10
    execute as @e[type=item,tag=Chuz.Init,distance=..100,limit=1] at @s run function chuzitems:entity/grenade/init

# 弾が減る
    execute in overworld run function chuzitems:item/consume_ammo

# もう実行者ではない
    tag @s remove This

# リロードを阻害
    scoreboard players reset @s ChuzItems.Ready
    scoreboard players reset @s ChuzItems.Reload
    scoreboard players reset @s ChuzItems.Charge