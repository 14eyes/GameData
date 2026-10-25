main_id = 73179
local tbl = {}
local n = 7317902
local v = 7317903
tbl[1] = 7317901
tbl[2] = n
tbl[3] = v
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["7317902"] = {},
    ["7317903"] = {
        npcs = {
            {
                id = 20806,
                alias = "Npc20806",
                script = "Actor/Npc/TempNPC",
                pos = "Q7317902_N20806",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

quest_data = {
    ["7317901"] = {},
    ["7317902"] = {
        npcs = {
            {
                id = 20806,
                alias = "Npc20806",
                script = "Actor/Npc/TempNPC",
                pos = "Q7317902_N20806",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7317903"] = {}
}
