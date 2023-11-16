#> chuzitems:item/shooting_star_longbow/common/normalshot/init
#
# 
#

## タグ設定
    tag @s add Chuz.Projectile
    tag @s add ChuzItems.RecursiveBullet
    tag @s add ChuzItems.Projectile.ShootingArrow
    tag @s add Chuz.UUIDAttack

## お願いOhMyDat!
    function oh_my_dat:please

## 弾のステータスを設定
    # ダメージ(ボディ)
        execute if score @p[tag=This] ChuzItems.Bow.Charge matches ..9 run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Projectile.BodyDamage set value 2.0
        execute if score @p[tag=This] ChuzItems.Bow.Charge matches 10.. run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Projectile.BodyDamage set value 5.0
    # ダメージ(ヘッド)
        execute if score @p[tag=This] ChuzItems.Bow.Charge matches ..9 run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Projectile.HeadDamage set value 3.0
        execute if score @p[tag=This] ChuzItems.Bow.Charge matches 10.. run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Projectile.HeadDamage set value 7.0
    # 弾速
        execute if score @p[tag=This] ChuzItems.Bow.Charge matches ..9 run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Projectile.Speed set value 1
        execute if score @p[tag=This] ChuzItems.Bow.Charge matches 10.. run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Projectile.Speed set value 10
    # 飛距離
        execute if score @p[tag=This] ChuzItems.Bow.Charge matches ..9 run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Projectile.Range set value 20
        execute if score @p[tag=This] ChuzItems.Bow.Charge matches 10.. run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Projectile.Range set value 100
    # どれほど遠くから拡散するか
        data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Projectile.Distance set value 10.0f
    # 拡散の大きさ
        data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Projectile.Spread set value 0.1f
    # ダメージタイプ(胴体)
        data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Projectile.DamageType.Body set value "chuzitems:bullet"
    # ダメージタイプ(頭)
        data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Projectile.DamageType.Head set value "chuzitems:bullet_headshot"
        
# これらの設定を反映する
    function chuzitems:entity/projectile/recursive_bullet/init
