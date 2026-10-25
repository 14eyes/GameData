main_id = 10112
local tbl = {}
local n = 1011202
local v = 1011203
local n2 = 1011204
local n3 = 1011205
local n4 = 1011206
local n5 = 1011207
local n6 = 1011208
local n7 = 1011209
local n8 = 1011210
local n9 = 1011211
tbl[1] = 1011201
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
tbl[6] = n4
tbl[7] = n5
tbl[8] = n6
tbl[9] = n7
tbl[10] = n8
tbl[11] = n9
sub_ids = tbl
rewind_data = {}

rewind_data["1011206"] = {
    npcs = {
        {
            alias = "Npc10243",
            script = "Actor/Npc/TempNPC",
            id = 10243,
            pos = "Q1011205QQman",
            scene_id = 3,
            room_id = 0,
            data_index = 0
        }
    }
}

rewind_data["1011209"] = {
    npcs = {
        {
            alias = "Npc10243",
            script = "Actor/Npc/TempNPC",
            id = 10243,
            pos = "Q1011205QQman",
            scene_id = 3,
            room_id = 0,
            data_index = 0
        }
    }
}

rewind_data["1011210"] = {
    npcs = {
        {
            alias = "Npc10243",
            script = "Actor/Npc/TempNPC",
            id = 10243,
            pos = "Q1011205QQman",
            scene_id = 3,
            room_id = 0,
            data_index = 0
        }
    }
}

rewind_data["1011211"] = {
    npcs = {
        {
            alias = "Wendy",
            script = "Actor/Quest/Q301/Wendy301",
            id = 1001,
            pos = "Q1011205Wendy",
            scene_id = 3,
            room_id = 0,
            data_index = 0
        },
        {
            alias = "Npc141301",
            script = "Actor/Npc/TempNPC",
            id = 141301,
            pos = "Q1011204Wendy",
            scene_id = 3,
            room_id = 0,
            data_index = 0
        }
    }
}

quest_data = {}

quest_data["1011203"] = {
    gadgets = {{id = 70710043, pos = "Q1011203Target", alias = "Q1011203Search", scene_id = 3, room_id = 0}}
}

quest_data["1011204"] = {
    npcs = {
        {
            alias = "Wendy",
            script = "Actor/Quest/Q301/Wendy301",
            id = 1001,
            pos = "Q1011204Wendy",
            scene_id = 3,
            room_id = 0,
            data_index = 0
        }
    }
}

quest_data["1011205"] = {
    npcs = {
        {
            alias = "Npc10243",
            script = "Actor/Npc/TempNPC",
            id = 10243,
            pos = "Q1011205QQman",
            scene_id = 3,
            room_id = 0,
            data_index = 0
        }
    }
}

quest_data["1011210"] = {transmit_points = {{point_id = 1, scene_id = 3, pos = "Q1011205Player"}}}
