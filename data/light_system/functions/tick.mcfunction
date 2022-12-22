# プレイヤーの手持ちとインベントリを取得
    execute unless score $Temp1 L.System_Core matches -2147483648..2147483647 store result score $Temp1 L.System_Core run time query gametime
    execute store result score $Temp2 L.System_Core run time query gametime
    scoreboard players operation $Temp1 L.System_Core -= $Temp2 L.System_Core
    execute unless score $Temp1 L.System_Core matches 0 as @a run function light_system:get
    scoreboard players operation $Temp1 L.System_Core = $Temp2 L.System_Core