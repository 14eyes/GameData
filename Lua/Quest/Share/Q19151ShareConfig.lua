main_id = 19151
local tbl = {}
local n = 1915104
local v = 1915102
local n2 = 1915103
tbl[1] = 1915101
tbl[2] = n
tbl[3] = v
tbl[4] = n2
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
local tbl2 = {CLIENT = {}}
local server = {}
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {}
local tbl3 = {}
local str = ""
tbl3[1] = "201073005"
tbl3[2] = str
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
tbl2.SERVER = server
cancel_action = tbl2
rewind_data = {["1915101"] = {}, ["1915104"] = {}}

quest_data = {
    ["1915101"] = {
        npcs = {
            {
                id = 12905,
                alias = "Npc12905",
                script = "Actor/Npc/TempNPC",
                pos = "C1915101_N12905",
                scene_id = 1073,
                room_id = 1,
                data_index = 1
            },
            {
                id = 512,
                alias = "Coop_Layla",
                script = "Actor/Npc/TempNPC",
                pos = "C1915101_N512",
                scene_id = 1073,
                room_id = 1,
                data_index = 2
            },
            {
                id = 1063,
                alias = "Npc1063",
                script = "Actor/Npc/TempNPC",
                pos = "C1915101_N512",
                scene_id = 1073,
                room_id = 1,
                data_index = 3
            }
        }
    },
    ["1915102"] = {
        npcs = {
            {
                id = 12905,
                alias = "Npc12905",
                script = "Actor/Npc/TempNPC",
                pos = "Q1915101_N12905",
                scene_id = 1073,
                room_id = 1,
                data_index = 1
            },
            {
                id = 512,
                alias = "Coop_Layla",
                script = "Actor/Npc/TempNPC",
                pos = "C1915103_N512",
                scene_id = 1073,
                room_id = 1,
                data_index = 2
            },
            {
                id = 1063,
                alias = "Npc1063",
                script = "Actor/Npc/TempNPC",
                pos = "C1915103_N512",
                scene_id = 1073,
                room_id = 1,
                data_index = 3
            }
        }
    },
    ["1915103"] = {
        npcs = {
            {
                id = 12905,
                alias = "Npc12905",
                script = "Actor/Npc/TempNPC",
                pos = "Q1915101_N12905",
                scene_id = 1073,
                room_id = 1,
                data_index = 1
            },
            {
                id = 512,
                alias = "Coop_Layla",
                script = "Actor/Npc/TempNPC",
                pos = "C1915103_N512",
                scene_id = 1073,
                room_id = 1,
                data_index = 2
            },
            {
                id = 1063,
                alias = "Npc1063",
                script = "Actor/Npc/TempNPC",
                pos = "C1915103_N512",
                scene_id = 1073,
                room_id = 1,
                data_index = 3
            }
        }
    },
    ["1915104"] = {
        npcs = {
            {
                id = 12905,
                alias = "Npc12905",
                script = "Actor/Npc/TempNPC",
                pos = "Q1915101_N12905",
                scene_id = 1073,
                room_id = 1,
                data_index = 1
            },
            {
                id = 512,
                alias = "Coop_Layla",
                script = "Actor/Npc/TempNPC",
                pos = "C1915103_N512",
                scene_id = 1073,
                room_id = 1,
                data_index = 2
            },
            {
                id = 1063,
                alias = "Npc1063",
                script = "Actor/Npc/TempNPC",
                pos = "C1915103_N512",
                scene_id = 1073,
                room_id = 1,
                data_index = 3
            }
        }
    }
}
