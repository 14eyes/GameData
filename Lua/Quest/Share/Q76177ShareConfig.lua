main_id = 76177
local tbl = {}
local n = 7617711
local v = 7617704
local n2 = 7617701
local n3 = 7617705
local n4 = 7617706
local n5 = 7617709
tbl[1] = 7617702
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
tbl[6] = n4
tbl[7] = n5
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["7617701"] = {},
    ["7617702"] = {},
    ["7617704"] = {},
    ["7617705"] = {},
    ["7617706"] = {},
    ["7617709"] = {},
    ["7617711"] = {}
}

quest_data = {
    ["7617701"] = {},
    ["7617702"] = {},
    ["7617704"] = {},
    ["7617705"] = {},
    ["7617706"] = {
        npcs = {
            {
                id = 1005,
                alias = "Paimon",
                script = "Actor/Npc/TempNPC",
                pos = "[102_388:599.594,4.381,-92.574]",
                scene_id = 102,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7617709"] = {},
    ["7617711"] = {
        npcs = {
            {
                id = 1005,
                alias = "Paimon",
                script = "Actor/Npc/TempNPC",
                pos = "[102_367:735.390,57.554,109.333]",
                scene_id = 102,
                room_id = 0,
                data_index = 1
            }
        }
    }
}
