execute store result score #lotto_count ng if data storage ng:lotto_gem_upg items[]
execute store result storage ng:tmp lotto.items int 1 run scoreboard players remove #lotto_count ng 1
function ng:lotto_itempool with storage ng:tmp lotto
function ng:lotto_copyitem_upg with storage ng:tmp lotto

function ng:giveitem with storage ng:tmp mainhand

tellraw @s [{"text": "[","color": "white"},{"text": "NyaaGem","color": "green"},{"text": "] ","color": "white"},{"text": "获得物品 — ","color": "white"},{"storage": "ng:tmp","nbt":"mainhand.tag.display.Name","interpret": true}]
tellraw @s [{"text": "[","color": "white"},{"text": "NyaaGem","color": "green"},{"text": "] ","color": "white"},{"text": "すごい! すごい! ","color": "white"}]

playsound entity.parrot.ambient player @s ~ ~ ~ 1 1
particle totem_of_undying ~ ~1 ~ 0 0 0 0.5 20