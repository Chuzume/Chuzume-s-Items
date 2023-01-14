#> yv_recoil:

#data modify storage yv:recoil Recoil set value {Magnitude:[0.0f,-10.0f],Smooth:5,Tick:15}

    execute store result score $Temp.Yaw YvGun.Core run data get storage yv:gun Recoil.Magnitude[0] 10000
    scoreboard players operation @s YvGun.RecoilYaw += $Temp.Yaw YvGun.Core
    scoreboard players operation @s YvGun.RecoilRecoverYaw += $Temp.Yaw YvGun.Core

    execute store result score $Temp.Pitch YvGun.Core run data get storage yv:gun Recoil.Magnitude[1] 10000
    scoreboard players operation @s YvGun.RecoilPitch += $Temp.Pitch YvGun.Core
    scoreboard players operation @s YvGun.RecoilRecoverPitch += $Temp.Pitch YvGun.Core

    data modify storage yv:gun Rotation set from entity @s[scores={YvGun.RecoilRecover=-1}] Rotation
    execute store result score @s[scores={YvGun.RecoilRecover=-1}] YvGun.RecoilShotYaw run data get storage yv:gun Rotation[0] 10000
    execute store result score @s[scores={YvGun.RecoilRecover=-1}] YvGun.RecoilShotPitch run data get storage yv:gun Rotation[1] 10000

    execute store result score @s YvGun.RecoilSmooth run data get storage yv:gun Recoil.Smooth 1

    execute store result score @s YvGun.RecoilRecover run data get storage yv:gun Recoil.Wait_Tick 1

    tag @s add YvGun.Recoil
