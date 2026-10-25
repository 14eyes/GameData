main_id = 19158
local tbl = {}
local n = 1915802
local v = 1915803
tbl[1] = 1915801
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
tbl3[1] = "133302746"
tbl3[2] = str
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
tbl2.SERVER = server
cancel_action = tbl2
rewind_data = {["1915801"] = {}, ["1915802"] = {}}

quest_data = {
    ["1915801"] = {
        npcs = {
            {
                id = 512,
                alias = "Coop_Layla",
                script = "Actor/Npc/TempNPC",
                pos = "C1915801_N512",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 4019,
                alias = "Npc4019",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "C1915802_N4019",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1063,
                alias = "Npc1063",
                script = "Actor/Npc/TempNPC",
                pos = "C1915801_N512",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["1915802"] = {
        npcs = {
            {
                id = 512,
                alias = "Coop_Layla",
                script = "Actor/Npc/TempNPC",
                pos = "C1915802_N512",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12910,
                alias = "Npc12910",
                script = "Actor/Npc/TempNPC",
                pos = "C1915802_N12910",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1063,
                alias = "Npc1063",
                script = "Actor/Npc/TempNPC",
                pos = "C1915802_N512",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["1915803"] = {}
}
