#> chuzitems:entity/photon_glaive/tick/ricochet/
#
# 反射処理まとめたやつ
#
# @within function chuzitems:entity/photon_glaive/tick/

# 反射テスト
    execute rotated as @s positioned 0.0 0.0 0.0 positioned ^ ^ ^2 positioned 0.0 ~ ~ positioned ^ ^ ^-1 facing 0.0 0.0 0.0 positioned as @s positioned ^ ^ ^0.25 rotated as @s unless block ^ ^ ^0.25 #chuzitems:no_collision facing entity @s feet positioned ^ ^ ^0.5 rotated as @s if block ^ ^ ^-0.25 #chuzitems:no_collision facing entity @s feet facing ^ ^ ^-1 positioned as @s run function chuzitems:entity/photon_glaive/tick/ricochet/hit_wall
    execute at @s positioned ^ ^ ^0.25 rotated ~180 ~ unless block ^ ^ ^0.25 #chuzitems:no_collision at @s positioned ^ ^ ^-0.25 rotated ~180 ~ if block ^ ^ ^-0.25 #chuzitems:no_collision facing ^ ^ ^-1 positioned as @s run function chuzitems:entity/photon_glaive/tick/ricochet/hit_wall
    execute rotated as @s positioned 0.0 0.0 0.0 positioned ^ ^ ^2 positioned ~ ~ 0.0 positioned ^ ^ ^-1 facing 0.0 0.0 0.0 positioned as @s positioned ^ ^ ^0.25 rotated as @s unless block ^ ^ ^0.25 #chuzitems:no_collision facing entity @s feet positioned ^ ^ ^0.5 rotated as @s if block ^ ^ ^-0.25 #chuzitems:no_collision facing entity @s feet facing ^ ^ ^-1 positioned as @s run function chuzitems:entity/photon_glaive/tick/ricochet/hit_wall

# 角テスト
    execute if entity @s[tag=!ChuzItems.Reflected] positioned ^ ^ ^0.5 unless block ~ ~ ~ #chuzitems:no_collision facing entity @s feet run function chuzitems:entity/photon_glaive/tick/ricochet/hit_wall
