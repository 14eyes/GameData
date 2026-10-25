main_id = 72251
local tbl = {}
local n = 7225102
local v = 7225103
tbl[1] = 7225101
tbl[2] = n
tbl[3] = v
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["7225101"] = {}, ["7225102"] = {}, ["7225103"] = {}}

quest_data = {
    ["7225101"] = {},
    ["7225102"] = {},
    ["7225103"] = {
        npcs = {
            {
                id = 1005,
                alias = "Paimon",
                script = "Actor/Quest/Q352/Paimon",
                pos = "Q_72251_Player_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}
