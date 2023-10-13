# まぁまずはアイテムが必要であろう
    give @p chain_command_block{display:{Name:'{"text":"Light Bullet","color":"white","italic":false}',Lore:['{"text":" "}','{"text":"たくさん作れるお手軽弾薬。","color":"gray","italic":false}','{"text":"どういうわけか、色々な銃で使える。","color":"gray","italic":false}']},CustomModelData:5,ChuzData:{ItemID:Light_Bullet}} 16

# なんだこのチェストは！消えてもらおう
    clear @s chest 1

# 進捗消去
    advancement revoke @s only chuz_bullet:craft/light_bullet