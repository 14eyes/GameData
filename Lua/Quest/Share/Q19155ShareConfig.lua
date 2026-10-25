main_id = 19155
local tbl = {}
local n = 1915505
local v = 1915503
local n2 = 1915504
tbl[1] = 1915502
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
tbl3[1] = "133302736"
tbl3[2] = str
local tbl4 = {}
local str2 = ""
tbl4[1] = "133302758"
tbl4[2] = str2
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[2] = tbl4
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
server.QUEST_EXEC_DEL_ALL_SPECIFIC_PACK_ITEM = {{"120293"}}
tbl2.SERVER = server
cancel_action = tbl2
rewind_data = {["1915502"] = {}, ["1915503"] = {}, ["1915504"] = {}}

quest_data = {
    ["1915502"] = {
        npcs = {
            {
                id = 512,
                alias = "Coop_Layla",
                script = "Actor/Npc/TempNPC",
                pos = "C1915503_guide",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1063,
                alias = "Npc1063",
                script = "Actor/Npc/TempNPC",
                pos = "C1915503_guide",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1915503"] = {
        npcs = {
            {
                id = 512,
                alias = "Coop_Layla",
                script = "Actor/Npc/TempNPC",
                pos = "C1915503_guide",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1063,
                alias = "Npc1063",
                script = "Actor/Npc/TempNPC",
                pos = "C1915503_guide",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1915504"] = {
        npcs = {
            {
                id = 512,
                alias = "Coop_Layla",
                script = "Actor/Npc/TempNPC",
                pos = "C1915502_N512",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12909,
                alias = "Npc12909",
                script = "Actor/Npc/TempNPC",
                pos = "C1915502_N12909",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 4329,
                alias = "Npc4329",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "C1915502_N12909",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1063,
                alias = "Npc1063",
                script = "Actor/Npc/TempNPC",
                pos = "C1915502_N512",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["1915505"] = {}
}
