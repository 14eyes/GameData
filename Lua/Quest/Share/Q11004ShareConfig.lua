main_id = 11004
local tbl = {}
local n = 1100499
local v = 1100498
local n2 = 1100402
local n3 = 1100403
tbl[1] = 1100401
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
sub_ids = tbl
XianglingData = {ID = 1012, Alias = "Xiangling"}
PaimonData = {ID = 1005, Alias = "Paimon"}
rewind_data = {}

rewind_data["1100402"] = {
    gadgets = {{id = 70710029, pos = "Q1100498FreezeBoar", alias = "FreezeBoar", scene_id = 20005, room_id = 0}}
}

rewind_data["1100403"] = {
    npcs = {
        {
            alias = "Xiangling",
            script = "Actor/Npc/TempNPC",
            id = 1012,
            pos = "Q1100403XL",
            scene_id = 20005,
            room_id = 0,
            data_index = 0
        }
    },
    gadgets = {{id = 70710029, pos = "Q1100498FreezeBoar", alias = "FreezeBoar", scene_id = 20005, room_id = 0}}
}

quest_data = {}

quest_data["1100498"] = {
    gadgets = {{id = 70710029, pos = "Q1100498FreezeBoar", alias = "FreezeBoar", scene_id = 20005, room_id = 0}}
}

quest_data["1100402"] = {
    npcs = {
        {
            alias = "Xiangling",
            script = "Actor/Npc/TempNPC",
            id = 1012,
            pos = "Q1100403XL",
            scene_id = 20005,
            room_id = 0,
            data_index = 0
        }
    },
    transmit_points = {{point_id = 1, scene_id = 20005, pos = "Q1100403PlayerPos"}}
}

quest_data["1100403"] = {
    npcs = {
        {
            alias = "Xiangling",
            script = "Actor/Npc/TempNPC",
            id = 1012,
            pos = "Q1100403XL",
            scene_id = 20005,
            room_id = 0,
            data_index = 0
        }
    },
    gadgets = {{id = 70710029, pos = "Q1100403FreezeBoar", alias = "FreezeBoar", scene_id = 20005, room_id = 0}},
    transmit_points = {{point_id = 1, scene_id = 20005, pos = "Q1100403PlayerPos"}}
}
