main_id = 70108
local tbl = {}
local n = 7010802
local v = 7010803
local n2 = 7010804
local n3 = 7010805
tbl[1] = 7010801
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

quest_data = {
    ["7010801"] = {},
    ["7010802"] = {},
    ["7010803"] = {
        npcs = {
            {
                id = 1005,
                alias = "Paimon",
                script = "Actor/Quest/Q352/Paimon",
                pos = "Q7010226_Paimon",
                scene_id = 3,
                room_id = 1,
                data_index = 1
            }
        }
    },
    ["7010804"] = {},
    ["7010805"] = {}
}
