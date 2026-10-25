main_id = 41154
local tbl = {}
local n = 4115401
local v = 4115402
local n2 = 4115403
tbl[1] = 4115404
tbl[2] = n
tbl[3] = v
tbl[4] = n2
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}

cancel_action = {
    CLIENT = {},
    SERVER = {
        QUEST_EXEC_DEL_ALL_SPECIFIC_PACK_ITEM = {{"100660"}},
        QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {{"133103581"}}
    }
}

rewind_data = {
    ["4115401"] = {
        npcs = {
            {
                id = 30027,
                alias = "Npc30027",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "EQ41154_NPCBorn",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4115403"] = {
        npcs = {
            {
                id = 30027,
                alias = "Npc30027",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "EQ41154_NPCBorn",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

quest_data = {
    ["4115401"] = {
        npcs = {
            {
                id = 30027,
                alias = "Npc30027",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "EQ41154_NPCBorn",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4115402"] = {
        npcs = {
            {
                id = 30027,
                alias = "Npc30027",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "EQ41154_NPCBorn",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4115403"] = {
        npcs = {
            {
                id = 30027,
                alias = "Npc30027",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "EQ41154_NPCBorn",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4115404"] = {
        npcs = {
            {
                id = 30027,
                alias = "Npc30027",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "EQ41154_NPCBorn",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}
