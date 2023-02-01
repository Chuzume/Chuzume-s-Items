# 落下速度リセットして打ち上げる
    tp @s @s
    execute if entity @s[type=player] run summon minecraft:area_effect_cloud ~ ~ ~ {Radius:0f,Duration:6,Age:4,Effects:[{Id:25b,Amplifier:16b,Duration:6,ShowParticles:0b}]}
    execute if entity @s[type=!player] run data modify entity @s Motion[1] set value 0.7

# 後ろに飛んでいく
    scoreboard players set @s Chuz.Speed 15
    function chuzitems:entity/motion_xz
    scoreboard players reset @s Chuz.Speed