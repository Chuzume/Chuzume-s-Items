#> chuzitems:item/weapon/shotgun/shot/
#
# 
#
# @within function chuzitems:item/weapon/shotgun/main

# 俺が実行者だ
    tag @s add This
    
# リコイル
    execute if score $Gamerule.Recoil Chuz.Rule matches 1 unless entity @s[x_rotation=80..90] run data modify storage yv:gun Recoil set value {Magnitude:[0.0f,-5.0f],Smooth:5,WaitTick:0}
    execute if score $Gamerule.Recoil Chuz.Rule matches 1 unless entity @s[x_rotation=80..90] run function yv_recoil:

# 発砲
    execute positioned ^ ^-0.2 ^1.0 run function chuzitems:item/weapon/shotgun/shot/sound

# 弾を召喚
    particle smoke ^-0.25 ^ ^0.7 0 0 0 0.05 10
    execute positioned ^-0.25 ^ ^ summon marker run function chuzitems:item/weapon/shotgun/shot/init
    execute positioned ^-0.25 ^ ^ summon marker run function chuzitems:item/weapon/shotgun/shot/init
    execute positioned ^-0.25 ^ ^ summon marker run function chuzitems:item/weapon/shotgun/shot/init
    execute positioned ^-0.25 ^ ^ summon marker run function chuzitems:item/weapon/shotgun/shot/init
    execute positioned ^-0.25 ^ ^ summon marker run function chuzitems:item/weapon/shotgun/shot/init
    execute positioned ^-0.25 ^ ^ summon marker run function chuzitems:item/weapon/shotgun/shot/init
    execute positioned ^-0.25 ^ ^ summon marker run function chuzitems:item/weapon/shotgun/shot/init

# 弾が減る
    execute in overworld run function chuzitems:item/consume_ammo

# 下向きに撃つと飛び上がる
    execute if entity @s[predicate=!chuzitems:sneak,x_rotation=80..90] run summon minecraft:area_effect_cloud ~ ~ ~ {Radius:0f,Duration:6,Age:4,Effects:[{Id:25,Amplifier:15b,Duration:6,ShowParticles:0b}]}

# リロードを阻害
    scoreboard players reset @s ChuzItems.Ready
    scoreboard players reset @s ChuzItems.Reload

# もう実行者ではない
    tag @s remove This
