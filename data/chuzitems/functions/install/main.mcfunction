tellraw @a ["\n----------\n\n",{"text":"[Chuzume's Items] の導入に成功しました。\n[Chuzume's Items] has been installed.\n\nCreated by "},{"text":"Chuzume","color":"gold"},"\n\n----------\n"]
forceload add 100000 100000
execute unless block 100001 -64 100000 light_blue_shulker_box run setblock 100001 -64 100000 light_blue_shulker_box
execute unless block 100001 1 100000 bedrock run setblock 100001 1 100000 bedrock
scoreboard players set $Gamerule.AmmoRequire Chuz.Rule 1
scoreboard players set $Gamerule.Griefing Chuz.Rule 0
scoreboard players set $Gamerule.Recoil Chuz.Rule 1
# Chuz.Vector0が存在しなければ召喚
    forceload add 0 0 0 0
    execute unless entity @e[type=marker,tag=Chuz.Vector0] run summon marker 0 0 0 {Tags:["Chuz.Vector0"]}