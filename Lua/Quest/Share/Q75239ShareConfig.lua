main_id = 75239
local tbl = {}
local n = 7523902
local v = 7523903
tbl[1] = 7523901
tbl[2] = n
tbl[3] = v
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["7523901"] = {}, ["7523902"] = {}, ["7523903"] = {}}

quest_data = {
    ["7523901"] = {
        npcs = {
            {
                id = 6513,
                alias = "Npc6513",
                script = "Actor/Npc/TempNPC",
                pos = "[3_11650:527.962,213.125,14050.800,0.000,230.127,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7523902"] = {
        npcs = {
            {
                id = 6513,
                alias = "Npc6513",
                script = "Actor/Npc/TempNPC",
                pos = "[3_11650:527.962,213.125,14050.800,0.000,230.127,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "[3_11943:526.702,213.125,14049.500,0.000,46.965,0.000]"}}
    },
    ["7523903"] = {
        npcs = {
            {
                id = 6513,
                alias = "Npc6513",
                script = "Actor/Npc/TempNPC",
                pos = "[3_11650:527.962,213.125,14050.800,0.000,230.127,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}
