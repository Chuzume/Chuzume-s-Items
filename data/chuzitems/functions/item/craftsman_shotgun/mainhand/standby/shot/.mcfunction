#> chuzitems:item/craftsman_shotgun/mainhand/standby/shot/
#
# 
#
# @within function chuzitems:item/craftsman_shotgun/mainhand/standby/

# 俺が実行者だ
    tag @s add This
    
# リコイル
    execute if score $Gamerule.Recoil Chuz.Rule matches 1 unless entity @s[x_rotation=80..90] run data modify storage yv:gun Recoil set value {Magnitude:[0.0f,-5.0f],Smooth:5,WaitTick:0}
    execute if score $Gamerule.Recoil Chuz.Rule matches 1 unless entity @s[x_rotation=80..90] run function yv_recoil:

# 発砲音
    execute positioned ^ ^-0.2 ^1.0 run function chuzitems:item/craftsman_shotgun/mainhand/standby/shot/sound

# 弾を召喚
    particle smoke ^-0.25 ^ ^0.7 0 0 0 0.05 10
    execute positioned ^-0.25 ^ ^ summon marker run function chuzitems:item/craftsman_shotgun/mainhand/standby/shot/init
    execute positioned ^-0.25 ^ ^ summon marker run function chuzitems:item/craftsman_shotgun/mainhand/standby/shot/init
    execute positioned ^-0.25 ^ ^ summon marker run function chuzitems:item/craftsman_shotgun/mainhand/standby/shot/init
    execute positioned ^-0.25 ^ ^ summon marker run function chuzitems:item/craftsman_shotgun/mainhand/standby/shot/init
    execute positioned ^-0.25 ^ ^ summon marker run function chuzitems:item/craftsman_shotgun/mainhand/standby/shot/init
    execute positioned ^-0.25 ^ ^ summon marker run function chuzitems:item/craftsman_shotgun/mainhand/standby/shot/init
    execute positioned ^-0.25 ^ ^ summon marker run function chuzitems:item/craftsman_shotgun/mainhand/standby/shot/init

# 弾が減る
    execute in overworld run function chuzitems:item/consume_ammo

# 下向きに撃つと飛び上がる
    #execute if entity @s[predicate=!chuzitems:sneak,x_rotation=60..90] rotated ~ ~ run function chuzitems:item/craftsman_shotgun/mainhand/standby/shot/jump

# スニーク撃ちで反動がすごい
    execute if predicate chuzitems:sneak run function chuzitems:item/craftsman_shotgun/mainhand/standby/shot/jump


# リロードを阻害
    scoreboard players reset @s ChuzItems.Ready
    scoreboard players reset @s ChuzItems.Reload

# もう実行者ではない
    tag @s remove This