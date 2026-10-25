main_id = 41153
local tbl = {}
local n = 4115301
local v = 4115302
local n2 = 4115303
tbl[1] = 4115304
tbl[2] = n
tbl[3] = v
tbl[4] = n2
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}

cancel_action = {
    CLIENT = {},
    SERVER = {
        QUEST_EXEC_DEL_ALL_SPECIFIC_PACK_ITEM = {{"100659"}},
        QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {{"133102018"}}
    }
}

rewind_data = {
    ["4115301"] = {
        npcs = {
            {
                id = 30028,
                alias = "Npc30028",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "EQ41153_NPCBorn",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4115303"] = {
        npcs = {
            {
                id = 30028,
                alias = "Npc30028",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "EQ41153_NPCBorn",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

quest_data = {
    ["4115301"] = {
        npcs = {
            {
                id = 30028,
                alias = "Npc30028",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "EQ41153_NPCBorn",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4115302"] = {
        npcs = {
            {
                id = 30028,
                alias = "Npc30028",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "EQ41153_NPCBorn",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4115303"] = {
        npcs = {
            {
                id = 30028,
                alias = "Npc30028",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "EQ41153_NPCBorn",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4115304"] = {
        npcs = {
            {
                id = 30028,
                alias = "Npc30028",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "EQ41153_NPCBorn",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}
