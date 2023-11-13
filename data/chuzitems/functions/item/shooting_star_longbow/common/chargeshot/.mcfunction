#> chuzitems:item/shooting_star_longbow/common/chargeshot/
#
# チャージした射撃で実行
#

# ロック数を確認
    execute store result storage chuz:context LockID int 1 run scoreboard players get @s Chuz.PlayerID
    function chuzitems:item/shooting_star_longbow/common/chargeshot/count_lock with storage chuz:context

# ロック1以上なら
    execute if score @s ChuzItems.ShootingStar.LockCount matches 1.. run function chuzitems:item/shooting_star_longbow/common/chargeshot/locked/

# ロック0なら

# リセット
    data remove storage chuz:context LockID