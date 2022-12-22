# 俺が実行者だ
    tag @s add Chuz.This
    
# 発砲
    playsound minecraft:entity.generic.explode player @a ~ ~ ~ 3 2
    playsound minecraft:entity.firework_rocket.blast player @a ~ ~ ~ 3 0.7
    playsound minecraft:entity.firework_rocket.blast player @a ~ ~ ~ 3 1
    playsound minecraft:entity.blaze.hurt player @a ~ ~ ~ 2 1.5
    playsound minecraft:block.bell.use player @a ~ ~ ~ 2 1.7

# 弾を召喚
    execute anchored eyes run particle smoke ^-0.25 ^ ^0.7 0 0 0 0.05 10
    function chuz_items:item/shotgun/fire/fire
    function chuz_items:item/shotgun/fire/fire
    function chuz_items:item/shotgun/fire/fire
    function chuz_items:item/shotgun/fire/fire
    function chuz_items:item/shotgun/fire/fire
    function chuz_items:item/shotgun/fire/fire
    function chuz_items:item/shotgun/fire/fire

# 弾が減る
    execute in overworld run function chuz_items:item/consume_ammo

# 上向きに撃つと落下する
    #execute if entity @s[predicate=!chuz_items:sneak,x_rotation=-90..-80] run effect give @s minecraft:levitation 1 200 true

# 下向きに撃つと飛び上がる
    execute if entity @s[predicate=!chuz_items:sneak,x_rotation=80..90] run summon minecraft:area_effect_cloud ~ ~ ~ {Radius:0f,Duration:6,Age:4,Effects:[{Id:25b,Amplifier:15b,Duration:6,ShowParticles:0b}]}

# もう実行者ではない
    tag @s remove Chuz.This

# リロードを阻害
    scoreboard players reset @s S.Rif_Ready
    scoreboard players reset @s S.Rif_Reload