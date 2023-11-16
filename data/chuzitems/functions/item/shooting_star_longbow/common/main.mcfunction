#> chuzitems:item/shooting_star_longbow/common/main
#
# 
#
# @within function
#   chuzitems:item/shooting_star_longbow/mainhand/standby/
#   chuzitems:item/shooting_star_longbow/offhand/standby/

# 構えている間スコア増やす
    scoreboard players add @s[tag=Chuz.Using.Bow] ChuzItems.Bow.Charge 1

# 弓を撃ったことを検知
    execute if score @s ChuzItems.Bow matches 1.. run function chuzitems:item/shooting_star_longbow/common/shoot

# スコア定義
    execute unless score @s ChuzItems.ShootingStar.LockLimit matches 0.. run scoreboard players set @s ChuzItems.ShootingStar.LockLimit 0

# 発砲
    # 弾の召喚部分
        execute unless score @s[scores={ChuzItems.BurstCount=1..}] ChuzItems.BurstRate matches 0.. anchored eyes positioned ^ ^ ^1 run function chuzitems:item/shooting_star_longbow/common/chargeshot/summon/
    # バースト間隔の処理
        scoreboard players remove @s[scores={ChuzItems.BurstRate=1..}] ChuzItems.BurstRate 1
    # バースト終了時に実行
        execute if score @s ChuzItems.BurstCount matches 0 run function chuzitems:item/shooting_star_longbow/common/end_burst
    # リセット
        scoreboard players reset @s[scores={ChuzItems.BurstRate=..0}] ChuzItems.BurstRate
# ディレイ減算
    scoreboard players remove @s[scores={ChuzItems.ShootingStar.LockDelay=1..}] ChuzItems.ShootingStar.LockDelay 1
    scoreboard players reset @s[scores={ChuzItems.ShootingStar.LockDelay=0}] ChuzItems.ShootingStar.LockDelay

# チャージ1
    execute if score @s ChuzItems.Bow.Charge matches 19 anchored eyes positioned ^ ^ ^1 rotated ~ ~90 run function chuzitems:item/shooting_star_longbow/common/charge1

# チャージ2
    execute if score @s ChuzItems.Bow.Charge matches 40 anchored eyes positioned ^ ^ ^1 rotated ~ ~90 run function chuzitems:item/shooting_star_longbow/common/charge2

# 構えて20tickでロックオンモードに
    execute unless score @s[scores={ChuzItems.Bow.Charge=19..39}] ChuzItems.ShootingStar.LockDelay matches 0.. if score @s ChuzItems.ShootingStar.LockLimit matches ..2 anchored eyes positioned ^ ^ ^ run function chuzitems:item/shooting_star_longbow/common/lockon/
    execute unless score @s[scores={ChuzItems.Bow.Charge=40..}] ChuzItems.ShootingStar.LockDelay matches 0.. if score @s ChuzItems.ShootingStar.LockLimit matches ..9 anchored eyes positioned ^ ^ ^ run function chuzitems:item/shooting_star_longbow/common/lockon/