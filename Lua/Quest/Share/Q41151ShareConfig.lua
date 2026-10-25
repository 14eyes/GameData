main_id = 41151
local tbl = {}
local n = 4115101
local v = 4115102
local n2 = 4115103
tbl[1] = 4115104
tbl[2] = n
tbl[3] = v
tbl[4] = n2
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}

cancel_action = {
    CLIENT = {},
    SERVER = {
        QUEST_EXEC_DEL_ALL_SPECIFIC_PACK_ITEM = {{"100657"}},
        QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {{"133104065"}}
    }
}

rewind_data = {
    ["4115101"] = {
        npcs = {
            {
                id = 30028,
                alias = "Npc30028",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "EQ41151_NPCBorn",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4115103"] = {
        npcs = {
            {
                id = 30028,
                alias = "Npc30028",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "EQ41151_NPCBorn",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

quest_data = {
    ["4115101"] = {
        npcs = {
            {
                id = 30028,
                alias = "Npc30028",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "EQ41151_NPCBorn",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4115102"] = {
        npcs = {
            {
                id = 30028,
                alias = "Npc30028",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "EQ41151_NPCBorn",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4115103"] = {
        npcs = {
            {
                id = 30028,
                alias = "Npc30028",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "EQ41151_NPCBorn",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4115104"] = {
        npcs = {
            {
                id = 30028,
                alias = "Npc30028",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "EQ41151_NPCBorn",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}
