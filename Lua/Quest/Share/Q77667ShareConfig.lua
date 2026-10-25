main_id = 77667
local tbl = {}
local n = 7766702
local v = 7766704
local n2 = 7766703
tbl[1] = 7766701
tbl[2] = n
tbl[3] = v
tbl[4] = n2
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
local tbl2 = {CLIENT = {}}
local server = {QUEST_EXEC_DEL_ALL_SPECIFIC_PACK_ITEM = {{"121624"}}}
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {}
local tbl3 = {}
local str = ""
local str2 = ""
tbl3[1] = "201162017"
tbl3[2] = str
tbl3[3] = str2
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
tbl2.SERVER = server
cancel_action = tbl2

rewind_data = {
    ["7766701"] = {},
    ["7766702"] = {},
    ["7766703"] = {},
    ["7766704"] = {
        npcs = {
            {
                id = 10200,
                alias = "Npc10200",
                script = "Actor/Npc/TempNPC",
                pos = "[3_17670:9654.986,217.620,7595.286,0.000,278.800,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 7558,
                alias = "Npc7558",
                script = "Actor/Npc/TempNPC",
                pos = "[3_18581:9653.350,217.620,7595.545,0.000,90.000,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 7559,
                alias = "Npc7559",
                script = "Actor/Npc/TempNPC",
                pos = "[3_18580:9653.598,217.620,7596.147,0.000,80.400,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    }
}

quest_data = {
    ["7766701"] = {
        npcs = {
            {
                id = 1339,
                alias = "Npc1339",
                script = "Actor/Npc/TempNPC",
                pos = "[1162_18:2.001,-0.077,-8.131]",
                scene_id = 1162,
                room_id = 1,
                data_index = 1
            }
        }
    },
    ["7766702"] = {
        npcs = {
            {
                id = 10200,
                alias = "Npc10200",
                script = "Actor/Npc/TempNPC",
                pos = "[3_17670:9654.986,217.620,7595.286,0.000,278.800,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 7558,
                alias = "Npc7558",
                script = "Actor/Npc/TempNPC",
                pos = "[3_18581:9653.350,217.620,7595.545,0.000,90.000,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 7559,
                alias = "Npc7559",
                script = "Actor/Npc/TempNPC",
                pos = "[3_18580:9653.598,217.620,7596.147,0.000,80.400,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["7766703"] = {
        npcs = {
            {
                id = 1339,
                alias = "Npc1339",
                script = "Actor/Npc/TempNPC",
                pos = "[1162_19:-0.736,-1.906,130.100]",
                scene_id = 1162,
                room_id = 1,
                data_index = 1
            },
            {
                id = 7558,
                alias = "Npc7558",
                script = "Actor/Npc/TempNPC",
                pos = "[3_18581:9653.350,217.620,7595.545,0.000,90.000,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 7559,
                alias = "Npc7559",
                script = "Actor/Npc/TempNPC",
                pos = "[3_18580:9653.598,217.620,7596.147,0.000,80.400,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1339,
                alias = "Npc1339_1",
                script = "Actor/Npc/TempNPC",
                pos = "[1162_214:-47.537,0.593,-0.578,0.000,309.970,0.000]",
                scene_id = 1162,
                room_id = 1,
                data_index = 4
            }
        }
    },
    ["7766704"] = {}
}
