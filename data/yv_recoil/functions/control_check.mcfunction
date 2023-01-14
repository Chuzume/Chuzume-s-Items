#>  yv_yv_recoil:control_check

# 現在のピッチを取得
    data modify storage yv:gun Rotation set from entity @s Rotation
    execute store result score $Yaw YvGun.Core run data get storage yv:gun Rotation[0] 10000
    execute store result score $Pitch YvGun.Core run data get storage yv:gun Rotation[1] 10000

# 射撃時(リコイル前)の向きと比較
    scoreboard players operation $Yaw_Control YvGun.Core = @s YvGun.RecoilShotYaw
    scoreboard players operation $Pitch_Control YvGun.Core = @s YvGun.RecoilShotPitch

    scoreboard players operation $Yaw_Control YvGun.Core += @s YvGun.RecoilRecoverYaw
    scoreboard players operation $Pitch_Control YvGun.Core += @s YvGun.RecoilRecoverPitch

    scoreboard players operation $Yaw_Control YvGun.Core -= $Yaw YvGun.Core
    scoreboard players operation $Pitch_Control YvGun.Core -= $Pitch YvGun.Core

# コントロールされているなら戻りを0に
    #execute if score @s YvGun.RecoilRecoverYaw matches ..-1 if score $Yaw_Control YvGun.Core matches ..-20000 run scoreboard players set @s YvGun.RecoilRecoverYaw 0
    #execute if score @s YvGun.RecoilRecoverYaw matches 1.. if score $Yaw_Control YvGun.Core matches 20000.. run scoreboard players set @s YvGun.RecoilRecoverYaw 0
    execute unless score $Yaw_Control YvGun.Core matches -60000..60000 run scoreboard players set @s YvGun.RecoilRecoverYaw 0
    execute if score $Pitch_Control YvGun.Core matches ..-20000 run scoreboard players set @s YvGun.RecoilRecoverPitch 0
