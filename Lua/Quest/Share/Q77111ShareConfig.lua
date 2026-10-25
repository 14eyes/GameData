main_id = 77111
local tbl = {}
local n = 7711101
local v = 7711106
local n2 = 7711103
local n3 = 7711104
local n4 = 7711102
tbl[1] = 7711105
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
tbl[6] = n4
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["7711104"] = {}, ["7711105"] = {}, ["7711106"] = {}}

quest_data = {
    ["7711101"] = {},
    ["7711102"] = {
        npcs = {
            {
                id = 12404,
                alias = "Npc12404",
                script = "Actor/Npc/TempNPC",
                pos = "[3_15723:8724.428,131.122,8742.543,0.000,138.998,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7711103"] = {},
    ["7711104"] = {
        npcs = {
            {
                id = 12404,
                alias = "Npc12404",
                script = "Actor/Npc/TempNPC",
                pos = "[3_15755:8737.192,130.852,8709.851,0.000,338.305,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7711105"] = {},
    ["7711106"] = {
        npcs = {
            {
                id = 12404,
                alias = "Npc12404",
                script = "Actor/Npc/TempNPC",
                pos = "[3_15723:8724.428,131.122,8742.543,0.000,138.998,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}
