main_id = 72729
local tbl = {}
local n = 7272903
local v = 7272902
tbl[1] = 7272901
tbl[2] = n
tbl[3] = v
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["7272901"] = {}, ["7272902"] = {}}

quest_data = {
    ["7272901"] = {
        npcs = {
            {
                id = 1005,
                alias = "Paimon",
                script = "Actor/Quest/Q352/Paimon",
                pos = "Q7272802_Paimon",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7272902"] = {
        npcs = {
            {
                id = 1005,
                alias = "Paimon",
                script = "Actor/Quest/Q352/Paimon",
                pos = "Q7272902_Paimon",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7272903"] = {}
}
