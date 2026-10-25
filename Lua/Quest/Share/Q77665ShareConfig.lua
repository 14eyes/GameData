main_id = 77665
local tbl = {}
local n = 7766502
local v = 7766504
local n2 = 7766505
local n3 = 7766503
tbl[1] = 7766501
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
local tbl2 = {CLIENT = {}}
local server = {}
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {}
local tbl3 = {}
local str = ""
local str2 = ""
tbl3[1] = "201162016"
tbl3[2] = str
tbl3[3] = str2
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
tbl2.SERVER = server
cancel_action = tbl2

rewind_data = {
    ["7766501"] = {},
    ["7766502"] = {},
    ["7766503"] = {},
    ["7766504"] = {
        npcs = {
            {
                id = 1332,
                alias = "Npc1332",
                script = "Actor/Npc/TempNPC",
                pos = "[1159_19:66.513,-4.171,-463.930,0.000,238.190,0.000]",
                scene_id = 1159,
                room_id = 1,
                data_index = 1
            },
            {
                id = 1331,
                alias = "Npc1331",
                script = "Actor/Npc/TempNPC",
                pos = "[1159_53:65.230,-4.171,-466.182]",
                scene_id = 1159,
                room_id = 1,
                data_index = 2
            },
            {
                id = 3480,
                alias = "Npc3480",
                script = "Actor/Npc/TempNPC",
                pos = "[1159_57:68.040,-4.162,-465.146,0.000,278.260,0.000]",
                scene_id = 1159,
                room_id = 1,
                data_index = 3
            },
            {
                id = 1335,
                alias = "Npc1335",
                script = "Actor/Npc/TempNPC",
                pos = "[1159_55:66.371,-4.171,-465.848,0.000,314.390,0.000]",
                scene_id = 1159,
                room_id = 1,
                data_index = 4
            }
        }
    },
    ["7766505"] = {
        npcs = {
            {
                id = 1080,
                alias = "Npc1080",
                script = "Actor/Npc/TempNPC",
                pos = "[3_371200126:9522.887,385.683,6670.140]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1336,
                alias = "Npc1336_2",
                script = "Actor/Npc/TempNPC",
                pos = "[3_371200125:9522.482,385.683,6670.803,0.000,16.620,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 16639,
                alias = "Npc16639",
                script = "Actor/Npc/TempNPC",
                pos = "[3_371200127:9524.607,385.701,6671.250,0.000,288.800,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 16569,
                alias = "Npc16569",
                script = "Actor/Npc/TempNPC",
                pos = "[3_371200129:9524.434,385.683,6673.535,0.000,246.890,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            }
        }
    }
}

quest_data = {
    ["7766501"] = {
        npcs = {
            {
                id = 1339,
                alias = "Npc1339",
                script = "Actor/Npc/TempNPC",
                pos = "[1162_14:-0.224,0.568,-34.067]",
                scene_id = 1162,
                room_id = 1,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "[3_371200130:9768.751,450.446,6509.410,0.000,312.000,0.000]"}}
    },
    ["7766502"] = {
        npcs = {
            {
                id = 1332,
                alias = "Npc1332",
                script = "Actor/Npc/TempNPC",
                pos = "[1159_19:66.513,-4.171,-463.930,0.000,238.190,0.000]",
                scene_id = 1159,
                room_id = 1,
                data_index = 1
            }
        }
    },
    ["7766503"] = {},
    ["7766504"] = {
        npcs = {
            {
                id = 1080,
                alias = "Npc1080",
                script = "Actor/Npc/TempNPC",
                pos = "[3_18578:9523.964,385.717,6665.046,0.000,325.860,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1336,
                alias = "Npc1336_2",
                script = "Actor/Npc/TempNPC",
                pos = "[3_18576:9523.159,385.928,6664.347,0.000,14.880,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1319,
                alias = "Npc1319",
                script = "Actor/Npc/TempNPC",
                pos = "[3_18576:9523.159,385.928,6664.347,0.000,14.880,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["7766505"] = {
        npcs = {
            {
                id = 1339,
                alias = "Npc1339",
                script = "Actor/Npc/TempNPC",
                pos = "[1162_15:-7.698,-1.898,50.134]",
                scene_id = 1162,
                room_id = 1,
                data_index = 1
            },
            {
                id = 1339,
                alias = "Npc1339_1",
                script = "Actor/Npc/TempNPC",
                pos = "[1162_209:-0.261,0.568,-28.806,0.000,180.000,0.000]",
                scene_id = 1162,
                room_id = 1,
                data_index = 2
            },
            {
                id = 7808,
                alias = "Npc7808",
                script = "Actor/Npc/TempNPC",
                pos = "[1162_210:-2.649,0.568,-27.794,0.000,180.000,0.000]",
                scene_id = 1162,
                room_id = 1,
                data_index = 3
            },
            {
                id = 1319,
                alias = "Npc1319",
                script = "Actor/Npc/TempNPC",
                pos = "[3_371200125:9522.482,385.683,6670.803,0.000,16.620,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    }
}
