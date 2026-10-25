main_id = 22117
local tbl = {}
local n = 2211702
local v = 2211703
tbl[1] = 2211701
tbl[2] = n
tbl[3] = v
sub_ids = tbl
local tbl2 = {CLIENT = {}}
local server = {QUEST_EXEC_DEL_ALL_SPECIFIC_PACK_ITEM = {{"100512"}}}
local qUEST_EXEC_REFRESH_GROUP_SUITE = {}
local tbl3 = {}
local str = "133103906,1"
tbl3[1] = "3"
tbl3[2] = str
qUEST_EXEC_REFRESH_GROUP_SUITE[1] = tbl3
server.QUEST_EXEC_REFRESH_GROUP_SUITE = qUEST_EXEC_REFRESH_GROUP_SUITE
tbl2.SERVER = server
finish_action = tbl2
fail_action = {CLIENT = {}, SERVER = {}}
local tbl4 = {CLIENT = {}}
local server2 = {QUEST_EXEC_DEL_ALL_SPECIFIC_PACK_ITEM = {{"100512"}}}
local qUEST_EXEC_REFRESH_GROUP_SUITE2 = {}
local tbl5 = {}
local str2 = "133103906,1"
tbl5[1] = "3"
tbl5[2] = str2
qUEST_EXEC_REFRESH_GROUP_SUITE2[1] = tbl5
server2.QUEST_EXEC_REFRESH_GROUP_SUITE = qUEST_EXEC_REFRESH_GROUP_SUITE2
tbl4.SERVER = server2
cancel_action = tbl4

rewind_data = {
    ["2211701"] = {
        npcs = {
            {
                id = 2093,
                alias = "Npc2093",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q22117NPCBorn",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2211702"] = {
        npcs = {
            {
                id = 2093,
                alias = "Npc2093",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q22117NPCBorn",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2211703"] = {
        npcs = {
            {
                id = 2093,
                alias = "Npc2093",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q22117NPCBorn",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

quest_data = {
    ["2211701"] = {
        npcs = {
            {
                id = 2093,
                alias = "Npc2093",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q22117NPCBorn",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2211702"] = {
        npcs = {
            {
                id = 2093,
                alias = "Npc2093",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q22117NPCBorn",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2211703"] = {
        npcs = {
            {
                id = 2093,
                alias = "Npc2093",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q22117NPCBorn",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}
