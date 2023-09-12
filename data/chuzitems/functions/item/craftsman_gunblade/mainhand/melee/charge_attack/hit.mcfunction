#> chuzitems:item/craftsman_gunblade/mainhand/melee/charge_attack/hit
#
# 
#
# @within function chuzitems:item/craftsman_gunblade/mainhand/melee/charge_attack/

# 爆發
    damage @s[type=end_crystal] 0 generic

# 何で攻撃されたのかタグ付与
    tag @s add ChuzItems.Hit.ChargeSmash
    tag @s add Chuz.HitReact

# ヒット音
    playsound minecraft:entity.player.attack.strong neutral @a ~ ~ ~ 1.5 1

# ダメージ設定
    data modify storage lib: Damage set value 14

# マクロでダメージ
    function chuzitems:lib/storage_damage with storage lib:

# デバフ
    effect give @s weakness 1 10 true
    effect give @s minecraft:mining_fatigue 1 10 true
    effect give @s minecraft:slowness 1 10 true