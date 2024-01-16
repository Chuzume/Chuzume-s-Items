#> chuzitems:entity/particle/tick
#
# 
#
# @within function chuzitems:entity/tick

# スコア加算
    scoreboard players add @s ChuzItems.Tick 1

# データ取得
    execute on passengers run function chuzitems:entity/particle/get_data

# コマ送り
    function chuzitems:entity/particle/macro with storage chuz:context Particle
