#> chuzitems:entity/lockon_marker/
#
# 
#
# @within function chuzitems:entity/projectile/event/tick

# パーティクル
    particle minecraft:end_rod ~ ~1 ~ 0.25 0.25 0.25 0 1 force

# エンティティにくっつく
    execute positioned ~-0.5 ~-0.5 ~-0.5 as @e[tag=!ChuzItems.Entity.Lockon,tag=!Chuz.Projectile,dx=0,sort=nearest,limit=1] at @s anchored eyes positioned ^ ^ ^ run tp @e[type=marker,tag=ChuzItems.Entity.Lockon,distance=..20,sort=nearest] ~ ~ ~

# ロックオンされたエンティティが死亡したり離れたりしたら、スコアを200に
    execute positioned ~-0.5 ~-0.5 ~-0.5 unless entity @e[tag=!ChuzItems.Entity.Lockon,tag=!Chuz.Projectile,dx=0,sort=nearest,limit=1] run kill @s
