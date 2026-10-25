main_id = 19135
local tbl = {}
local n = 1913502
local v = 1913503
tbl[1] = 1913501
tbl[2] = n
tbl[3] = v
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {QUEST_EXEC_DEL_ALL_SPECIFIC_PACK_ITEM = {{"101608"}}}}
fail_action = {CLIENT = {}, SERVER = {}}
local tbl2 = {CLIENT = {}}
local server = {QUEST_EXEC_DEL_ALL_SPECIFIC_PACK_ITEM = {{"101608"}}}
local qUEST_EXEC_SET_QUEST_GLOBAL_VAR = {}
local tbl3 = {}
local str = "0"
tbl3[1] = "1913101"
tbl3[2] = str
qUEST_EXEC_SET_QUEST_GLOBAL_VAR[1] = tbl3
server.QUEST_EXEC_SET_QUEST_GLOBAL_VAR = qUEST_EXEC_SET_QUEST_GLOBAL_VAR
tbl2.SERVER = server
cancel_action = tbl2

rewind_data = {
    ["1913501"] = {},
    ["1913502"] = {
        npcs = {
            {
                id = 2083,
                alias = "Npc2083",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1913501_C1913501Yinger",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1913503"] = {
        npcs = {
            {
                id = 2020,
                alias = "Npc2020",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1100807Xingxi",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

quest_data = {
    ["1913501"] = {
        npcs = {
            {
                id = 2083,
                alias = "Npc2083",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1913501_C1913501Yinger",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 507,
                alias = "Coop_Ningguang",
                script = "Actor/Npc/TempNPC",
                pos = "Q1913501_C1913501Ningguang",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 10211,
                alias = "Npc10211",
                script = "Actor/Npc/TempNPC",
                pos = "Q1913501_C1913501Ningguang",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["1913502"] = {
        npcs = {
            {
                id = 2020,
                alias = "Npc2020",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1100807Xingxi",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 507,
                alias = "Coop_Ningguang",
                script = "Actor/Npc/TempNPC",
                pos = "Q1100807Xingxi",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 10211,
                alias = "Npc10211",
                script = "Actor/Npc/TempNPC",
                pos = "Q1100807Xingxi",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["1913503"] = {
        npcs = {
            {
                id = 507,
                alias = "Coop_Ningguang",
                script = "Actor/Npc/TempNPC",
                pos = "Q1913503_C1913503Ningguang",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 10211,
                alias = "Npc10211",
                script = "Actor/Npc/TempNPC",
                pos = "Q1913503_C1913503Ningguang",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    }
}
