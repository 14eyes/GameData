main_id = 41124
local tbl = {}
local n = 4112402
local v = 4112403
local n2 = 4112404
local n3 = 4112405
local n4 = 4112498
local n5 = 4112499
local n6 = 4112406
local n7 = 4112497
local n8 = 4112496
local n9 = 4112407
local n10 = 4112408
tbl[1] = 4112401
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

finish_action = {
    CLIENT = {},
    SERVER = {
        QUEST_EXEC_DEL_ALL_SPECIFIC_PACK_ITEM = {{"100630"}},
        QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {{"133003632"}, {"133003633"}, {"133003634"}, {"133004367"}}
    }
}

fail_action = {
    CLIENT = {},
    SERVER = {
        QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {{"133003632"}, {"133003633"}, {"133003634"}, {"133004367"}},
        QUEST_EXEC_DEL_ALL_SPECIFIC_PACK_ITEM = {{"100630"}}
    }
}

cancel_action = {
    CLIENT = {},
    SERVER = {
        QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {{"133003632"}, {"133003633"}, {"133003634"}, {"133004367"}},
        QUEST_EXEC_DEL_ALL_SPECIFIC_PACK_ITEM = {{"100630"}}
    }
}

rewind_data = {
    ["4112401"] = {},
    ["4112402"] = {},
    ["4112406"] = {
        npcs = {
            {
                id = 1525,
                alias = "Npc1525",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q41124_Vile_InitPos",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4112408"] = {
        npcs = {
            {
                id = 1525,
                alias = "Npc1525",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q41124_Vile_InitPos",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4112497"] = {
        npcs = {
            {
                id = 1525,
                alias = "Npc1525",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q41124_Vile_InitPos",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4112499"] = {
        npcs = {
            {
                id = 1525,
                alias = "Npc1525",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q41124_Vile_InitPos",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

quest_data = {
    ["4112401"] = {},
    ["4112402"] = {
        npcs = {
            {
                id = 1525,
                alias = "Npc1525",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q41124_Vile_InitPos",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4112403"] = {},
    ["4112404"] = {},
    ["4112405"] = {},
    ["4112406"] = {},
    ["4112407"] = {},
    ["4112408"] = {},
    ["4112496"] = {},
    ["4112497"] = {},
    ["4112498"] = {},
    ["4112499"] = {}
}
