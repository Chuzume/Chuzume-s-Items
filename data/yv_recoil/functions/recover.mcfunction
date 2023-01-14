#> yv_recoil:recover

# 現在の角度を取得
    data modify storage yv:gun Rotation set from entity @s Rotation
    execute store result score $Yaw YvGun.Core run data get storage yv:gun Rotation[0] 10000
    execute store result score $Pitch YvGun.Core run data get storage yv:gun Rotation[1] 10000

# 大きさを移す
    scoreboard players operation $Move_Yaw YvGun.Core = @s YvGun.RecoilRecoverYaw
    scoreboard players operation $Move_Pitch YvGun.Core = @s YvGun.RecoilRecoverPitch

# 細かさ(値が大きくなればなるほどゆっくりと視点が動く)
    scoreboard players operation $Move_Yaw YvGun.Core /= $5 YvGun.Core
    scoreboard players operation $Move_Pitch YvGun.Core /= $5 YvGun.Core

# 現在の角度から引く
    scoreboard players operation $Yaw YvGun.Core -= $Move_Yaw YvGun.Core
    scoreboard players operation $Pitch YvGun.Core -= $Move_Pitch YvGun.Core

# 大きさから引く
    scoreboard players operation @s YvGun.RecoilRecoverYaw -= $Move_Yaw YvGun.Core
    scoreboard players operation @s YvGun.RecoilRecoverPitch -= $Move_Pitch YvGun.Core

# Entity召喚して向きを変える
    execute at @s run summon minecraft:marker ~ ~ ~ {Tags:["YvGun.RecoilRotation"],NoGravity:1b}
    execute store result storage yv:gun Rotation[0] float 0.0001 run scoreboard players get $Yaw YvGun.Core
    execute store result storage yv:gun Rotation[1] float 0.0001 run scoreboard players get $Pitch YvGun.Core
    data modify entity @e[type=marker,tag=YvGun.RecoilRotation,sort=nearest,limit=1] Rotation set from storage yv:gun Rotation

# プレイヤーがアマスタにTP
    execute at @e[type=marker,tag=YvGun.RecoilRotation,sort=nearest,limit=1] run tp @s ~ ~ ~ ~ ~
    kill @e[type=marker,tag=YvGun.RecoilRotation,sort=nearest,limit=1]

# 目標の向きになったら
    execute if score $Move_Yaw YvGun.Core matches 0 if score $Move_Pitch YvGun.Core matches 0 run scoreboard players reset @s YvGun.RecoilRecoverYaw
    execute if score $Move_Yaw YvGun.Core matches 0 if score $Move_Pitch YvGun.Core matches 0 run scoreboard players reset @s YvGun.RecoilRecoverPitch
    execute if score $Move_Yaw YvGun.Core matches 0 if score $Move_Pitch YvGun.Core matches 0 run scoreboard players set @s YvGun.RecoilRecover -1
