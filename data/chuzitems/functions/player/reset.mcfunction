#> chuzitems:player/reset
#
# 色々リセットする
#
# @within function chuzitems:player/tick

# タグ
    tag @s[tag=ChuzItems.ReloadStart] remove ChuzItems.ReloadStart

# スコア
    scoreboard players reset @s[scores={ChuzItems.Sneak=0..}] ChuzItems.Sneak
    scoreboard players reset @s[scores={ChuzItems.Crossbow=1..}] ChuzItems.Crossbow
    scoreboard players reset @s[scores={ChuzItems.FungusStick=0..}] ChuzItems.FungusStick
    scoreboard players reset @s[scores={ChuzItems.KnowledgeBook=1..}] ChuzItems.KnowledgeBook
    scoreboard players reset @s[scores={ChuzItems.Trade=1..}] ChuzItems.Trade
    scoreboard players reset @s[scores={ChuzItems.Jump=1..}] ChuzItems.Jump