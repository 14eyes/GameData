main_id = 22038
local tbl = {}
local n = 2203802
local v = 2203803
local n2 = 2203804
tbl[1] = 2203801
tbl[2] = n
tbl[3] = v
tbl[4] = n2
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
local tbl2 = {CLIENT = {}}
local server = {}
local qUEST_EXEC_REFRESH_GROUP_SUITE = {}
local tbl3 = {}
local str = "201060003,1"
tbl3[1] = "1060"
tbl3[2] = str
local tbl4 = {}
local str2 = "201060004,1"
tbl4[1] = "1060"
tbl4[2] = str2
qUEST_EXEC_REFRESH_GROUP_SUITE[1] = tbl3
qUEST_EXEC_REFRESH_GROUP_SUITE[2] = tbl4
server.QUEST_EXEC_REFRESH_GROUP_SUITE = qUEST_EXEC_REFRESH_GROUP_SUITE
tbl2.SERVER = server
cancel_action = tbl2

rewind_data = {
    ["2203801"] = {},
    ["2203802"] = {
        npcs = {
            {
                id = 3011,
                alias = "Npc3011",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q22038Nakanishi",
                scene_id = 1060,
                room_id = 1,
                data_index = 1
            }
        }
    },
    ["2203803"] = {
        npcs = {
            {
                id = 3011,
                alias = "Npc3011",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q22038Nakanishi",
                scene_id = 1060,
                room_id = 1,
                data_index = 1
            }
        }
    },
    ["2203804"] = {
        npcs = {
            {
                id = 3011,
                alias = "Npc3011",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q22038Nakanishi",
                scene_id = 1060,
                room_id = 1,
                data_index = 1
            }
        }
    }
}

quest_data = {
    ["2203801"] = {
        npcs = {
            {
                id = 3011,
                alias = "Npc3011",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q22038Nakanishi",
                scene_id = 1060,
                room_id = 1,
                data_index = 1
            }
        }
    },
    ["2203802"] = {},
    ["2203803"] = {},
    ["2203804"] = {}
}
