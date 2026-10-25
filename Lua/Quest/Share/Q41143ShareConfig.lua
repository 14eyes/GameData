main_id = 41143
local tbl = {}
local n = 4114301
local v = 4114302
local n2 = 4114303
tbl[1] = 4114304
tbl[2] = n
tbl[3] = v
tbl[4] = n2
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}

cancel_action = {
    CLIENT = {},
    SERVER = {
        QUEST_EXEC_DEL_ALL_SPECIFIC_PACK_ITEM = {{"100649"}},
        QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {{"133002419"}}
    }
}

rewind_data = {
    ["4114301"] = {
        npcs = {
            {
                id = 1576,
                alias = "Npc1576",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "EQ41143_NPCBorn",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4114303"] = {
        npcs = {
            {
                id = 1576,
                alias = "Npc1576",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "EQ41143_NPCBorn",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

quest_data = {
    ["4114301"] = {
        npcs = {
            {
                id = 1576,
                alias = "Npc1576",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "EQ41143_NPCBorn",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4114302"] = {
        npcs = {
            {
                id = 1576,
                alias = "Npc1576",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "EQ41143_NPCBorn",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4114303"] = {
        npcs = {
            {
                id = 1576,
                alias = "Npc1576",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "EQ41143_NPCBorn",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4114304"] = {
        npcs = {
            {
                id = 1576,
                alias = "Npc1576",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "EQ41143_NPCBorn",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}
