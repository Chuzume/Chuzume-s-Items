#> csr_score_damage:core/attack
#
# ダメージ与えるよ
#
# @within function csr_score_damage:api/*

#> 変数定義
# @internal
    #declare score_holder $Damage
    #declare score_holder $EPF
    #declare score_holder $Health
    #declare score_holder $defensePoints
    #declare score_holder $toughness
    #declare score_holder $Resistance

# 引数データをコピー
    execute store result score $Damage ScoreDamageCore run data get storage csr_score_damage: Damage 100
    execute unless data storage csr_score_damage: EPF run data modify storage csr_score_damage: EPF set value -1
    execute unless data storage csr_score_damage: DisableParticle run data modify storage csr_score_damage: DisableParticle set value 0b
    execute unless data storage csr_score_damage: BypassArmor run data modify storage csr_score_damage: BypassArmor set value 0b
    execute unless data storage csr_score_damage: BypassResistance run data modify storage csr_score_damage: BypassResistance set value 0b
# 計算に必要な値を取得
    function csr_score_damage:core/get_status
# 与えるダメージの計算
    function csr_score_damage:core/calc
# Mobに適用
    function csr_score_damage:core/health_subtract