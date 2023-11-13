#> chuzitems:entity/projectile/charged_shooting_arrow/tick/homing/
#
# 
#
# @within function chuzitems:entity/projectile/charged_shooting_arrow/tick/

# 自身に付与されたIDをストレージに付与
    execute store result storage chuz:context LockID int 1 run scoreboard players get @s Chuz.EntityID

# マクロホーミング
    function chuzitems:entity/projectile/charged_shooting_arrow/tick/homing/macro with storage chuz:context

# リセット
    data remove storage chuz:context LockID