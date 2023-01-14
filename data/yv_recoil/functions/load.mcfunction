#> yv_yv_recoil:load
#
# 
#
# @within function chuz_items:load

# スコア定義
    scoreboard objectives add YvGun.Core dummy
    scoreboard players set $5 YvGun.Core 5
    scoreboard objectives add YvGun.RecoilShotYaw dummy
    scoreboard objectives add YvGun.RecoilShotPitch dummy
    scoreboard objectives add YvGun.RecoilYaw dummy
    scoreboard objectives add YvGun.RecoilPitch dummy
    scoreboard objectives add YvGun.RecoilRecoverYaw dummy
    scoreboard objectives add YvGun.RecoilRecoverPitch dummy
    scoreboard objectives add YvGun.RecoilSmooth dummy
    scoreboard objectives add YvGun.RecoilRecover dummy
    execute as @a unless score @s YvGun.RecoilRecover matches -2147483648..2147483647 run scoreboard players set @s YvGun.RecoilRecover -1
