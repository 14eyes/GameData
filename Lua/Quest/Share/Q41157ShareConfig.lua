main_id = 41157
local tbl = {}
local n = 4115701
local v = 4115702
local n2 = 4115703
tbl[1] = 4115704
tbl[2] = n
tbl[3] = v
tbl[4] = n2
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}

cancel_action = {
    CLIENT = {},
    SERVER = {
        QUEST_EXEC_DEL_ALL_SPECIFIC_PACK_ITEM = {{"100663"}},
        QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {{"133108151"}}
    }
}

rewind_data = {
    ["4115701"] = {
        npcs = {
            {
                id = 30029,
                alias = "Npc30029",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "EQ41157_NPCBorn",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4115703"] = {
        npcs = {
            {
                id = 30029,
                alias = "Npc30029",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "EQ41157_NPCBorn",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

quest_data = {
    ["4115701"] = {
        npcs = {
            {
                id = 30029,
                alias = "Npc30029",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "EQ41157_NPCBorn",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4115702"] = {
        npcs = {
            {
                id = 30029,
                alias = "Npc30029",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "EQ41157_NPCBorn",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4115703"] = {
        npcs = {
            {
                id = 30029,
                alias = "Npc30029",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "EQ41157_NPCBorn",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4115704"] = {
        npcs = {
            {
                id = 30029,
                alias = "Npc30029",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "EQ41157_NPCBorn",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}
