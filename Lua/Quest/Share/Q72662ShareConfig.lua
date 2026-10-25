main_id = 72662
local tbl = {}
local n = 7266202
local v = 7266203
local n2 = 7266207
local n3 = 7266208
local n4 = 7266204
local n5 = 7266209
local n6 = 7266205
local n7 = 7266206
tbl[1] = 7266201
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
tbl[6] = n4
tbl[7] = n5
tbl[8] = n6
tbl[9] = n7
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
local tbl2 = {CLIENT = {}}
local server = {}
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {}
local tbl3 = {}
local str = ""
tbl3[1] = "133220639"
tbl3[2] = str
local tbl4 = {}
local str2 = ""
tbl4[1] = "133220640"
tbl4[2] = str2
local tbl5 = {}
local str3 = ""
tbl5[1] = "133220649"
tbl5[2] = str3
local tbl6 = {}
local str4 = ""
tbl6[1] = "133220119"
tbl6[2] = str4
local tbl7 = {}
local str5 = ""
tbl7[1] = "133220090"
tbl7[2] = str5
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[2] = tbl4
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[3] = tbl5
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[4] = tbl6
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[5] = tbl7
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
local qUEST_EXEC_UNLOCK_POINT = {}
local tbl8 = {}
local str6 = "401"
tbl8[1] = "3"
tbl8[2] = str6
qUEST_EXEC_UNLOCK_POINT[1] = tbl8
server.QUEST_EXEC_UNLOCK_POINT = qUEST_EXEC_UNLOCK_POINT
server.QUEST_EXEC_DEL_ALL_SPECIFIC_PACK_ITEM = {{"101546"}}
tbl2.SERVER = server
cancel_action = tbl2
rewind_data = {["7266201"] = {}, ["7266204"] = {}, ["7266205"] = {}}

quest_data = {
    ["7266201"] = {
        npcs = {
            {
                id = 3200,
                alias = "Npc3200",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q72661_jingjinghua",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7266202"] = {
        npcs = {
            {
                id = 3200,
                alias = "Npc3200",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q72661_jingjinghua",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7266203"] = {
        npcs = {
            {
                id = 3200,
                alias = "Npc3200",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q72661_jingjinghua",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7266204"] = {
        npcs = {
            {
                id = 3200,
                alias = "Npc3200",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q72662_jingjinghua2",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12174,
                alias = "Npc12174",
                script = "Actor/Npc/TempNPC",
                pos = "Q72662_jingjinghua2",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["7266205"] = {
        npcs = {
            {
                id = 3200,
                alias = "Npc3200",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q72662_jingjinghua2",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7266206"] = {
        npcs = {
            {
                id = 3200,
                alias = "Npc3200",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q72662_jingjinghua2",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7266207"] = {
        npcs = {
            {
                id = 3200,
                alias = "Npc3200",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q72661_jingjinghua",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7266208"] = {
        npcs = {
            {
                id = 3200,
                alias = "Npc3200",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q72661_jingjinghua",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7266209"] = {}
}
