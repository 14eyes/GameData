main_id = 72252
local tbl = {}
local n = 7225202
tbl[1] = 7225201
tbl[2] = n
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["7225201"] = {}, ["7225202"] = {}}

quest_data = {
    ["7225201"] = {},
    ["7225202"] = {
        npcs = {
            {
                id = 1005,
                alias = "Paimon",
                script = "Actor/Quest/Q352/Paimon",
                pos = "Q_72252_Paimon_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}
