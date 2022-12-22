
# 事前にゲームモード取得
    execute store result score $Temp Chuz.Temporary run gamerule mobGriefing

# 爆発
    summon creeper ~ ~200 ~ {CustomName:'{"text":"Grenade"}',Invulnerable:1b,ExplosionRadius:2b,Tags:[Chuz.Explosion,Chuz_NonVanillaMob],Fuse:0}
    tp @e[type=creeper,tag=Chuz.Explosion,limit=1] ~ ~0.5 ~
    execute if score $ChuzItems.Setting2 Chuz.Rule matches 0 run gamerule mobGriefing false
    execute if score $ChuzItems.Setting2 Chuz.Rule matches 0 run schedule function chuz_items:entity/grenade/gamerule_return 2t

# パーティクルもつけちゃおうかな
    particle minecraft:lava ~ ~ ~ 1 1 1 0 20

# キル
    kill @s