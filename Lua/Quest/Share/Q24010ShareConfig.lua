main_id = 24010
local tbl = {}
local n = 2401002
local v = 2401004
local n2 = 2401005
local n3 = 2401006
local n4 = 2401007
tbl[1] = 2401001
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
tbl[6] = n4
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
local tbl2 = {CLIENT = {}}
local server = {}
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {}
local tbl3 = {}
local str = ""
tbl3[1] = "133403279"
tbl3[2] = str
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
server.QUEST_EXEC_DEL_ALL_SPECIFIC_PACK_ITEM = {{"120384"}}
server.QUEST_EXEC_DEACTIVE_ITEM_GIVING = {{"2401004"}}
tbl2.SERVER = server
cancel_action = tbl2

rewind_data = {
    ["2401001"] = {},
    ["2401002"] = {
        npcs = {
            {
                id = 5140,
                alias = "Npc5140",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "QArtist01_guide",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2401005"] = {
        npcs = {
            {
                id = 5140,
                alias = "Npc5140",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "QArtist01_guide",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

quest_data = {
    ["2401001"] = {
        npcs = {
            {
                id = 5140,
                alias = "Npc5140",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "QArtist01_guide",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2401002"] = {
        npcs = {
            {
                id = 5026,
                alias = "Npc5026",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_340100253:3560.626,427.355,4468.911,0.000,340.968,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2401004"] = {},
    ["2401005"] = {},
    ["2401006"] = {},
    ["2401007"] = {}
}
