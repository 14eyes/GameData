main_id = 40236
local tbl = {}
local n = 4023602
local v = 4023603
local n2 = 4023604
local n3 = 4023605
local n4 = 4023606
local n5 = 4023607
local n6 = 4023612
local n7 = 4023608
local n8 = 4023609
local n9 = 4023611
local n10 = 4023613
local n11 = 4023610
tbl[1] = 4023601
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
tbl[6] = n4
tbl[7] = n5
tbl[8] = n6
tbl[9] = n7
tbl[10] = n8
tbl[11] = n9
tbl[12] = n10
tbl[13] = n11
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
local tbl2 = {CLIENT = {}}
local server = {}
local qUEST_EXEC_REFRESH_GROUP_SUITE = {}
local tbl3 = {}
local str = "201205005,1"
tbl3[1] = "1205"
tbl3[2] = str
qUEST_EXEC_REFRESH_GROUP_SUITE[1] = tbl3
server.QUEST_EXEC_REFRESH_GROUP_SUITE = qUEST_EXEC_REFRESH_GROUP_SUITE
tbl2.SERVER = server
cancel_action = tbl2

rewind_data = {
    ["4023601"] = {},
    ["4023602"] = {},
    ["4023603"] = {},
    ["4023604"] = {},
    ["4023605"] = {},
    ["4023606"] = {},
    ["4023607"] = {},
    ["4023608"] = {},
    ["4023609"] = {},
    ["4023610"] = {},
    ["4023611"] = {},
    ["4023612"] = {
        npcs = {
            {
                id = 1317,
                alias = "Npc1317",
                script = "Actor/Npc/TempNPC",
                pos = "[3_360700296:1423.614,204.351,9277.578,0.000,148.032,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4023613"] = {}
}

quest_data = {
    ["4023601"] = {},
    ["4023602"] = {},
    ["4023603"] = {
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
    ["4023604"] = {
        npcs = {
            {
                id = 1317,
                alias = "Npc1317",
                script = "Actor/Npc/TempNPC",
                pos = "[3_360700296:1423.614,204.351,9277.578,0.000,148.032,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1316,
                alias = "Npc1316",
                script = "Actor/Npc/TempNPC",
                pos = "[1205_132:-7.768,0.282,-50.042]",
                scene_id = 1205,
                room_id = 1,
                data_index = 2
            }
        }
    },
    ["4023605"] = {},
    ["4023606"] = {},
    ["4023607"] = {},
    ["4023608"] = {
        npcs = {
            {
                id = 16350,
                alias = "Npc16350",
                script = "Actor/Npc/TempNPC",
                pos = "[3_360700296:1423.614,204.351,9277.578,0.000,148.032,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4023609"] = {
        npcs = {
            {
                id = 16350,
                alias = "Npc16350",
                script = "Actor/Npc/TempNPC",
                pos = "[3_360700259:1448.698,209.454,9264.802,0.000,275.976,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4023610"] = {},
    ["4023611"] = {
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
    ["4023612"] = {},
    ["4023613"] = {
        npcs = {
            {
                id = 1316,
                alias = "Npc1316",
                script = "Actor/Npc/TempNPC",
                pos = "[1205_130:-2.061,0.274,-59.510,0.000,218.850,0.000]",
                scene_id = 1205,
                room_id = 1,
                data_index = 1
            },
            {
                id = 2613,
                alias = "Npc2613",
                script = "Actor/Npc/TempNPC",
                pos = "[1205_129:-1.768,0.274,-61.457,0.000,331.253,0.000]",
                scene_id = 1205,
                room_id = 1,
                data_index = 2
            },
            {
                id = 1081,
                alias = "Npc1081",
                script = "Actor/Npc/TempNPC",
                pos = "[1205_131:-2.789,0.312,-61.724,0.000,15.698,0.000]",
                scene_id = 1205,
                room_id = 1,
                data_index = 3
            },
            {
                id = 1048,
                alias = "Npc1048",
                script = "Actor/Npc/TempNPC",
                pos = "[1205_129:-1.768,0.274,-61.457,0.000,331.253,0.000]",
                scene_id = 1205,
                room_id = 1,
                data_index = 4
            }
        }
    }
}
