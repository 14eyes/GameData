main_id = 77668
local tbl = {}
local n = 7766804
local v = 7766802
local n2 = 7766803
tbl[1] = 7766801
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
local str2 = ""
tbl3[1] = "201162004"
tbl3[2] = str
tbl3[3] = str2
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
local qUEST_EXEC_REFRESH_GROUP_SUITE = {}
local tbl4 = {}
local str3 = "201162012,1"
tbl4[1] = "1162"
tbl4[2] = str3
local tbl5 = {}
local str4 = "201162006,1"
tbl5[1] = "1162"
tbl5[2] = str4
qUEST_EXEC_REFRESH_GROUP_SUITE[1] = tbl4
qUEST_EXEC_REFRESH_GROUP_SUITE[2] = tbl5
server.QUEST_EXEC_REFRESH_GROUP_SUITE = qUEST_EXEC_REFRESH_GROUP_SUITE
tbl2.SERVER = server
cancel_action = tbl2
rewind_data = {["7766801"] = {}, ["7766802"] = {}, ["7766803"] = {}, ["7766804"] = {}}

quest_data = {
    ["7766801"] = {
        npcs = {
            {
                id = 1339,
                alias = "Npc1339",
                script = "Actor/Npc/TempNPC",
                pos = "[1162_20:39.556,0.572,-3.731]",
                scene_id = 1162,
                room_id = 1,
                data_index = 1
            }
        }
    },
    ["7766802"] = {
        npcs = {
            {
                id = 1339,
                alias = "Npc1339",
                script = "Actor/Npc/TempNPC",
                pos = "[1162_221:37.235,0.571,-8.665]",
                scene_id = 1162,
                room_id = 1,
                data_index = 1
            },
            {
                id = 1080,
                alias = "Npc1080",
                script = "Actor/Npc/TempNPC",
                pos = "[1162_26:41.363,0.571,-10.521]",
                scene_id = 1162,
                room_id = 1,
                data_index = 2
            },
            {
                id = 1318,
                alias = "Npc1318",
                script = "Actor/Npc/TempNPC",
                pos = "[1162_27:39.602,0.571,-10.158,0.000,99.700,0.000]",
                scene_id = 1162,
                room_id = 1,
                data_index = 3
            },
            {
                id = 1332,
                alias = "Npc1332",
                script = "Actor/Npc/TempNPC",
                pos = "[1162_29:52.045,0.571,7.131,0.000,228.850,0.000]",
                scene_id = 1162,
                room_id = 1,
                data_index = 4
            },
            {
                id = 1335,
                alias = "Npc1335",
                script = "Actor/Npc/TempNPC",
                pos = "[1162_30:51.873,0.571,6.013,0.000,344.300,0.000]",
                scene_id = 1162,
                room_id = 1,
                data_index = 5
            },
            {
                id = 1336,
                alias = "Npc1336_1",
                script = "Actor/Npc/TempNPC",
                pos = "[1162_28:40.440,0.571,-10.296]",
                scene_id = 1162,
                room_id = 1,
                data_index = 6
            },
            {
                id = 1338,
                alias = "Npc1338",
                script = "Actor/Npc/TempNPC",
                pos = "[1162_31:37.061,0.571,9.751,0.000,129.700,0.000]",
                scene_id = 1162,
                room_id = 1,
                data_index = 7
            },
            {
                id = 1341,
                alias = "Npc1341",
                script = "Actor/Npc/TempNPC",
                pos = "[1162_32:38.066,0.571,9.849,0.000,209.900,0.000]",
                scene_id = 1162,
                room_id = 1,
                data_index = 8
            },
            {
                id = 1319,
                alias = "Npc1319",
                script = "Actor/Npc/TempNPC",
                pos = "[1162_28:40.440,0.571,-10.296]",
                scene_id = 1162,
                room_id = 1,
                data_index = 9
            }
        }
    },
    ["7766803"] = {
        npcs = {
            {
                id = 1339,
                alias = "Npc1339",
                script = "Actor/Npc/TempNPC",
                pos = "[1162_21:38.417,0.572,-3.290]",
                scene_id = 1162,
                room_id = 1,
                data_index = 1
            },
            {
                id = 1080,
                alias = "Npc1080",
                script = "Actor/Npc/TempNPC",
                pos = "[1162_216:39.905,1.094,-1.601]",
                scene_id = 1162,
                room_id = 1,
                data_index = 2
            },
            {
                id = 1318,
                alias = "Npc1318",
                script = "Actor/Npc/TempNPC",
                pos = "[1162_217:43.503,1.094,-1.653]",
                scene_id = 1162,
                room_id = 1,
                data_index = 3
            },
            {
                id = 1332,
                alias = "Npc1332",
                script = "Actor/Npc/TempNPC",
                pos = "[1162_218:52.747,0.571,6.277,0.000,317.830,0.000]",
                scene_id = 1162,
                room_id = 1,
                data_index = 4
            },
            {
                id = 1335,
                alias = "Npc1335",
                script = "Actor/Npc/TempNPC",
                pos = "[1162_219:51.221,0.571,6.952,0.000,85.650,0.000]",
                scene_id = 1162,
                room_id = 1,
                data_index = 5
            },
            {
                id = 1336,
                alias = "Npc1336_1",
                script = "Actor/Npc/TempNPC",
                pos = "[1162_220:41.833,1.094,-1.601]",
                scene_id = 1162,
                room_id = 1,
                data_index = 6
            },
            {
                id = 1338,
                alias = "Npc1338",
                script = "Actor/Npc/TempNPC",
                pos = "[1162_221:37.235,0.571,-8.665]",
                scene_id = 1162,
                room_id = 1,
                data_index = 7
            },
            {
                id = 1341,
                alias = "Npc1341",
                script = "Actor/Npc/TempNPC",
                pos = "[1162_223:36.753,0.571,-7.705,0.000,120.810,0.000]",
                scene_id = 1162,
                room_id = 1,
                data_index = 8
            },
            {
                id = 1339,
                alias = "Npc1339_1",
                script = "Actor/Npc/TempNPC",
                pos = "[1162_222:46.903,0.596,0.387,0.000,270.000,0.000]",
                scene_id = 1162,
                room_id = 1,
                data_index = 9
            },
            {
                id = 1319,
                alias = "Npc1319",
                script = "Actor/Npc/TempNPC",
                pos = "[1162_220:41.833,1.094,-1.601]",
                scene_id = 1162,
                room_id = 1,
                data_index = 10
            }
        }
    },
    ["7766804"] = {
        npcs = {
            {
                id = 1339,
                alias = "Npc1339",
                script = "Actor/Npc/TempNPC",
                pos = "[1162_20:39.556,0.572,-3.731]",
                scene_id = 1162,
                room_id = 1,
                data_index = 1
            }
        }
    }
}
