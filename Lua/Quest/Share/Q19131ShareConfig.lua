main_id = 19131
local tbl = {}
local n = 1913102
local v = 1913103
local n2 = 1913104
tbl[1] = 1913101
tbl[2] = n
tbl[3] = v
tbl[4] = n2
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
local tbl2 = {CLIENT = {}}
local server = {}
local qUEST_EXEC_SET_QUEST_GLOBAL_VAR = {}
local tbl3 = {}
local str = "0"
tbl3[1] = "1913101"
tbl3[2] = str
qUEST_EXEC_SET_QUEST_GLOBAL_VAR[1] = tbl3
server.QUEST_EXEC_SET_QUEST_GLOBAL_VAR = qUEST_EXEC_SET_QUEST_GLOBAL_VAR
tbl2.SERVER = server
cancel_action = tbl2
rewind_data = {["1913101"] = {}, ["1913102"] = {}}

quest_data = {
    ["1913101"] = {
        npcs = {
            {
                id = 507,
                alias = "Coop_Ningguang",
                script = "Actor/Npc/TempNPC",
                pos = "Q1913101Ningguang",
                scene_id = 1057,
                room_id = 1,
                data_index = 1
            },
            {
                id = 2143,
                alias = "Npc2143",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "G1913101Baiwen",
                scene_id = 1057,
                room_id = 1,
                data_index = 2
            },
            {
                id = 2140,
                alias = "Npc2140",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1913101Baixiao",
                scene_id = 1057,
                room_id = 1,
                data_index = 3
            },
            {
                id = 2142,
                alias = "Npc2142",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1913101Baishi",
                scene_id = 1057,
                room_id = 1,
                data_index = 4
            },
            {
                id = 10211,
                alias = "Npc10211",
                script = "Actor/Npc/TempNPC",
                pos = "Q1913101Ningguang",
                scene_id = 1057,
                room_id = 1,
                data_index = 5
            }
        }
    },
    ["1913102"] = {
        npcs = {
            {
                id = 507,
                alias = "Coop_Ningguang",
                script = "Actor/Npc/TempNPC",
                pos = "Q1913102Ningguang",
                scene_id = 1057,
                room_id = 1,
                data_index = 1
            },
            {
                id = 2142,
                alias = "Npc2142",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1913102Baishi",
                scene_id = 1057,
                room_id = 1,
                data_index = 2
            },
            {
                id = 10211,
                alias = "Npc10211",
                script = "Actor/Npc/TempNPC",
                pos = "Q1913102Ningguang",
                scene_id = 1057,
                room_id = 1,
                data_index = 3
            }
        }
    },
    ["1913103"] = {},
    ["1913104"] = {}
}
