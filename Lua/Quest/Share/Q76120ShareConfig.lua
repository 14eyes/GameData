main_id = 76120
local tbl = {}
local n = 7612003
local v = 7612002
tbl[1] = 7612001
tbl[2] = n
tbl[3] = v
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
local tbl2 = {CLIENT = {}}
local server = {}
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {}
local tbl3 = {}
local str = ""
tbl3[1] = "133603051"
tbl3[2] = str
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
server.QUEST_EXEC_DEACTIVE_ITEM_GIVING = {{"7612003"}}
tbl2.SERVER = server
cancel_action = tbl2
rewind_data = {["7612001"] = {}, ["7612002"] = {}, ["7612003"] = {}}

quest_data = {
    ["7612001"] = {
        npcs = {
            {
                id = 1318,
                alias = "Npc1318",
                script = "Actor/Npc/TempNPC",
                pos = "[3_360600084:2132.141,108.933,11207.910,0.000,299.150,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 15702,
                alias = "Npc15702_1",
                script = "Actor/Npc/TempNPC",
                pos = "[3_360600085:2131.338,108.948,11208.850,0.000,149.100,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["7612002"] = {
        npcs = {
            {
                id = 1318,
                alias = "Npc1318",
                script = "Actor/Npc/TempNPC",
                pos = "[3_360600084:2132.141,108.933,11207.910,0.000,299.150,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 15702,
                alias = "Npc15702_1",
                script = "Actor/Npc/TempNPC",
                pos = "[3_360600085:2131.338,108.948,11208.850,0.000,149.100,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1318,
                alias = "Npc1318_1",
                script = "Actor/Npc/TempNPC",
                pos = "[3_360300102:2132.445,108.921,11208.030,0.000,308.800,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 15702,
                alias = "Npc15702",
                script = "Actor/Npc/TempNPC",
                pos = "[3_360300101:2131.252,108.949,11209.090,0.000,130.000,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["7612003"] = {
        npcs = {
            {
                id = 1318,
                alias = "Npc1318",
                script = "Actor/Npc/TempNPC",
                pos = "[3_360600084:2132.141,108.933,11207.910,0.000,299.150,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 15702,
                alias = "Npc15702_1",
                script = "Actor/Npc/TempNPC",
                pos = "[3_360600085:2131.338,108.948,11208.850,0.000,149.100,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    }
}
