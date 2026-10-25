main_id = 20072
local tbl = {}
local n = 2007201
local v = 2007202
local n2 = 2007203
local n3 = 2007204
local n4 = 2007205
local n5 = 2007206
local n6 = 2007207
local n7 = 2007208
local n8 = 2007212
local n9 = 2007209
local n10 = 2007210
local n11 = 2007211
tbl[1] = 2007213
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
tbl[13] = n11
sub_ids = tbl

finish_action = {
    CLIENT = {},
    SERVER = {
        QUEST_EXEC_DEL_ALL_SPECIFIC_PACK_ITEM = {{"100690"}, {"100702"}, {"100701"}, {"100700"}},
        QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {{"133105910"}, {"133002919"}, {"133105909"}, {"133105911"}}
    }
}

fail_action = {
    CLIENT = {},
    SERVER = {
        QUEST_EXEC_DEL_ALL_SPECIFIC_PACK_ITEM = {{"100690"}, {"100702"}, {"100701"}, {"100700"}},
        QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {{"133105910"}, {"133002919"}, {"133105909"}, {"133105911"}}
    }
}

cancel_action = {
    CLIENT = {},
    SERVER = {
        QUEST_EXEC_DEL_ALL_SPECIFIC_PACK_ITEM = {{"100690"}, {"100702"}, {"100701"}, {"100700"}},
        QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {{"133105910"}, {"133002919"}, {"133105909"}, {"133105911"}}
    }
}

rewind_data = {
    ["2007201"] = {},
    ["2007202"] = {},
    ["2007205"] = {},
    ["2007208"] = {},
    ["2007210"] = {},
    ["2007212"] = {},
    ["2007213"] = {}
}

quest_data = {
    ["2007201"] = {},
    ["2007202"] = {},
    ["2007203"] = {},
    ["2007204"] = {},
    ["2007205"] = {},
    ["2007206"] = {},
    ["2007207"] = {},
    ["2007208"] = {
        npcs = {
            {
                id = 1425,
                alias = "Npc1425",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "NpcFemaleInsomniaStand07Born",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2007209"] = {},
    ["2007210"] = {
        npcs = {
            {
                id = 1425,
                alias = "Npc1425",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "NpcFemaleInsomniaStand07Born",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2007211"] = {},
    ["2007212"] = {},
    ["2007213"] = {}
}
