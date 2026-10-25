main_id = 72201
local tbl = {}
local n = 7220102
local v = 7220103
tbl[1] = 7220101
tbl[2] = n
tbl[3] = v
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["7220103"] = {}}

quest_data = {
    ["7220101"] = {
        npcs = {
            {
                id = 20423,
                alias = "Npc20423",
                script = "Actor/Npc/TempNPC",
                pos = "72201_wanpi",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7220102"] = {
        npcs = {
            {
                id = 20423,
                alias = "Npc20423",
                script = "Actor/Npc/TempNPC",
                pos = "72201_wanpi",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7220103"] = {
        npcs = {
            {
                id = 20423,
                alias = "Npc20423",
                script = "Actor/Npc/TempNPC",
                pos = "72201_wanpi",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}
