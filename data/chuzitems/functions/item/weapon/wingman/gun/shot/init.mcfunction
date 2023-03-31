#> chuzitems:item/weapon/wingman/gun/shot/init
#
# 
#
# @within function
#   chuzitems:item/weapon/wingman/gun/shot/
#   chuzitems:item/weapon/wingman/gun/shot/ads

## タグ設定
    tag @s add Chuz.Projectile
    tag @s add ChuzItems.RecursiveBullet
    tag @s add ChuzItems.Projectile.Wingman
    tag @s add Chuz.UUIDAttack

## お願いOhMyDat!
    function oh_my_dat:please

## 弾のステータスを設定
    # ダメージ(ボディ)
        data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Projectile.BodyDamage set value 8.0
    # ダメージ(ヘッド)
        data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Projectile.HeadDamage set value 16.0
    # 弾速
        data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Projectile.Speed set value 45
    # 飛距離
        data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Projectile.Range set value 400
    # どれほど遠くから拡散するか
        data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Projectile.Distance set value 3.0f
    # 拡散の大きさ
        # 腰だめ
            execute if entity @p[tag=This,tag=ChuzItems.Shot.Normal] run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Projectile.Spread set value 0.2f
        # スコープ
            execute if entity @p[tag=This,tag=ChuzItems.Shot.ADS] run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Projectile.Spread set value 0.0f
# これらの設定を反映する
    function chuzitems:entity/projectile/recursive_bullet/new_init