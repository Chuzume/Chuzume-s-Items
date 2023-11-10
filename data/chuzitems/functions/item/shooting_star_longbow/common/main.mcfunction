#> chuzitems:item/shooting_star_longbow/common/main
#
# 
#
# @within function
#   chuzitems:item/shooting_star_longbow/mainhand/standby/
#   chuzitems:item/shooting_star_longbow/offhand/standby/

# 弓を撃ったことを検知
    execute if score @s ChuzItems.Bow matches 1.. run function chuzitems:item/shooting_star_longbow/common/shoot

# スコア定義
    execute unless score @s ChuzItems.ShootingStar.LockCount matches 0.. run scoreboard players set @s ChuzItems.ShootingStar.LockCount 0

# 発砲
    # 弾の召喚部分
        execute unless score @s[scores={ChuzItems.BurstCount=1..}] ChuzItems.BurstRate matches 0.. anchored eyes positioned ^ ^ ^ run function chuzitems:item/shooting_star_longbow/common/chargeshot/summon/
# バースト間隔の処理
    scoreboard players remove @s[scores={ChuzItems.BurstRate=1..}] ChuzItems.BurstRate 1
    # リセット
        scoreboard players reset @s[scores={ChuzItems.BurstRate=..0}] ChuzItems.BurstRate

# スニークでロックオン
    execute unless score @s ChuzItems.ShootingStar.LockDelay matches 0.. if score @s ChuzItems.ShootingStar.LockCount matches ..9 if predicate chuzitems:sneak anchored eyes positioned ^ ^ ^ run function chuzitems:item/shooting_star_longbow/common/lockon/

# ディレイ減算
    scoreboard players remove @s[scores={ChuzItems.ShootingStar.LockDelay=1..}] ChuzItems.ShootingStar.LockDelay 1
    scoreboard players reset @s[scores={ChuzItems.ShootingStar.LockDelay=0}] ChuzItems.ShootingStar.LockDelay
