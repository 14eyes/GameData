main_id = 41145
local tbl = {}
local n = 4114501
local v = 4114502
local n2 = 4114503
tbl[1] = 4114504
tbl[2] = n
tbl[3] = v
tbl[4] = n2
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}

cancel_action = {
    CLIENT = {},
    SERVER = {
        QUEST_EXEC_DEL_ALL_SPECIFIC_PACK_ITEM = {{"100651"}},
        QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {{"133108150"}}
    }
}

rewind_data = {
    ["4114501"] = {
        npcs = {
            {
                id = 30028,
                alias = "Npc30028",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "EQ41145_NPCBorn",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4114503"] = {
        npcs = {
            {
                id = 30028,
                alias = "Npc30028",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "EQ41145_NPCBorn",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

quest_data = {
    ["4114501"] = {
        npcs = {
            {
                id = 30028,
                alias = "Npc30028",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "EQ41145_NPCBorn",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4114502"] = {
        npcs = {
            {
                id = 30028,
                alias = "Npc30028",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "EQ41145_NPCBorn",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4114503"] = {
        npcs = {
            {
                id = 30028,
                alias = "Npc30028",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "EQ41145_NPCBorn",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4114504"] = {
        npcs = {
            {
                id = 30028,
                alias = "Npc30028",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "EQ41145_NPCBorn",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}
