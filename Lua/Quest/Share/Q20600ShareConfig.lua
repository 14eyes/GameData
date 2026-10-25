main_id = 20600
local tbl = {}
local n = 2060002
local v = 2060003
local n2 = 2060004
local n3 = 2060005
local n4 = 2060006
local n5 = 2060007
local n6 = 2060008
local n7 = 2060009
local n8 = 2060010
tbl[1] = 2060001
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
tbl[6] = n4
tbl[7] = n5
tbl[8] = n6
tbl[9] = n7
tbl[10] = n8
sub_ids = tbl
local tbl2 = {CLIENT = {}}
local server = {}
local qUEST_EXEC_REFRESH_GROUP_SUITE = {}
local tbl3 = {}
local str = "133003514,1"
tbl3[1] = "3"
tbl3[2] = str
local tbl4 = {}
local str2 = "133004314,1"
tbl4[1] = "3"
tbl4[2] = str2
local tbl5 = {}
local str3 = "133004315,1"
tbl5[1] = "3"
tbl5[2] = str3
qUEST_EXEC_REFRESH_GROUP_SUITE[1] = tbl3
qUEST_EXEC_REFRESH_GROUP_SUITE[2] = tbl4
qUEST_EXEC_REFRESH_GROUP_SUITE[3] = tbl5
server.QUEST_EXEC_REFRESH_GROUP_SUITE = qUEST_EXEC_REFRESH_GROUP_SUITE
server.QUEST_EXEC_DEL_ALL_SPECIFIC_PACK_ITEM = {{"100517"}, {"100518"}, {"100519"}}
tbl2.SERVER = server
finish_action = tbl2
fail_action = {CLIENT = {}, SERVER = {}}
local tbl6 = {CLIENT = {}}
local server2 = {QUEST_EXEC_DEL_ALL_SPECIFIC_PACK_ITEM = {{"100517"}, {"100518"}, {"100519"}}}
local qUEST_EXEC_REFRESH_GROUP_SUITE2 = {}
local tbl7 = {}
local str4 = "133003514,1"
tbl7[1] = "3"
tbl7[2] = str4
local tbl8 = {}
local str5 = "133004314,1"
tbl8[1] = "3"
tbl8[2] = str5
local tbl9 = {}
local str6 = "133004315,1"
tbl9[1] = "3"
tbl9[2] = str6
qUEST_EXEC_REFRESH_GROUP_SUITE2[1] = tbl7
qUEST_EXEC_REFRESH_GROUP_SUITE2[2] = tbl8
qUEST_EXEC_REFRESH_GROUP_SUITE2[3] = tbl9
server2.QUEST_EXEC_REFRESH_GROUP_SUITE = qUEST_EXEC_REFRESH_GROUP_SUITE2
tbl6.SERVER = server2
cancel_action = tbl6

rewind_data = {
    ["2060001"] = {},
    ["2060005"] = {
        npcs = {
            {
                id = 1517,
                alias = "Npc1517",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Npc1517Born",
                scene_id = 1008,
                room_id = 1,
                data_index = 1
            }
        }
    },
    ["2060006"] = {
        npcs = {
            {
                id = 1517,
                alias = "Npc1517",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Npc1517Born",
                scene_id = 1008,
                room_id = 1,
                data_index = 1
            }
        }
    },
    ["2060007"] = {
        npcs = {
            {
                id = 1517,
                alias = "Npc1517",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Npc1517Born",
                scene_id = 1008,
                room_id = 1,
                data_index = 1
            }
        }
    },
    ["2060008"] = {
        npcs = {
            {
                id = 1517,
                alias = "Npc1517",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Npc1517Born",
                scene_id = 1008,
                room_id = 1,
                data_index = 1
            }
        }
    },
    ["2060009"] = {
        npcs = {
            {
                id = 1517,
                alias = "Npc1517",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Npc1517Born",
                scene_id = 1008,
                room_id = 1,
                data_index = 1
            }
        }
    },
    ["2060010"] = {
        npcs = {
            {
                id = 1517,
                alias = "Npc1517",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Npc1517Born",
                scene_id = 1008,
                room_id = 1,
                data_index = 1
            }
        }
    }
}

quest_data = {
    ["2060001"] = {
        npcs = {
            {
                id = 1517,
                alias = "Npc1517",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Npc1517Born",
                scene_id = 1008,
                room_id = 1,
                data_index = 1
            }
        }
    },
    ["2060002"] = {},
    ["2060003"] = {},
    ["2060004"] = {},
    ["2060005"] = {},
    ["2060006"] = {},
    ["2060007"] = {},
    ["2060008"] = {},
    ["2060009"] = {},
    ["2060010"] = {}
}
