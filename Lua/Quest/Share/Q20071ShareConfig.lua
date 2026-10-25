main_id = 20071
local tbl = {}
local n = 2007101
local v = 2007102
local n2 = 2007103
local n3 = 2007104
local n4 = 2007105
local n5 = 2007106
local n6 = 2007107
local n7 = 2007111
local n8 = 2007108
local n9 = 2007109
local n10 = 2007110
tbl[1] = 2007112
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

finish_action = {
    CLIENT = {},
    SERVER = {
        QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {{"133105909"}, {"133105911"}, {"133105910"}, {"133002919"}},
        QUEST_EXEC_DEL_ALL_SPECIFIC_PACK_ITEM = {{"100702"}, {"100701"}, {"100690"}, {"100700"}}
    }
}

fail_action = {
    CLIENT = {},
    SERVER = {
        QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {{"133105909"}, {"133105911"}, {"133105910"}, {"133002919"}},
        QUEST_EXEC_DEL_ALL_SPECIFIC_PACK_ITEM = {{"100702"}, {"100701"}, {"100690"}, {"100700"}}
    }
}

cancel_action = {
    CLIENT = {},
    SERVER = {
        QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {{"133105909"}, {"133105911"}, {"133105910"}, {"133002919"}},
        QUEST_EXEC_DEL_ALL_SPECIFIC_PACK_ITEM = {{"100702"}, {"100701"}, {"100690"}, {"100700"}}
    }
}

rewind_data = {
    ["2007101"] = {},
    ["2007102"] = {},
    ["2007106"] = {},
    ["2007107"] = {},
    ["2007109"] = {},
    ["2007111"] = {},
    ["2007112"] = {}
}

quest_data = {
    ["2007101"] = {},
    ["2007102"] = {},
    ["2007103"] = {},
    ["2007104"] = {},
    ["2007105"] = {},
    ["2007106"] = {},
    ["2007107"] = {
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
    ["2007108"] = {},
    ["2007109"] = {
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
    ["2007110"] = {},
    ["2007111"] = {},
    ["2007112"] = {}
}
