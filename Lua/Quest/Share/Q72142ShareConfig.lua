main_id = 72142
local tbl = {}
local n = 7214205
local v = 7214202
local n2 = 7214203
local n3 = 7214204
tbl[1] = 7214201
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["7214201"] = {}, ["7214202"] = {}}

quest_data = {
    ["7214201"] = {
        npcs = {
            {
                id = 1005,
                alias = "Paimon",
                script = "Actor/Quest/Q352/Paimon",
                pos = "Q3_72106_0",
                scene_id = 3,
                room_id = 1,
                data_index = 1
            }
        }
    },
    ["7214202"] = {
        npcs = {
            {
                id = 1005,
                alias = "Paimon",
                script = "Actor/Quest/Q352/Paimon",
                pos = "Q3_72106_0",
                scene_id = 3,
                room_id = 1,
                data_index = 1
            }
        }
    }
}
