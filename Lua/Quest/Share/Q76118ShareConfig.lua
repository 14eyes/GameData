main_id = 76118
local tbl = {}
local n = 7611802
local v = 7611803
local n2 = 7611804
tbl[1] = 7611801
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
tbl3[1] = "133603052"
tbl3[2] = str
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
tbl2.SERVER = server
cancel_action = tbl2
rewind_data = {["7611801"] = {}, ["7611802"] = {}, ["7611803"] = {}, ["7611804"] = {}}

quest_data = {
    ["7611801"] = {
        npcs = {
            {
                id = 1318,
                alias = "Npc1318",
                script = "Actor/Npc/TempNPC",
                pos = "[3_360300100:2141.429,108.600,11192.040,0.000,180.000,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "[3_360600060:1803.217,240.145,10366.370]"}}
    },
    ["7611802"] = {
        npcs = {
            {
                id = 1315,
                alias = "Npc1315",
                script = "Actor/Npc/TempNPC",
                pos = "[3_360600059:1800.898,240.126,10367.920]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 2, scene_id = 3, pos = "[3_360300041:2136.728,108.600,11194.280]"}}
    },
    ["7611803"] = {
        npcs = {
            {
                id = 1318,
                alias = "Npc1318",
                script = "Actor/Npc/TempNPC",
                pos = "[3_360300034:2138.565,108.378,11193.690,0.000,117.940,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 3, scene_id = 3, pos = "[3_360600080:1937.591,236.595,10530.780]"}}
    },
    ["7611804"] = {
        npcs = {
            {
                id = 1315,
                alias = "Npc1315",
                script = "Actor/Npc/TempNPC",
                pos = "[3_360600080:1937.591,236.595,10530.780]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}
