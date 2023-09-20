#> chuzitems:entity/projectile/ambassador_beam/tick/
#
# 
#
# @within function chuzitems:entity/projectile/event/tick

# 向いている方向に再帰
    #function chuzitems:entity/projectile/ambassador_beam/recursive/

# Tick加算
    scoreboard players add @s ChuzItems.Tick 1

# 見た目を設定
    execute if score @s ChuzItems.Tick matches 1 run function chuzitems:entity/projectile/ambassador_beam/tick/set_color

# 開幕で伸びる
    #execute if score @s ChuzItems.Tick matches 1 run function chuzitems:entity/projectile/ambassador_beam/recursive/check_wall/

# 見た目が変わる
    function chuzitems:entity/projectile/ambassador_beam/tick/transform

# 時間切れでしぼむ
    execute if score @s ChuzItems.Tick matches 15 run function chuzitems:entity/projectile/ambassador_beam/tick/end
    execute if score @s ChuzItems.Tick matches 40.. run kill @s

# 実行時間を移す
    scoreboard players operation $Interval Chuz.Temporary = @s ChuzItems.Tick
    scoreboard players operation $Interval Chuz.Temporary %= $4 Chuz.Const

# ストレージ用意
    data modify storage rot2trans: left_rotation set value {axis:[1f,0f,0f],angle:0}
    data modify storage rot2trans: right_rotation set value {axis:[0f,-1f,0f],angle:0}

# 一時エンティティ召喚
    summon marker ~ ~ ~ {Tags:["rot2trans_temp"]}

# 壁チェック
    #execute as @e[tag=rot2trans_temp] run scoreboard players reset @s ChuzItems.Count
    execute as @e[tag=rot2trans_temp,sort=nearest,limit=1] at @s rotated as @e[tag=Test,sort=nearest,limit=1] run tp @s ~ ~ ~ ~ ~
    execute as @e[tag=rot2trans_temp,sort=nearest,limit=1] at @s run function chuzitems:entity/projectile/ambassador_beam/recursive/check_wall/active
    

    execute rotated as @e[tag=Test,sort=nearest,limit=1] positioned 0.0 0.0 0.0 run tp @e[tag=rot2trans_temp,limit=1] ^1 ^ ^ ~ ~
    data modify storage rot2trans: left_rotation.axis set from entity @e[tag=rot2trans_temp,limit=1] Pos
    execute store result storage rot2trans: right_rotation.angle float 0.000001745 run data get entity @e[tag=rot2trans_temp,limit=1] Rotation[0] 10000


# execute幾何学で、縦角度[-90~90]⇒横角度[0~180]に変換
    execute rotated as @e[tag=Test,sort=nearest,limit=1] rotated -90 ~ positioned 0.0 0.0 0.0 positioned ^ ^ ^1 rotated ~180 ~ positioned ^ ^ ^-1 rotated ~-90 ~ positioned ^ ^1 ^ rotated ~180 ~ positioned ^ ^-1 ^ facing 0.0 0.0 0.0 run tp @e[tag=rot2trans_temp,limit=1] 0.0 0.0 0.0 ~ ~
    execute store result storage rot2trans: left_rotation.angle float 0.000001745 run data get entity @e[tag=rot2trans_temp,limit=1] Rotation[0] 10000


# 一時エンティティ削除
    kill @e[tag=rot2trans_temp,sort=nearest,limit=1]

# 変形反映
    data modify entity @s transformation.left_rotation set from storage rot2trans: left_rotation
    data modify entity @s transformation.right_rotation set from storage rot2trans: right_rotation
    #data modify entity @s transformation.scale set value [1f,100f,1f]

# アニメの速さを設定
    data modify entity @s start_interpolation set value 0