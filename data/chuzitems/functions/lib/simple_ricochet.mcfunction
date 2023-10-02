#> chuzitems:lib/simple_ricochet
#
# 
#
# @within function chuzitems:entity/grenade/tick


# ベクトル取得して整理
    data modify storage chuz:context Temp.Motion set from entity @s Motion
    data modify storage chuz:context Temp.VecX set from storage chuz:context Temp.Motion[0]
    data modify storage chuz:context Temp.VecY set from storage chuz:context Temp.Motion[1]
    data modify storage chuz:context Temp.VecZ set from storage chuz:context Temp.Motion[2]

# 床反射(バウンド)
    # アイテム
        execute if data storage chuz:context Temp{VecY:0.0d} unless score @s[type=item,tag=!YvBounce.Disable.Y] YvBounce.BeforeVec.Y matches -400000..400000 run function yv_reflection:reflection/y/
    # アマスタなど
        execute if data storage chuz:context Temp{VecY:-0.0784000015258789d} unless score @s[type=armor_stand,tag=!YvBounce.Disable.Y] YvBounce.BeforeVec.Y matches -800000..800000 run function yv_reflection:reflection/y/
        #tellraw @a [{"text":"storage: "},{"storage":"chuz:context","nbt":"Temp.VecX"}]

# 壁反射(X)
    execute if data storage chuz:context Temp{VecX:0.0d} store result entity @s Rotation[0] float -1 run data get entity @s Rotation[0]
    execute if data storage chuz:context Temp{VecX:0.0d} run say X

# 壁反射(Y)
    execute if data storage chuz:context Temp{VecY:0.0d} store result entity @s Rotation[1] float -1 run data get entity @s Rotation[1]
    execute if data storage chuz:context Temp{VecY:0.0d} run say Y

# 壁反射(Z)
    execute if data storage chuz:context Temp{VecZ:0.0d} run tp @s ~ ~ ~ ~180 ~
    execute if data storage chuz:context Temp{VecZ:0.0d} run say Z
