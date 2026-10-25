main_id = 71821
local tbl = {}
local n = 7182101
local v = 7182111
local n2 = 7182102
local n3 = 7182103
local n4 = 7182104
local n5 = 7182105
local n6 = 7182106
local n7 = 7182107
local n8 = 7182108
local n9 = 7182109
local n10 = 7182110
tbl[1] = 7182112
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
        QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {{"133103650"}, {"133103651"}, {"133103652"}, {"133107166"}, {"133107167"}}
    }
}

fail_action = {CLIENT = {}, SERVER = {}}

cancel_action = {
    CLIENT = {},
    SERVER = {
        QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {{"133103650"}, {"133103651"}, {"133103652"}, {"133107166"}, {"133107167"}},
        QUEST_EXEC_DEL_ALL_SPECIFIC_PACK_ITEM = {{"100741"}}
    }
}

rewind_data = {
    ["7182101"] = {},
    ["7182102"] = {
        npcs = {
            {
                id = 2064,
                alias = "Npc2064",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q71821_hongyu",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7182104"] = {
        npcs = {
            {
                id = 2064,
                alias = "Npc2064",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q71821_hongyu",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7182106"] = {
        npcs = {
            {
                id = 2064,
                alias = "Npc2064",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q71821_hongyu",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7182108"] = {
        npcs = {
            {
                id = 2064,
                alias = "Npc2064",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q71821_hongyu",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 2402,
                alias = "Npc2402",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q71821_alin",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["7182110"] = {
        npcs = {
            {
                id = 2064,
                alias = "Npc2064",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q71821_hongyu",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 2402,
                alias = "Npc2402",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q71821_alin",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["7182112"] = {}
}

quest_data = {
    ["7182101"] = {
        npcs = {
            {
                id = 2064,
                alias = "Npc2064",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q71821_hongyu",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7182102"] = {},
    ["7182103"] = {},
    ["7182104"] = {},
    ["7182105"] = {},
    ["7182106"] = {
        npcs = {
            {
                id = 2402,
                alias = "Npc2402",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q71821_alin",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7182107"] = {},
    ["7182108"] = {},
    ["7182109"] = {},
    ["7182110"] = {},
    ["7182111"] = {},
    ["7182112"] = {}
}
