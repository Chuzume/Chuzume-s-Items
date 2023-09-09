
# 爆發
    execute if entity @s[type=end_crystal] run summon tnt

# 何で攻撃されたのかタグ付与
    tag @s add ChuzItems.Hit.ChargeSmash
    tag @s add Chuz.HitReact

# ヒット音
    playsound minecraft:entity.player.attack.strong neutral @a ~ ~ ~ 1.5 1

# ダメージを設定
    # ダメージは14
        data merge storage lib: {Damage:14.0}
    # クリエのプレイヤーだったらダメージを消す
        execute if entity @s[gamemode=!survival,gamemode=!adventure] run data merge storage lib: {Damage:0.0}
    # 実行
        execute if entity @s[type=!end_crystal] run function lib:api/attack

# デバフ
    effect give @s weakness 1 10 true
    effect give @s minecraft:mining_fatigue 1 10 true
    effect give @s minecraft:slowness 1 10 true