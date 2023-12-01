#> chuzitems:item/shooting_star_longbow/common/chargeshot/
#
# チャージした射撃で実行
#

# 実行者です
    tag @s add This

# ロック数を確認
    execute store result storage chuz:context LockID int 1 run scoreboard players get @s Chuz.PlayerID
    function chuzitems:item/shooting_star_longbow/common/chargeshot/count_lock with storage chuz:context
    execute unless score @s ChuzItems.ShootingStar.LockCount matches 0.. run scoreboard players set @s ChuzItems.ShootingStar.LockCount 0

# 放つ
    # チャージ1
        scoreboard players set @s[scores={ChuzItems.Bow.Charge=19..39}] ChuzItems.BurstCount 3
    # チャージ2
        scoreboard players set @s[scores={ChuzItems.Bow.Charge=40..}] ChuzItems.BurstCount 10

# リセット
    data remove storage chuz:context LockID
    tag @s remove This