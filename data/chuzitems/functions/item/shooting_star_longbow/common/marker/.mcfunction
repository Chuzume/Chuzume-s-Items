#> chuzitems:item/shooting_star_longbow/common/marker/
#
# ロックオンした相手を対象に実行
#
# @within function chuzitems:player/tick

# 実行者です
    tag @s add This

# マクロ実行
    execute store result storage chuz:context LockID int 1 run scoreboard players get @s Chuz.PlayerID
    function chuzitems:item/shooting_star_longbow/common/marker/macro with storage chuz:context

# リセット
    tag @s remove This
    data remove storage chuz:context LockID