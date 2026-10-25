main_id = 77112
local tbl = {}
local n = 7711202
local v = 7711203
local n2 = 7711204
local n3 = 7711205
local n4 = 7711206
tbl[1] = 7711201
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
tbl[6] = n4
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["7711201"] = {}, ["7711202"] = {}, ["7711203"] = {}, ["7711204"] = {}, ["7711205"] = {}}

quest_data = {
    ["7711201"] = {
        npcs = {
            {
                id = 22722,
                alias = "Npc22722",
                script = "Actor/Npc/TempNPC",
                pos = "[3_15727:8737.773,120.308,8862.511]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7711202"] = {
        npcs = {
            {
                id = 22722,
                alias = "Npc22722",
                script = "Actor/Npc/TempNPC",
                pos = "[3_15727:8737.773,120.308,8862.511]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7711203"] = {},
    ["7711204"] = {
        npcs = {
            {
                id = 12404,
                alias = "Npc12404",
                script = "Actor/Npc/TempNPC",
                pos = "[3_15728:8738.589,120.088,8866.002,0.000,53.117,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7711205"] = {},
    ["7711206"] = {}
}
