main_id = 41150
local tbl = {}
local n = 4115001
local v = 4115002
local n2 = 4115003
tbl[1] = 4115004
tbl[2] = n
tbl[3] = v
tbl[4] = n2
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}

cancel_action = {
    CLIENT = {},
    SERVER = {
        QUEST_EXEC_DEL_ALL_SPECIFIC_PACK_ITEM = {{"100656"}},
        QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {{"133104916"}}
    }
}

rewind_data = {
    ["4115001"] = {
        npcs = {
            {
                id = 30027,
                alias = "Npc30027",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "EQ41150_NPCBorn",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4115003"] = {
        npcs = {
            {
                id = 30027,
                alias = "Npc30027",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "EQ41150_NPCBorn",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

quest_data = {
    ["4115001"] = {
        npcs = {
            {
                id = 30027,
                alias = "Npc30027",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "EQ41150_NPCBorn",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4115002"] = {
        npcs = {
            {
                id = 30027,
                alias = "Npc30027",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "EQ41150_NPCBorn",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4115003"] = {
        npcs = {
            {
                id = 30027,
                alias = "Npc30027",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "EQ41150_NPCBorn",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4115004"] = {
        npcs = {
            {
                id = 30027,
                alias = "Npc30027",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "EQ41150_NPCBorn",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}
