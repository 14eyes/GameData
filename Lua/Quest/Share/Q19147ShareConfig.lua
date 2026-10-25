main_id = 19147
sub_ids = {1914701}
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
local tbl = {CLIENT = {}}
local server = {}
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {}
local v = {}
local str = ""
v[1] = "133220763"
v[2] = str
local tbl2 = {}
local str2 = ""
tbl2[1] = "133220769"
tbl2[2] = str2
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = v
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[2] = tbl2
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
tbl.SERVER = server
cancel_action = tbl
rewind_data = {["1914701"] = {}}

quest_data = {
    ["1914701"] = {
        npcs = {
            {
                id = 510,
                alias = "Coop_Shinobu",
                script = "Actor/Npc/TempNPC",
                pos = "Q1914701_C1914701_N510",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12276,
                alias = "Npc12276",
                script = "Actor/Npc/TempNPC",
                pos = "Q1914701_C1914701_N12276",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 12277,
                alias = "Npc12277",
                script = "Actor/Npc/TempNPC",
                pos = "Q1914701_C1914701_N12277",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 12278,
                alias = "Npc12278",
                script = "Actor/Npc/TempNPC",
                pos = "Q1914701_C1914701_N12278",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 1049,
                alias = "Npc1049",
                script = "Actor/Npc/TempNPC",
                pos = "Q1914701_C1914701_N510",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            }
        }
    }
}
