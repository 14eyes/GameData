main_id = 71813
local tbl = {}
local n = 7181302
local v = 7181303
local n2 = 7181304
local n3 = 7181305
local n4 = 7181306
local n5 = 7181307
local n6 = 7181308
local n7 = 7181309
local n8 = 7181310
local n9 = 7181311
tbl[1] = 7181301
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

finish_action = {
    CLIENT = {},
    SERVER = {
        QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {{"133102914"}},
        QUEST_EXEC_DEL_ALL_SPECIFIC_PACK_ITEM = {{"100715"}}
    }
}

fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["7181302"] = {},
    ["7181303"] = {},
    ["7181304"] = {},
    ["7181305"] = {},
    ["7181306"] = {},
    ["7181307"] = {},
    ["7181310"] = {},
    ["7181311"] = {}
}

quest_data = {
    ["7181301"] = {},
    ["7181302"] = {},
    ["7181303"] = {},
    ["7181304"] = {},
    ["7181305"] = {},
    ["7181306"] = {},
    ["7181307"] = {},
    ["7181308"] = {},
    ["7181309"] = {},
    ["7181310"] = {},
    ["7181311"] = {
        npcs = {
            {
                id = 2143,
                alias = "Npc2143",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q71814Baiwen",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}
