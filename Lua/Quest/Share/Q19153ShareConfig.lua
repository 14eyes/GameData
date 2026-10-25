main_id = 19153
local tbl = {}
local n = 1915306
local v = 1915304
tbl[1] = 1915302
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
tbl3[1] = "133301748"
tbl3[2] = str
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
local qUEST_EXEC_SET_WEATHER_GADGET = {}
local tbl4 = {}
local str2 = "0"
tbl4[1] = "4098"
tbl4[2] = str2
qUEST_EXEC_SET_WEATHER_GADGET[1] = tbl4
server.QUEST_EXEC_SET_WEATHER_GADGET = qUEST_EXEC_SET_WEATHER_GADGET
tbl2.SERVER = server
cancel_action = tbl2
rewind_data = {["1915302"] = {}, ["1915306"] = {}}

quest_data = {
    ["1915302"] = {
        npcs = {
            {
                id = 512,
                alias = "Coop_Layla",
                script = "Actor/Npc/TempNPC",
                pos = "C1915301_N512",
                scene_id = 1073,
                room_id = 1,
                data_index = 1
            },
            {
                id = 1063,
                alias = "Npc1063",
                script = "Actor/Npc/TempNPC",
                pos = "C1915301_N512",
                scene_id = 1073,
                room_id = 1,
                data_index = 2
            }
        }
    },
    ["1915304"] = {},
    ["1915306"] = {
        npcs = {
            {
                id = 512,
                alias = "Coop_Layla",
                script = "Actor/Npc/TempNPC",
                pos = "C1915306_N512",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1063,
                alias = "Npc1063",
                script = "Actor/Npc/TempNPC",
                pos = "C1915306_N512",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    }
}
