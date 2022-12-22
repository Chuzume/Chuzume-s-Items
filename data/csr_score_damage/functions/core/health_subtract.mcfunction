#> csr_score_damage:core/health_subtract
#
# MobのHealthを減算する
#
# @within function csr_score_damage:core/attack

#> Temp
# @private
    #declare objective ScoreToHealth
    #declare score_holder $SubtractedHealth

# MobのHealthよりダメージが高い場合Healthに設定
    scoreboard players operation $Damage ScoreDamageCore < $Health ScoreDamageCore
# Health減算
    scoreboard players operation $SubtractedHealth ScoreDamageCore = $Health ScoreDamageCore
    scoreboard players operation $SubtractedHealth ScoreDamageCore -= $Damage ScoreDamageCore
# Mobへ代入
    # Player
        execute if entity @s[type=player] run scoreboard players operation $Health ScoreDamageCore /= $100 ScoreDamageCore
        execute if entity @s[type=player] run scoreboard players operation $SubtractedHealth ScoreDamageCore /= $100 ScoreDamageCore
        execute if entity @s[type=player] run scoreboard players operation $Damage ScoreDamageCore /= $100 ScoreDamageCore
        execute if entity @s[type=player] unless score @s ScoreToHealth matches 0.. store success score $hasDependency ScoreDamageCore run scoreboard players operation @s ScoreToHealth = $Health ScoreDamageCore
        execute if entity @s[type=player] run scoreboard players operation @s ScoreToHealth -= $Damage ScoreDamageCore
        execute if entity @s[type=player] if score $hasDependency ScoreDamageCore matches 0 run tellraw @a [{"text":"ERROR >> ","color":"red"},{"text":"ScoreToHealth","underlined":true,"color":"#4c4cff","clickEvent":{"action":"open_url","value":"https://github.com/Ai-Akaishi/ScoreToHealth"}},{"text":"が導入されていないため\nPlayerにダメージを与えることは出来ません","color":"white"}]
    # Mob
        execute if entity @s[type=!player] if score $SubtractedHealth ScoreDamageCore matches 1.. store result entity @s Health float 0.0001 run scoreboard players get $SubtractedHealth ScoreDamageCore

    # プレイヤー、またはドラゴンでないなら、ヘルス0でキル
        execute unless entity @s[type=player] unless entity @s[type=ender_dragon] if score $SubtractedHealth ScoreDamageCore matches ..0 run function chuz_items:hitreact 
        execute unless entity @s[type=player] unless entity @s[type=ender_dragon] if score $SubtractedHealth ScoreDamageCore matches ..0 run kill @s

    # ドラゴンならヘルス0でDragonPhaseを9にして墜落させる
        execute if entity @s[type=ender_dragon] if score $SubtractedHealth ScoreDamageCore matches ..0 run data merge entity @s {DragonPhase:9}

    # ヘルスが1以上ならUUID攻撃
        execute unless entity @s[type=player] unless entity @s[type=ender_dragon] if score $SubtractedHealth ScoreDamageCore matches 1.. run function chuz_items:uuid_hit_no_kb

    # プレイヤーなら見た目だけダメージ
        execute if entity @s[type=player] run summon area_effect_cloud ~ ~ ~ {Duration:14,Age:4,Effects:[{Id:11b,Amplifier:127b,Duration:1,ShowParticles:0b},{Id:7b,Amplifier:0b,Duration:1,ShowParticles:0b}]}

    # プレイヤーかつヘルス0なら死亡メッセージ
        execute if entity @s[type=player] if score @s ScoreToHealth matches ..0 run function chuz_items:message/death/bullet
# 演出
    #execute if score $Health ScoreDamageCore matches 1.. if entity @s[type=!player] run data modify entity @s ActiveEffects append value {Id:19b,Amplifier:4b,Duration:1}
    function csr_score_damage:core/damage_indicator

# リセット
    scoreboard players reset $Damage ScoreDamageCore
    scoreboard players reset $Health ScoreDamageCore
    scoreboard players reset $SubtractedHealth ScoreDamageCore
    scoreboard players reset $hasDependency


# 何から攻撃されたかリセット
    tag @s remove ChuzItems.Hit.Bullet
    tag @s remove ChuzItems.Hit.BulletHS
    tag @s remove ChuzItems.Hit.ChargeSmash