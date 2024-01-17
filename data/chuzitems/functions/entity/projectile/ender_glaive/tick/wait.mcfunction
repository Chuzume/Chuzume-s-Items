#> chuzitems:entity/projectile/ender_glaive/tick/wait
#
# 
#
# @within function chuzitems:entity/projectile/ender_glaive/tick/

# 水平になる
    execute rotated ~ 0 positioned ^ ^ ^-100 rotated as @s positioned ^ ^ ^-500 facing entity @s eyes positioned as @s run tp @s ^ ^ ^ ~ ~

# スコア加算
    scoreboard players add @s ChuzItems.Tick2 1

# 戻ってくる
    execute if entity @s[scores={ChuzItems.Tick2=15..}] run function chuzitems:entity/projectile/ender_glaive/tick/catch/

# パーティクル
    function chuzitems:entity/projectile/ender_glaive/tick/particle/wait
