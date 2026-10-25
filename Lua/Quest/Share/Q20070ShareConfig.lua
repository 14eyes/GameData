main_id = 20070
local tbl = {}
local n = 2007008
local v = 2007009
local n2 = 2007010
local n3 = 2007011
local n4 = 2007001
local n5 = 2007006
local n6 = 2007003
local n7 = 2007012
local n8 = 2007007
local n9 = 2007004
local n10 = 2007014
local n11 = 2007013
tbl[1] = 2007015
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
        QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {{"133105910"}, {"133105909"}, {"133002919"}, {"133105911"}},
        QUEST_EXEC_DEL_ALL_SPECIFIC_PACK_ITEM = {{"100690"}, {"100702"}, {"100702"}, {"100701"}}
    }
}

fail_action = {
    CLIENT = {},
    SERVER = {
        QUEST_EXEC_DEL_ALL_SPECIFIC_PACK_ITEM = {{"100690"}, {"100702"}, {"100702"}, {"100701"}},
        QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {{"133105910"}, {"133105909"}, {"133002919"}, {"133105911"}}
    }
}

cancel_action = {
    CLIENT = {},
    SERVER = {
        QUEST_EXEC_DEL_ALL_SPECIFIC_PACK_ITEM = {{"100690"}, {"100702"}, {"100702"}, {"100701"}},
        QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {{"133105910"}, {"133105909"}, {"133002919"}, {"133105911"}}
    }
}

rewind_data = {
    ["2007001"] = {},
    ["2007004"] = {},
    ["2007007"] = {},
    ["2007008"] = {},
    ["2007014"] = {},
    ["2007015"] = {}
}

quest_data = {
    ["2007001"] = {},
    ["2007003"] = {},
    ["2007004"] = {
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
    ["2007006"] = {},
    ["2007007"] = {
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
    ["2007008"] = {},
    ["2007009"] = {},
    ["2007010"] = {},
    ["2007011"] = {},
    ["2007012"] = {},
    ["2007013"] = {},
    ["2007014"] = {},
    ["2007015"] = {}
}
