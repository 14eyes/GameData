main_id = 41144
local tbl = {}
local n = 4114401
local v = 4114402
local n2 = 4114403
tbl[1] = 4114404
tbl[2] = n
tbl[3] = v
tbl[4] = n2
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}

cancel_action = {
    CLIENT = {},
    SERVER = {
        QUEST_EXEC_DEL_ALL_SPECIFIC_PACK_ITEM = {{"100650"}},
        QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {{"133102016"}}
    }
}

rewind_data = {
    ["4114401"] = {
        npcs = {
            {
                id = 30027,
                alias = "Npc30027",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "EQ41144_NPCBorn",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4114403"] = {
        npcs = {
            {
                id = 30027,
                alias = "Npc30027",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "EQ41144_NPCBorn",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

quest_data = {
    ["4114401"] = {
        npcs = {
            {
                id = 30027,
                alias = "Npc30027",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "EQ41144_NPCBorn",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4114402"] = {
        npcs = {
            {
                id = 30027,
                alias = "Npc30027",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "EQ41144_NPCBorn",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4114403"] = {
        npcs = {
            {
                id = 30027,
                alias = "Npc30027",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "EQ41144_NPCBorn",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4114404"] = {
        npcs = {
            {
                id = 30027,
                alias = "Npc30027",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "EQ41144_NPCBorn",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}
