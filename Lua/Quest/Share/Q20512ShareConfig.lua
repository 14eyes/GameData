main_id = 20512
local tbl = {}
local n = 2051202
local v = 2051203
tbl[1] = 2051201
tbl[2] = n
tbl[3] = v
sub_ids = tbl
local tbl2 = {CLIENT = {}}
local server = {}
local qUEST_EXEC_REFRESH_GROUP_SUITE = {}
local tbl3 = {}
local str = "133001907,1"
tbl3[1] = "3"
tbl3[2] = str
qUEST_EXEC_REFRESH_GROUP_SUITE[1] = tbl3
server.QUEST_EXEC_REFRESH_GROUP_SUITE = qUEST_EXEC_REFRESH_GROUP_SUITE
server.QUEST_EXEC_DEL_ALL_SPECIFIC_PACK_ITEM = {{"100455"}}
tbl2.SERVER = server
finish_action = tbl2
local tbl4 = {CLIENT = {}}
local server2 = {}
local qUEST_EXEC_REFRESH_GROUP_SUITE2 = {}
local tbl5 = {}
local str2 = "133001907,1"
tbl5[1] = "3"
tbl5[2] = str2
qUEST_EXEC_REFRESH_GROUP_SUITE2[1] = tbl5
server2.QUEST_EXEC_REFRESH_GROUP_SUITE = qUEST_EXEC_REFRESH_GROUP_SUITE2
server2.QUEST_EXEC_DEL_ALL_SPECIFIC_PACK_ITEM = {{"100455"}}
tbl4.SERVER = server2
fail_action = tbl4
local tbl6 = {CLIENT = {}}
local server3 = {}
local qUEST_EXEC_REFRESH_GROUP_SUITE3 = {}
local tbl7 = {}
local str3 = "133001907,1"
tbl7[1] = "3"
tbl7[2] = str3
qUEST_EXEC_REFRESH_GROUP_SUITE3[1] = tbl7
server3.QUEST_EXEC_REFRESH_GROUP_SUITE = qUEST_EXEC_REFRESH_GROUP_SUITE3
server3.QUEST_EXEC_DEL_ALL_SPECIFIC_PACK_ITEM = {{"100455"}}
tbl6.SERVER = server3
cancel_action = tbl6

rewind_data = {
    ["2051201"] = {
        npcs = {
            {
                id = 1408,
                alias = "Npc1408",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q20511_AnDongNiInitPos",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2051202"] = {
        npcs = {
            {
                id = 1408,
                alias = "Npc1408",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q20511_AnDongNiInitPos",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2051203"] = {
        npcs = {
            {
                id = 1408,
                alias = "Npc1408",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q20511_AnDongNiInitPos",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

quest_data = {
    ["2051201"] = {
        npcs = {
            {
                id = 1408,
                alias = "Npc1408",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q20511_AnDongNiInitPos",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2051202"] = {
        npcs = {
            {
                id = 1408,
                alias = "Npc1408",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q20511_AnDongNiInitPos",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2051203"] = {
        npcs = {
            {
                id = 1408,
                alias = "Npc1408",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q20511_AnDongNiInitPos",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}
