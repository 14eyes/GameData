main_id = 41121
local tbl = {}
local n = 4112101
local v = 4112102
local n2 = 4112103
tbl[1] = 4112104
tbl[2] = n
tbl[3] = v
tbl[4] = n2
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}

cancel_action = {
    CLIENT = {},
    SERVER = {
        QUEST_EXEC_DEL_ALL_SPECIFIC_PACK_ITEM = {{"100646"}},
        QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {{"133003770"}}
    }
}

rewind_data = {
    ["4112101"] = {
        npcs = {
            {
                id = 1593,
                alias = "Npc1593",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "EQ41121_NPCBorn",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4112103"] = {
        npcs = {
            {
                id = 1593,
                alias = "Npc1593",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "EQ41121_NPCBorn",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

quest_data = {
    ["4112101"] = {
        npcs = {
            {
                id = 1593,
                alias = "Npc1593",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "EQ41121_NPCBorn",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4112102"] = {
        npcs = {
            {
                id = 1593,
                alias = "Npc1593",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "EQ41121_NPCBorn",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4112103"] = {
        npcs = {
            {
                id = 1593,
                alias = "Npc1593",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "EQ41121_NPCBorn",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4112104"] = {
        npcs = {
            {
                id = 1593,
                alias = "Npc1593",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "EQ41121_NPCBorn",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}
