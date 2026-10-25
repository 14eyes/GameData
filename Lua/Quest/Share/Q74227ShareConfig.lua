main_id = 74227
local tbl = {}
local n = 7422702
local v = 7422703
tbl[1] = 7422701
tbl[2] = n
tbl[3] = v
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["7422701"] = {}, ["7422702"] = {}}

quest_data = {
    ["7422701"] = {},
    ["7422702"] = {
        npcs = {
            {
                id = 1005,
                alias = "Paimon",
                script = "Actor/Quest/Q352/Paimon",
                pos = "[3_340900088:4799.181,344.551,3653.852,0.000,282.874,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7422703"] = {}
}
