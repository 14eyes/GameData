main_id = 76019
local tbl = {}
local n = 7601901
local v = 7601902
local n2 = 7601903
tbl[1] = 7601904
tbl[2] = n
tbl[3] = v
tbl[4] = n2
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["7601902"] = {}, ["7601903"] = {}, ["7601904"] = {}}

quest_data = {
    ["7601901"] = {},
    ["7601902"] = {},
    ["7601903"] = {
        npcs = {
            {
                id = 21958,
                alias = "Npc21958",
                script = "Actor/Npc/TempNPC",
                pos = "[3_13253:1490.402,204.170,9488.233,0.000,326.498,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7601904"] = {
        npcs = {
            {
                id = 21958,
                alias = "Npc21958",
                script = "Actor/Npc/TempNPC",
                pos = "[3_11404:1490.373,204.201,9488.224,0.000,144.053,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 21959,
                alias = "Npc21959",
                script = "Actor/Npc/TempNPC",
                pos = "[3_11426:1491.916,204.171,9486.171,0.000,324.755,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    }
}
