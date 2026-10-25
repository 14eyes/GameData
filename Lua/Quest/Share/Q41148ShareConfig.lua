main_id = 41148
local tbl = {}
local n = 4114801
local v = 4114802
local n2 = 4114803
tbl[1] = 4114804
tbl[2] = n
tbl[3] = v
tbl[4] = n2
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}

cancel_action = {
    CLIENT = {},
    SERVER = {
        QUEST_EXEC_DEL_ALL_SPECIFIC_PACK_ITEM = {{"100654"}},
        QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {{"133104064"}}
    }
}

rewind_data = {
    ["4114801"] = {
        npcs = {
            {
                id = 30029,
                alias = "Npc30029",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "EQ41148_NPCBorn",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4114803"] = {
        npcs = {
            {
                id = 30029,
                alias = "Npc30029",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "EQ41148_NPCBorn",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

quest_data = {
    ["4114801"] = {
        npcs = {
            {
                id = 30029,
                alias = "Npc30029",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "EQ41148_NPCBorn",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4114802"] = {
        npcs = {
            {
                id = 30029,
                alias = "Npc30029",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "EQ41148_NPCBorn",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4114803"] = {
        npcs = {
            {
                id = 30029,
                alias = "Npc30029",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "EQ41148_NPCBorn",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4114804"] = {
        npcs = {
            {
                id = 30029,
                alias = "Npc30029",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "EQ41148_NPCBorn",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}
