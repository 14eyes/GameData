main_id = 41159
local tbl = {}
local n = 4115901
local v = 4115902
local n2 = 4115903
tbl[1] = 4115904
tbl[2] = n
tbl[3] = v
tbl[4] = n2
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}

cancel_action = {
    CLIENT = {},
    SERVER = {
        QUEST_EXEC_DEL_ALL_SPECIFIC_PACK_ITEM = {{"100665"}},
        QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {{"133105287"}}
    }
}

rewind_data = {
    ["4115901"] = {
        npcs = {
            {
                id = 30027,
                alias = "Npc30027",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "EQ41159_NPCBorn",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4115903"] = {
        npcs = {
            {
                id = 30027,
                alias = "Npc30027",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "EQ41159_NPCBorn",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

quest_data = {
    ["4115901"] = {
        npcs = {
            {
                id = 30027,
                alias = "Npc30027",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "EQ41159_NPCBorn",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4115902"] = {
        npcs = {
            {
                id = 30027,
                alias = "Npc30027",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "EQ41159_NPCBorn",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4115903"] = {
        npcs = {
            {
                id = 30027,
                alias = "Npc30027",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "EQ41159_NPCBorn",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4115904"] = {
        npcs = {
            {
                id = 30027,
                alias = "Npc30027",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "EQ41159_NPCBorn",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}
