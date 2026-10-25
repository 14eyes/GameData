main_id = 75262
local tbl = {}
local n = 7526203
local v = 7526204
local n2 = 7526201
tbl[1] = 7526202
tbl[2] = n
tbl[3] = v
tbl[4] = n2
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["7526201"] = {},
    ["7526202"] = {},
    ["7526204"] = {
        npcs = {
            {
                id = 21997,
                alias = "Npc21997",
                script = "Actor/Npc/TempNPC",
                pos = "[3_352200044:1368.087,228.002,15235.580,0.000,221.229,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

quest_data = {
    ["7526201"] = {},
    ["7526202"] = {
        npcs = {
            {
                id = 21997,
                alias = "Npc21997",
                script = "Actor/Npc/TempNPC",
                pos = "[3_352200044:1368.087,228.002,15235.580,0.000,221.229,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7526203"] = {},
    ["7526204"] = {}
}
