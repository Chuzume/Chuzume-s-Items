#> chuzitems:setting/
#
# 設置を開く
#
# @within function chuzitems:setting/**

# 現在のルール設定を読む
    execute store result score $Success Chuz.Temporary run gamerule sendCommandFeedback

# コマンド表示オフ
    gamerule sendCommandFeedback false

# タイトル
    tellraw @s {"text":"\n\n\n\n\n\n\n\n\n\n\n\n[Settings]"}

## メッセージ表示
    # 弾薬が必要かどうか
        execute if score $Gamerule.AmmoRequire Chuz.Rule matches 0 run tellraw @s ["",{"text":"リロードに弾薬が必要"},{"text":" [ いいえ ]","color":"dark_red","hoverEvent":{"action":"show_text","contents":[{"text":"クリックで切り替え"}]},"clickEvent":{"action":"run_command","value":"/function chuzitems:setting/ammo_require"}}]
        execute if score $Gamerule.AmmoRequire Chuz.Rule matches 1 run tellraw @s ["",{"text":"リロードに弾薬が必要"},{"text":" [ はい ]","color":"green","hoverEvent":{"action":"show_text","contents":[{"text":"クリックで切り替え"}]},"clickEvent":{"action":"run_command","value":"/function chuzitems:setting/ammo_require"}}]
    # 地形を壊すかどうか
        execute if score $Gamerule.Griefing Chuz.Rule matches 0 run tellraw @s ["",{"text":"武器による地形破壊","hoverEvent":{"action":"show_text","contents":[{"text":"mobgreifingのルールに従います","color":"white","italic":false}]}},{"text":" [ いいえ ]","color":"dark_red","hoverEvent":{"action":"show_text","contents":[{"text":"クリックで切り替え"}]},"clickEvent":{"action":"run_command","value":"/function chuzitems:setting/griefing"}}]
        execute if score $Gamerule.Griefing Chuz.Rule matches 1 run tellraw @s ["",{"text":"武器による地形破壊","hoverEvent":{"action":"show_text","contents":[{"text":"mobgreifingのルールに従います","color":"white","italic":false}]}},{"text":" [ はい ]","color":"green","hoverEvent":{"action":"show_text","contents":[{"text":"クリックで切り替え"}]},"clickEvent":{"action":"run_command","value":"/function chuzitems:setting/griefing"}}]
    # リコイルを有効化するか
        execute if score $Gamerule.Recoil Chuz.Rule matches 0 run tellraw @s ["",{"text":"武器のリコイルを有効化"},{"text":" [ いいえ ]","color":"dark_red","hoverEvent":{"action":"show_text","contents":[{"text":"クリックで切り替え"}]},"clickEvent":{"action":"run_command","value":"/function chuzitems:setting/recoil"}}]
        execute if score $Gamerule.Recoil Chuz.Rule matches 1 run tellraw @s ["",{"text":"武器のリコイルを有効化"},{"text":" [ はい ]","color":"green","hoverEvent":{"action":"show_text","contents":[{"text":"クリックで切り替え"}]},"clickEvent":{"action":"run_command","value":"/function chuzitems:setting/recoil"}}]

# 空行
    tellraw @s {"text":"\n\n\n\n"}

# ルール変更以前に1だった場合はスケジュール使って戻す 
    execute if score $Success Chuz.Temporary matches 1 run schedule function chuzitems:setting/return_gamerule 1t

# リセット
    scoreboard players reset $Success Chuz.Temporary