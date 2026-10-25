main_id = 79020
local tbl = {}
local n = 7902012
local v = 7902003
local n2 = 7902004
local n3 = 7902005
local n4 = 7902006
local n5 = 7902007
local n6 = 7902008
local n7 = 7902009
local n8 = 7902010
local n9 = 7902011
local n10 = 7902013
tbl[1] = 7902001
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
tbl[12] = n10
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["7902001"] = {},
    ["7902008"] = {},
    ["7902009"] = {},
    ["7902010"] = {},
    ["7902012"] = {},
    ["7902013"] = {}
}

quest_data = {
    ["7902001"] = {},
    ["7902003"] = {},
    ["7902004"] = {},
    ["7902005"] = {},
    ["7902006"] = {},
    ["7902007"] = {},
    ["7902008"] = {},
    ["7902009"] = {
        npcs = {
            {
                id = 1005,
                alias = "Paimon",
                script = "Actor/Quest/Q352/Paimon",
                pos = "guide_Q7902002",
                scene_id = 9,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7902010"] = {},
    ["7902011"] = {},
    ["7902012"] = {
        npcs = {
            {
                id = 1005,
                alias = "Paimon",
                script = "Actor/Quest/Q352/Paimon",
                pos = "guide_Q7902001",
                scene_id = 9,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7902013"] = {
        npcs = {
            {
                id = 1005,
                alias = "Paimon",
                script = "Actor/Quest/Q352/Paimon",
                pos = "guide_Q7902002",
                scene_id = 9,
                room_id = 0,
                data_index = 1
            }
        }
    }
}
