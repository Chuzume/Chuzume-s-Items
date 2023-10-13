# まぁまずはアイテムが必要であろう
    give @p chain_command_block{display:{Name:'{"text":"Shotshell","color":"white","italic":false}',Lore:['{"text":" "}','{"text":"強力な散弾が詰まっている。","color":"gray","italic":false}','{"text":"どういうわけか、色々な銃で使える。","color":"gray","italic":false}']},CustomModelData:2,ChuzData:{ItemID:Shotshell}} 8

# なんだこのチェストは！消えてもらおう
    clear @s chest 1

# 進捗消去
    advancement revoke @s only chuz_bullet:craft/shot_shell