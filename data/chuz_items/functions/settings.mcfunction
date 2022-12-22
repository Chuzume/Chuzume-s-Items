# タイトル
    tellraw @s {"text":"\n\n[Settings]"}

# 弾薬が必要かどうか
    execute if score $S.Rif_Setting1 Chuz.Rule matches 0 run tellraw @s ["",{"text":"リロードに弾薬が必要かどうか","clickEvent":{"action":"run_command","value":"/function chuz_items:setting/ammo_require"}},{"text":" [ いいえ ]","color":"dark_red"}]
    execute if score $S.Rif_Setting1 Chuz.Rule matches 1 run tellraw @s ["",{"text":"リロードに弾薬が必要かどうか","clickEvent":{"action":"run_command","value":"/function chuz_items:setting/ammo_require"}},{"text":" [ はい ]","color":"green"}]

# 地形を壊すかどうか
    execute if score $S.Rif_Setting2 Chuz.Rule matches 0 run tellraw @s ["",{"text":"武器が地形を壊すかどうか","hoverEvent":{"action":"show_text","contents":[{"text":"mobgreifingのルールに従います","color":"white","italic":false}]},"clickEvent":{"action":"run_command","value":"/function chuz_items:setting/griefing"}},{"text":" [ いいえ ]","color":"dark_red"}]
    execute if score $S.Rif_Setting2 Chuz.Rule matches 1 run tellraw @s ["",{"text":"武器が地形を壊すかどうか","hoverEvent":{"action":"show_text","contents":[{"text":"mobgreifingのルールに従います","color":"white","italic":false}]},"clickEvent":{"action":"run_command","value":"/function chuz_items:setting/griefing"}},{"text":" [ はい ]","color":"green"}]

# 空行
    tellraw @s {"text":"\n\n\n\n"}