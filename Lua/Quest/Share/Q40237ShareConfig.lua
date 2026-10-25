main_id = 40237
local tbl = {}
local n = 4023702
local v = 4023703
local n2 = 4023710
local n3 = 4023704
local n4 = 4023705
local n5 = 4023706
local n6 = 4023707
local n7 = 4023708
local n8 = 4023709
tbl[1] = 4023701
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
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {}
local tbl3 = {}
local str = ""
tbl3[1] = "133607392"
tbl3[2] = str
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
tbl2.SERVER = server
cancel_action = tbl2

rewind_data = {
    ["4023702"] = {},
    ["4023703"] = {},
    ["4023704"] = {},
    ["4023705"] = {},
    ["4023706"] = {},
    ["4023707"] = {},
    ["4023708"] = {},
    ["4023709"] = {},
    ["4023710"] = {}
}

quest_data = {
    ["4023701"] = {},
    ["4023702"] = {},
    ["4023703"] = {
        npcs = {
            {
                id = 16350,
                alias = "Npc16350",
                script = "Actor/Npc/TempNPC",
                pos = "[3_360700240:1412.849,204.349,9295.525]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4023704"] = {
        npcs = {
            {
                id = 16350,
                alias = "Npc16350",
                script = "Actor/Npc/TempNPC",
                pos = "[1204_152:8.846,1.351,9.881]",
                scene_id = 1204,
                room_id = 1,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 6, scene_id = 3, pos = "[3_360700244:1650.445,239.875,9406.839]"}}
    },
    ["4023705"] = {},
    ["4023706"] = {
        npcs = {
            {
                id = 16350,
                alias = "Npc16350",
                script = "Actor/Npc/TempNPC",
                pos = "[3_360700244:1650.445,239.875,9406.839]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4023707"] = {
        npcs = {
            {
                id = 16350,
                alias = "Npc16350",
                script = "Actor/Npc/TempNPC",
                pos = "[3_360700244:1650.445,239.875,9406.839]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4023708"] = {
        npcs = {
            {
                id = 16350,
                alias = "Npc16350",
                script = "Actor/Npc/TempNPC",
                pos = "[3_360700240:1412.849,204.349,9295.525]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4023709"] = {
        npcs = {
            {
                id = 16350,
                alias = "Npc16350",
                script = "Actor/Npc/TempNPC",
                pos = "[1205_128:-3.705,0.312,-61.053]",
                scene_id = 1205,
                room_id = 1,
                data_index = 1
            }
        }
    },
    ["4023710"] = {
        npcs = {
            {
                id = 16350,
                alias = "Npc16350",
                script = "Actor/Npc/TempNPC",
                pos = "[3_360700243:1131.766,207.209,9243.030]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}
