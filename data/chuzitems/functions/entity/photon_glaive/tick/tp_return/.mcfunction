#> chuzitems:entity/photon_glaive/tick/tp_return/
#
# 
#
# @within function chuzitems:entity/photon_glaive/tick/


# ゆっくりと水平に
    execute rotated ~ 0 positioned ^ ^ ^-100 rotated as @s positioned ^ ^ ^-400 facing entity @s eyes positioned as @s run tp @s ^ ^ ^ ~ ~

# スコア減算
    scoreboard players remove @s Chuz.Range 1

# キャッチ
    execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @p[tag=Chuz.ID.Target,dx=0] at @s run function chuzitems:entity/photon_glaive/tick/catch
    
# アクティブ
    execute if score @s Chuz.Range matches ..-40 run function chuzitems:entity/photon_glaive/tick/tp_return/active