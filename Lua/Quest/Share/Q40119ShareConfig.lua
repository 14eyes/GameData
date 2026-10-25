main_id = 40119
local tbl = {}
local n = 4011902
local v = 4011903
local n2 = 4011904
local n3 = 4011905
local n4 = 4011906
local n5 = 4011909
local n6 = 4011910
local n7 = 4011907
local n8 = 4011908
tbl[1] = 4011901
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
tbl[6] = n4
tbl[7] = n5
tbl[8] = n6
tbl[9] = n7
tbl[10] = n8
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
local tbl2 = {CLIENT = {}}
local server = {}
local qUEST_EXEC_DEL_PACK_ITEM = {}
local tbl3 = {}
local str = "1"
tbl3[1] = "120318"
tbl3[2] = str
local tbl4 = {}
local str2 = "1"
tbl4[1] = "120319"
tbl4[2] = str2
local tbl5 = {}
local str3 = "1"
tbl5[1] = "120320"
tbl5[2] = str3
local tbl6 = {}
local str4 = "1"
tbl6[1] = "120321"
tbl6[2] = str4
qUEST_EXEC_DEL_PACK_ITEM[1] = tbl3
qUEST_EXEC_DEL_PACK_ITEM[2] = tbl4
qUEST_EXEC_DEL_PACK_ITEM[3] = tbl5
qUEST_EXEC_DEL_PACK_ITEM[4] = tbl6
server.QUEST_EXEC_DEL_PACK_ITEM = qUEST_EXEC_DEL_PACK_ITEM
tbl2.SERVER = server
cancel_action = tbl2

rewind_data = {
    ["4011901"] = {},
    ["4011903"] = {},
    ["4011904"] = {},
    ["4011905"] = {},
    ["4011906"] = {},
    ["4011907"] = {},
    ["4011909"] = {},
    ["4011910"] = {}
}

quest_data = {
    ["4011901"] = {
        npcs = {
            {
                id = 1029,
                alias = "Npc1029",
                script = "Actor/Npc/TempNPC",
                pos = "[10_100190:809.641,154.108,782.280,0.000,143.692,0.000]",
                scene_id = 10,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1051,
                alias = "Npc1051",
                script = "Actor/Npc/TempNPC",
                pos = "[10_100189:808.429,154.108,782.263,0.000,129.315,0.000]",
                scene_id = 10,
                room_id = 0,
                data_index = 2
            },
            {
                id = 13252,
                alias = "Npc13252",
                script = "Actor/Npc/TempNPC",
                pos = "Q4011613_N13252",
                scene_id = 10,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["4011902"] = {
        npcs = {
            {
                id = 13247,
                alias = "Npc13247",
                script = "Actor/Npc/TempNPC",
                pos = "Q4011902_Q4011904_N13247",
                scene_id = 10,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1029,
                alias = "Npc1029",
                script = "Actor/Npc/TempNPC",
                pos = "[10_100190:809.641,154.108,782.280,0.000,143.692,0.000]",
                scene_id = 10,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1051,
                alias = "Npc1051",
                script = "Actor/Npc/TempNPC",
                pos = "[10_100189:808.429,154.108,782.263,0.000,129.315,0.000]",
                scene_id = 10,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["4011903"] = {
        npcs = {
            {
                id = 13247,
                alias = "Npc13247",
                script = "Actor/Npc/TempNPC",
                pos = "Q4011902_Q4011904_N13247",
                scene_id = 10,
                room_id = 0,
                data_index = 1
            },
            {
                id = 2605,
                alias = "Npc2605",
                script = "Actor/Npc/TempNPC",
                pos = "[10_100049:802.155,154.128,788.230,0.000,161.204,0.000]",
                scene_id = 10,
                room_id = 0,
                data_index = 2
            },
            {
                id = 2606,
                alias = "Npc2606",
                script = "Actor/Npc/TempNPC",
                pos = "[10_100050:803.067,154.108,788.666,0.000,167.776,0.000]",
                scene_id = 10,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1029,
                alias = "Npc1029",
                script = "Actor/Npc/TempNPC",
                pos = "[10_100047:807.879,154.128,785.187,0.000,151.649,0.000]",
                scene_id = 10,
                room_id = 0,
                data_index = 4
            },
            {
                id = 1051,
                alias = "Npc1051",
                script = "Actor/Npc/TempNPC",
                pos = "[10_100048:808.140,154.108,784.327,0.000,340.390,0.000]",
                scene_id = 10,
                room_id = 0,
                data_index = 5
            },
            {
                id = 1037,
                alias = "Npc1037",
                script = "Actor/Npc/TempNPC",
                pos = "[10_100051:799.364,154.128,782.595,0.000,54.653,0.000]",
                scene_id = 10,
                room_id = 0,
                data_index = 6
            },
            {
                id = 10090,
                alias = "Npc10090",
                script = "Actor/Npc/TempNPC",
                pos = "[10_100049:802.155,154.128,788.230,0.000,161.204,0.000]",
                scene_id = 10,
                room_id = 0,
                data_index = 7
            },
            {
                id = 1004,
                alias = "Gaia",
                script = "Actor/Quest/Q301/Gaia301",
                pos = "[10_100050:803.067,154.108,788.666,0.000,167.776,0.000]",
                scene_id = 10,
                room_id = 0,
                data_index = 8
            }
        }
    },
    ["4011904"] = {
        npcs = {
            {
                id = 13247,
                alias = "Npc13247",
                script = "Actor/Npc/TempNPC",
                pos = "Q4011902_Q4011904_N13247",
                scene_id = 10,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4011905"] = {
        transmit_points = {{point_id = 1, scene_id = 10, pos = "[10_100167:401.236,104.466,615.959,0.000,232.916,0.000]"}}
    },
    ["4011906"] = {
        npcs = {
            {
                id = 13247,
                alias = "Npc13247",
                script = "Actor/Npc/TempNPC",
                pos = "Q4011906_N13247",
                scene_id = 10,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4011907"] = {},
    ["4011908"] = {
        npcs = {
            {
                id = 13247,
                alias = "Npc13247",
                script = "Actor/Npc/TempNPC",
                pos = "[10_100202:441.882,276.572,463.198,0.000,33.099,0.000]",
                scene_id = 10,
                room_id = 0,
                data_index = 1
            },
            {
                id = 10090,
                alias = "Npc10090",
                script = "Actor/Npc/TempNPC",
                pos = "Q4011908_N10090",
                scene_id = 10,
                room_id = 0,
                data_index = 2
            },
            {
                id = 2605,
                alias = "Npc2605",
                script = "Actor/Npc/TempNPC",
                pos = "Q4011908_N10090",
                scene_id = 10,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["4011909"] = {},
    ["4011910"] = {}
}
