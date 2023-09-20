#> chuzitems:entity/projectile/ambassador_beam/recursive/check_wall/active
#
# 
#
# @within function chuzitems:entity/projectile/ambassador_beam/recursive/check_wall/


# スコアリセット
    scoreboard players reset @e[type=item_display,tag=ChuzItems.Projectile.AmbassadorBeam,sort=nearest,limit=1] ChuzItems.Count

# 再帰スタート
    function chuzitems:entity/projectile/ambassador_beam/recursive/check_wall/