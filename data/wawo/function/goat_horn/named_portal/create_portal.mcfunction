
$summon area_effect_cloud ~ ~ ~ {custom_particle:{type:"reverse_portal"},Radius:1f,Duration:1800,Tags:["eden.goat_horn_portal.named",$(portal_name)]}
$summon marker ~ ~ ~ {Tags:["eden.goat_horn_portal.named.chunk_check",$(portal_name)]}
$execute at @e[type=minecraft:area_effect_cloud,tag=eden.goat_horn_portal.named,nbt={Tags:[$(portal_name)]}] run forceload add ~ ~

#messages currently disabled for named horns due to the check breaking
#$execute as @a at @a if items entity @s container.* minecraft:goat_horn[minecraft:custom_data={wawo:goat_horn_tp},minecraft:custom_name='$(custom_name)'] run playsound minecraft:entity.chicken.egg neutral @s ~ ~ ~ .6 2
#$execute as @a if items entity @s container.* minecraft:goat_horn[minecraft:custom_data={wawo:goat_horn_tp},minecraft:custom_name='$(custom_name)'] run tellraw @s [{"bold":false,"color":"dark_purple","italic":false,"text":"ℹ "},{"bold":false,"color":"#FFE6B5","italic":false,"selector":"@s"},{"bold":false,"color":"#FFE6B5","italic":false,"text":" sounded the "},{"bold":false,"color":"light_purple","italic":false,"nbt":"custom_name","storage":"wawo:goat_horn"},{"bold":false,"color":"#FFE6B5","italic":false,"text":" Horn!"}]

data remove storage eden:temp goat_horn.tp