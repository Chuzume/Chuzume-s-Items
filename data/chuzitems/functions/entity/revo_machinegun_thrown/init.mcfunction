#> chuzitems:entity/revo_machinegun_thrown/init
#
# 
#
# @within function chuzitems:item/techkit_revomachine_gun/mainhand/reload/start

# 向き設定したあとマーカーを消す
    execute facing entity @e[type=marker,tag=SpreadMarker,distance=..100] feet run tp @s ~ ~-0.3 ~ ~ ~
    kill @e[type=marker,tag=SpreadMarker,distance=..100]

# 存在時間
    #scoreboard players set @s Chuz.Speed 20
    scoreboard players set @s Chuz.Range 60

# 発射
    #execute at @s run function chuzitems:entity/motion

# 残弾をスコア化
    execute store result score @s ChuzItems.Revo.Magazine run data get storage chuz:context Item.Mainhand.tag.ChuzData.Ammo

# タグ調整
    tag @s remove Chuz.Init

# UUIDコピー
    execute run data modify entity @s ArmorItems[0].tag.OwnerUUID set from entity @p UUID

# スコアコピー
    scoreboard players operation @s Chuz.EntityID = @p Chuz.PlayerID