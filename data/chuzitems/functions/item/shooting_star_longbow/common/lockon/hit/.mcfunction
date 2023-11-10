#> chuzitems:item/shooting_star_longbow/common/lockon/hit/
#
# 
#
# @within function chuzitems:item/shooting_star_longbow/common/lockon/beam

# 持ち主を特定
    execute at @e[type=marker,tag=ChuzItems.Entity.Lockon,distance=..100] if score @p[tag=This] Chuz.PlayerID = @e[type=marker,tag=ChuzItems.Entity.Lockon,sort=nearest,limit=1] Chuz.EntityID run tag @e[type=marker,tag=ChuzItems.Entity.Lockon,sort=nearest,limit=1] add Chuz.ID.Target

# ヒット者として実行
    #execute if entity @e[type=marker,tag=Chuz.ID.Target,distance=..0.1] run say 既にロックされてる！ 
    execute unless entity @e[type=marker,tag=Chuz.ID.Target,distance=..0.1] as @p[tag=This] run function chuzitems:item/shooting_star_longbow/common/lockon/hit/success

# リセット
    tag @e[type=marker,tag=ChuzItems.Entity.Lockon] remove Chuz.ID.Target