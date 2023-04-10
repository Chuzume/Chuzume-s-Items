#> chuzitems:entity/projectile/beam/tick/
#
# 
#
# @within function chuzitems:entity/projectile/event/tick

# 向いている方向に再帰
    function chuzitems:entity/projectile/beam/recursive/

# Tick加算
    scoreboard players add @s ChuzItems.Tick 1

# 見た目を設定
    execute if score @s ChuzItems.Tick matches 1 run data merge entity @s {item:{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:11677439},CustomModelData:1}}}

# 開幕で伸びる
    execute if score @s ChuzItems.Tick matches 1 run function chuzitems:entity/projectile/beam/recursive/check_wall/

# 時間切れでしぼむ
    execute if score @s ChuzItems.Tick matches 15 run function chuzitems:entity/projectile/beam/tick/event/end
    execute if score @s ChuzItems.Tick matches 25 run kill @s


# 実行時間を移す
    #scoreboard players operation $Interval Chuz.Temporary = @s ChuzItems.Tick
    #scoreboard players operation $Interval Chuz.Temporary %= $4 Chuz.Const

# 発射地点をごまかす
    #execute if score $Interval Chuz.Temporary matches 0 run particle explosion ^ ^ ^-0.5 0 0 0 0 0 force @a[distance=..60]