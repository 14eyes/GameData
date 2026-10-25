main_id = 71808
local tbl = {}
local n = 7180802
local v = 7180803
local n2 = 7180804
local n3 = 7180809
local n4 = 7180808
local n5 = 7180805
local n6 = 7180806
local n7 = 7180807
local n8 = 7180810
local n9 = 7180811
tbl[1] = 7180801
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
tbl[6] = n4
tbl[7] = n5
tbl[8] = n6
tbl[9] = n7
tbl[10] = n8
tbl[11] = n9
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["7180802"] = {},
    ["7180803"] = {},
    ["7180804"] = {},
    ["7180805"] = {},
    ["7180806"] = {},
    ["7180807"] = {}
}

quest_data = {
    ["7180801"] = {},
    ["7180802"] = {},
    ["7180803"] = {},
    ["7180804"] = {
        npcs = {
            {
                id = 1005,
                alias = "Paimon",
                script = "Actor/Quest/Q352/Paimon",
                pos = "Q71808Paimon",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "Q71808Player"}}
    },
    ["7180805"] = {},
    ["7180806"] = {},
    ["7180807"] = {},
    ["7180808"] = {}
}
