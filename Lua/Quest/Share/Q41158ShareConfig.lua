main_id = 41158
local tbl = {}
local n = 4115801
local v = 4115802
local n2 = 4115803
tbl[1] = 4115804
tbl[2] = n
tbl[3] = v
tbl[4] = n2
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}

cancel_action = {
    CLIENT = {},
    SERVER = {
        QUEST_EXEC_DEL_ALL_SPECIFIC_PACK_ITEM = {{"100664"}},
        QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {{"133102090"}}
    }
}

rewind_data = {
    ["4115801"] = {
        npcs = {
            {
                id = 157601,
                alias = "Npc157601",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "EQ41158_NPCBorn",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4115803"] = {
        npcs = {
            {
                id = 157601,
                alias = "Npc157601",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "EQ41158_NPCBorn",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

quest_data = {
    ["4115801"] = {
        npcs = {
            {
                id = 157601,
                alias = "Npc157601",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "EQ41158_NPCBorn",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1576,
                alias = "Npc1576",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "EQ41149_NPCBorn",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4115802"] = {
        npcs = {
            {
                id = 157601,
                alias = "Npc157601",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "EQ41158_NPCBorn",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1576,
                alias = "Npc1576",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "EQ41149_NPCBorn",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4115803"] = {
        npcs = {
            {
                id = 157601,
                alias = "Npc157601",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "EQ41158_NPCBorn",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1576,
                alias = "Npc1576",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "EQ41149_NPCBorn",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4115804"] = {
        npcs = {
            {
                id = 157601,
                alias = "Npc157601",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "EQ41158_NPCBorn",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1576,
                alias = "Npc1576",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "EQ41149_NPCBorn",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    }
}
