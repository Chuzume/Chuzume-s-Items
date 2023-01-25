
# パーティクル
    particle minecraft:crit ~ ~0.3 ~ 0 0 0 0 1 force
    particle minecraft:dust 1 0.5 0 0.8 ~ ~0.3 ~ 0.1 0.1 0.1 1 1

# 接触で爆発
    # クールタイム加算
        scoreboard players add @s ChuzItems.CoolTime 1
    # 一定のクールタイムが過ぎたら、接触で爆発するようになる
        execute if entity @s[scores={ChuzItems.CoolTime=5..}] positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[type=!#chuz_items:unhurtable,tag=!Chuz.PlayerShouldInvulnerable,tag=!Chuz.Uninterferable,dx=0] run function chuz_items:entity/grenade/explode

# キル
    scoreboard players remove @s Chuz.Range 1
    execute if entity @s[scores={Chuz.Range=0}] run function chuz_items:entity/grenade/explode

# 反射
    function yv_reflection:

# 起爆アラート
    #execute if entity @s[scores={ChuzItems.CoolTime=10..}] if entity @a[distance=..4] run function chuz_items:entity/grenade/alert