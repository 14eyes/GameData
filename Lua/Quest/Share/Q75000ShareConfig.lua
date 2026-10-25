main_id = 75000
local tbl = {}
local n = 7500001
local v = 7500002
local n2 = 7500004
local n3 = 7500003
local n4 = 7500005
local n5 = 7500006
local n6 = 7500007
local n7 = 7500009
local n8 = 7500011
local n9 = 7500010
local n10 = 7500008
tbl[1] = 7500012
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
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
local tbl2 = {CLIENT = {}}
local server = {}
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {}
local tbl3 = {}
local str = ""
tbl3[1] = "133504010"
tbl3[2] = str
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
tbl2.SERVER = server
cancel_action = tbl2

rewind_data = {
    ["7500002"] = {},
    ["7500003"] = {},
    ["7500004"] = {},
    ["7500005"] = {},
    ["7500006"] = {},
    ["7500007"] = {
        npcs = {
            {
                id = 21460,
                alias = "Npc21460",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350400011:-1317.904,-4.591,7534.367,0.000,168.714,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7500008"] = {},
    ["7500009"] = {},
    ["7500011"] = {},
    ["7500012"] = {}
}

quest_data = {
    ["7500001"] = {},
    ["7500002"] = {},
    ["7500003"] = {},
    ["7500004"] = {
        npcs = {
            {
                id = 21523,
                alias = "Npc21523",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350400013:-1311.072,-5.887,7521.949,0.000,248.179,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7500005"] = {},
    ["7500006"] = {
        npcs = {
            {
                id = 21460,
                alias = "Npc21460",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350400011:-1317.904,-4.591,7534.367,0.000,168.714,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7500007"] = {},
    ["7500008"] = {},
    ["7500009"] = {
        npcs = {
            {
                id = 21460,
                alias = "Npc21460",
                script = "Actor/Npc/TempNPC",
                pos = "[3_8600:-1318.267,-4.669,7533.351,0.000,211.380,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7500010"] = {},
    ["7500011"] = {},
    ["7500012"] = {}
}
