main_id = 41335
local tbl = {}
local n = 4133501
local v = 4133502
local n2 = 4133503
local n3 = 4133506
local n4 = 4133507
local n5 = 4133508
local n6 = 4133504
local n7 = 4133505
tbl[1] = 4133509
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
tbl[6] = n4
tbl[7] = n5
tbl[8] = n6
tbl[9] = n7
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
local tbl2 = {CLIENT = {}}
local server = {QUEST_EXEC_DEL_ALL_SPECIFIC_PACK_ITEM = {{"100748"}}}
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {}
local tbl3 = {}
local str = "1"
tbl3[1] = "133104921"
tbl3[2] = str
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
tbl2.SERVER = server
cancel_action = tbl2

rewind_data = {
    ["4133501"] = {},
    ["4133502"] = {},
    ["4133503"] = {
        npcs = {
            {
                id = 220501,
                alias = "Npc220501",
                script = "Actor/Npc/TempNPC",
                pos = "Q4133503QingZhou",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4133504"] = {},
    ["4133505"] = {},
    ["4133506"] = {
        npcs = {
            {
                id = 240901,
                alias = "Npc240901",
                script = "Actor/Npc/TempNPC",
                pos = "Q4133503Fanmier",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4133507"] = {
        npcs = {
            {
                id = 240901,
                alias = "Npc240901",
                script = "Actor/Npc/TempNPC",
                pos = "Q4133503Fanmier",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4133508"] = {
        npcs = {
            {
                id = 240901,
                alias = "Npc240901",
                script = "Actor/Npc/TempNPC",
                pos = "Q4133503Fanmier",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4133509"] = {}
}

quest_data = {
    ["4133501"] = {
        npcs = {
            {
                id = 240901,
                alias = "Npc240901",
                script = "Actor/Npc/TempNPC",
                pos = "Q4133501Fanmier",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4133502"] = {
        npcs = {
            {
                id = 240901,
                alias = "Npc240901",
                script = "Actor/Npc/TempNPC",
                pos = "Q4133503Fanmier",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 220501,
                alias = "Npc220501",
                script = "Actor/Npc/TempNPC",
                pos = "Q4133503QingZhou",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4133503"] = {
        npcs = {
            {
                id = 240901,
                alias = "Npc240901",
                script = "Actor/Npc/TempNPC",
                pos = "Q4133503Fanmier",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4133504"] = {},
    ["4133505"] = {},
    ["4133506"] = {},
    ["4133507"] = {},
    ["4133508"] = {},
    ["4133509"] = {}
}
