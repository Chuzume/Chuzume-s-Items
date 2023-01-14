#> yv_yv_recoil:tick
#
# Yavu_8B氏作のリコイル処理のTick部分
#
# @within function chuz_items:tick

# タグが付いているならリコイル処理
    execute as @a[tag=YvGun.Recoil] at @s run function yv_yv_recoil:move

# RecoilRecoverが0なら戻り処理
    execute as @a[tag=!YvGun.Recoil,scores={YvGun.RecoilRecover=0}] at @s run function yv_yv_recoil:recover

# RecoilRecoverのデクリメント
    scoreboard players remove @a[tag=!YvGun.Recoil,scores={YvGun.RecoilRecover=1..}] YvGun.RecoilRecover 1
