#> chuzitems:entity/projectile/ambassador_beam/recursive/check_wall/detect
#
# 
#
# @within function chuzitems:entity/projectile/ambassador_beam/recursive/check_wall/

# カウント1増やす
    scoreboard players add @e[type=item_display,tag=ChuzItems.Projectile.AmbassadorBeam,sort=nearest,limit=1] ChuzItems.Count 1
    function chuzitems:entity/projectile/ambassador_beam/recursive/check_wall/