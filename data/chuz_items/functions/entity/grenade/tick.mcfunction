
# パーティクル
    particle minecraft:crit ~ ~0.3 ~ 0 0 0 0 1 force
    particle minecraft:dust 1 0.5 0 0.8 ~ ~0.3 ~ 0.1 0.1 0.1 1 1

# 接触で爆発
    execute if entity @s[scores={Chuz.Range=..55}] positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[type=!#chuz_items:unhurtable,dx=0] run function chuz_items:entity/grenade/explode

# キル
    scoreboard players remove @s Chuz.Range 1
    execute if entity @s[scores={Chuz.Range=0}] run function chuz_items:entity/grenade/explode

# 起爆アラート
    #execute if entity @s[scores={Chuz.Range=..50}] if entity @a[distance=..4] run function chuz_items:entity/grenade/alert