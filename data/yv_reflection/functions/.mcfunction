#> yv_reflection:
#
# 
#
# @within function **

# ベクトル取得して整理
    data modify storage yv:reflection Temp.Motion set from entity @s Motion
    data modify storage yv:reflection Temp.VecX set from storage yv:reflection Temp.Motion[0]
    data modify storage yv:reflection Temp.VecY set from storage yv:reflection Temp.Motion[1]
    data modify storage yv:reflection Temp.VecZ set from storage yv:reflection Temp.Motion[2]

# 床反射(バウンド)
    # アイテム
        execute if data storage yv:reflection Temp{VecY:0.0d} unless score @s[type=item,tag=!YvBounce.Disable.Y] YvBounce.BeforeVec.Y matches -400000..400000 run function yv_reflection:reflection/y/
    # アマスタなど
        execute if data storage yv:reflection Temp{VecY:-0.0784000015258789d} unless score @s[type=armor_stand,tag=!YvBounce.Disable.Y] YvBounce.BeforeVec.Y matches -800000..800000 run function yv_reflection:reflection/y/
        #tellraw @a [{"text":"storage: "},{"storage":"yv:reflection","nbt":"Temp.VecX"}]

# 壁反射(X)
    execute if data storage yv:reflection Temp{VecX:0.0d} unless score @s[tag=!YvBounce.Disable.X] YvBounce.BeforeVec.X matches 0 run function yv_reflection:reflection/x

# 壁反射(Z)
    execute if data storage yv:reflection Temp{VecZ:0.0d} unless score @s[tag=!YvBounce.Disable.Z] YvBounce.BeforeVec.Z matches 0 run function yv_reflection:reflection/z

# 床転がり
    execute if data storage yv:reflection Temp{VecY:0.0d} if score @s YvBounce.BeforeVec.Y matches -400000..400000 run function yv_reflection:rolling

# 描画更新のための
    execute unless score @s YvBounce.BeforeVec.Y matches -400000..400000 run data modify entity @s Air set value 1s

# 古いベクトルとして保存
    execute store result score @s YvBounce.BeforeVec.X run data get storage yv:reflection Temp.VecX 10000000
    execute store result score @s YvBounce.BeforeVec.Y run data get storage yv:reflection Temp.VecY 10000000
    execute store result score @s YvBounce.BeforeVec.Z run data get storage yv:reflection Temp.VecZ 10000000

# 座標を取得して整理
    data modify storage yv:reflection Temp.Pos set from entity @s Pos
    data modify storage yv:reflection Temp.PosX set from storage yv:reflection Temp.Pos[0]
    data modify storage yv:reflection Temp.PosY set from storage yv:reflection Temp.Pos[1]
    data modify storage yv:reflection Temp.PosZ set from storage yv:reflection Temp.Pos[2]
    execute store result score $TempX YvBounce.Core run data get storage yv:reflection Temp.PosX 10000000
    execute store result score $TempY YvBounce.Core run data get storage yv:reflection Temp.PosY 10000000
    execute store result score $TempZ YvBounce.Core run data get storage yv:reflection Temp.PosZ 10000000

# 止まったならタグ付け
    execute if score @s YvBounce.BeforeVec.Y matches -400000..400000 if score @s YvBounce.Before.Pos.X = $TempX YvBounce.Core if score @s YvBounce.Before.Pos.Y = $TempY YvBounce.Core if score @s YvBounce.Before.Pos.Z = $TempZ YvBounce.Core run function yv_reflection:stop

# 古い座標として保存
    scoreboard players operation @s YvBounce.Before.Pos.X = $TempX YvBounce.Core
    scoreboard players operation @s YvBounce.Before.Pos.Y = $TempY YvBounce.Core
    scoreboard players operation @s YvBounce.Before.Pos.Z = $TempZ YvBounce.Core

# SFX
    #execute unless data storage yv:reflection Temp{VecY:0.0d} run particle end_rod ~ ~.15 ~ 0 0 0 0 1 force @a
    #execute if data storage yv:reflection Temp{VecY:0.0d} run particle end_rod ~ ~.03 ~ 0 0 0 0 1 force @a