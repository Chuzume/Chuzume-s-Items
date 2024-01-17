#> chuzitems:entity/projectile/beam/tick/
#
# 
#
# @within function chuzitems:entity/projectile/check/tick

# 向いている方向に再帰
    function chuzitems:entity/projectile/beam/recursive/

# Tick加算
    scoreboard players add @s ChuzItems.Tick 1

# 見た目を設定
    execute if score @s ChuzItems.Tick matches 1 run function chuzitems:entity/projectile/beam/tick/event/set_color

# 開幕で伸びる
    execute if score @s ChuzItems.Tick matches 1 run function chuzitems:entity/projectile/beam/recursive/check_wall/

# 時間切れでしぼむ
    execute if score @s ChuzItems.Tick matches 15 run function chuzitems:entity/projectile/beam/tick/event/end
    execute if score @s ChuzItems.Tick matches 25 run kill @s

# 実行時間を移す
    scoreboard players operation $Interval Chuz.Temporary = @s ChuzItems.Tick
    scoreboard players operation $Interval Chuz.Temporary %= $4 Chuz.Const