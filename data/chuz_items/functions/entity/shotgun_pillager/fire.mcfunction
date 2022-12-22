    
# 発砲
    playsound minecraft:ui.stonecutter.take_result block @a ~ ~ ~ 2 2
    playsound minecraft:entity.firework_rocket.blast player @a ~ ~ ~ 3 0.5
    playsound minecraft:entity.shulker.shoot player @a ~ ~ ~ 3 2
    playsound minecraft:block.chain.break player @a ~ ~ ~ 2 2
    playsound minecraft:entity.blaze.hurt player @a ~ ~ ~ 2 1.5

# あまりにもひどいので向き直る
    execute facing entity @p feet run tp @s ~ ~ ~ ~ ~

# 弾を召喚
    execute anchored eyes run particle smoke ^-0.25 ^ ^0.7 0 0 0 0.05 10
    function chuz_items:entity/shotgun_pillager/summon_shell
    function chuz_items:entity/shotgun_pillager/summon_shell
    function chuz_items:entity/shotgun_pillager/summon_shell
    function chuz_items:entity/shotgun_pillager/summon_shell
    function chuz_items:entity/shotgun_pillager/summon_shell

# 持ち替え
    item replace entity @s weapon.mainhand with minecraft:crossbow{CustomModelData:33,Enchantments:[{id:"minecraft:quick_charge",lvl:6s}],Charged:1b}
