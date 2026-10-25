main_id = 19138
local tbl = {}
local n = 1913803
local v = 1913801
tbl[1] = 1913802
tbl[2] = n
tbl[3] = v
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
local tbl2 = {CLIENT = {}}
local server = {}
local qUEST_EXEC_REFRESH_GROUP_SUITE = {}
local tbl3 = {}
local str = "201057004,1"
tbl3[1] = "1057"
tbl3[2] = str
qUEST_EXEC_REFRESH_GROUP_SUITE[1] = tbl3
server.QUEST_EXEC_REFRESH_GROUP_SUITE = qUEST_EXEC_REFRESH_GROUP_SUITE
server.QUEST_EXEC_DEL_ALL_SPECIFIC_PACK_ITEM = {{"101608"}}
local qUEST_EXEC_SET_QUEST_GLOBAL_VAR = {}
local tbl4 = {}
local str2 = "0"
tbl4[1] = "1913101"
tbl4[2] = str2
qUEST_EXEC_SET_QUEST_GLOBAL_VAR[1] = tbl4
server.QUEST_EXEC_SET_QUEST_GLOBAL_VAR = qUEST_EXEC_SET_QUEST_GLOBAL_VAR
tbl2.SERVER = server
cancel_action = tbl2
rewind_data = {["1913802"] = {}, ["1913803"] = {}}

quest_data = {
    ["1913801"] = {
        npcs = {
            {
                id = 507,
                alias = "Coop_Ningguang",
                script = "Actor/Npc/TempNPC",
                pos = "Q1913201Ningguang",
                scene_id = 1057,
                room_id = 1,
                data_index = 1
            },
            {
                id = 10211,
                alias = "Npc10211",
                script = "Actor/Npc/TempNPC",
                pos = "Q1913201Ningguang",
                scene_id = 1057,
                room_id = 1,
                data_index = 2
            }
        }
    },
    ["1913802"] = {
        npcs = {
            {
                id = 507,
                alias = "Coop_Ningguang",
                script = "Actor/Npc/TempNPC",
                pos = "Q1913201Ningguang",
                scene_id = 1057,
                room_id = 1,
                data_index = 1
            },
            {
                id = 10211,
                alias = "Npc10211",
                script = "Actor/Npc/TempNPC",
                pos = "Q1913201Ningguang",
                scene_id = 1057,
                room_id = 1,
                data_index = 2
            }
        }
    },
    ["1913803"] = {
        npcs = {
            {
                id = 507,
                alias = "Coop_Ningguang",
                script = "Actor/Npc/TempNPC",
                pos = "Q1913201Ningguang",
                scene_id = 1057,
                room_id = 1,
                data_index = 1
            },
            {
                id = 10211,
                alias = "Npc10211",
                script = "Actor/Npc/TempNPC",
                pos = "Q1913201Ningguang",
                scene_id = 1057,
                room_id = 1,
                data_index = 2
            }
        }
    }
}
