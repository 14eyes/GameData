main_id = 41155
local tbl = {}
local n = 4115501
local v = 4115502
local n2 = 4115503
tbl[1] = 4115504
tbl[2] = n
tbl[3] = v
tbl[4] = n2
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}

cancel_action = {
    CLIENT = {},
    SERVER = {
        QUEST_EXEC_DEL_ALL_SPECIFIC_PACK_ITEM = {{"100661"}},
        QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {{"133007267"}, {"133007266"}}
    }
}

rewind_data = {
    ["4115501"] = {
        npcs = {
            {
                id = 159301,
                alias = "Npc159301",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "EQ41155_NPCBorn",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4115503"] = {
        npcs = {
            {
                id = 159301,
                alias = "Npc159301",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "EQ41155_NPCBorn",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

quest_data = {
    ["4115501"] = {
        npcs = {
            {
                id = 159301,
                alias = "Npc159301",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "EQ41155_NPCBorn",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1593,
                alias = "Npc1593",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "EQ41152_NPCBorn",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4115502"] = {
        npcs = {
            {
                id = 159301,
                alias = "Npc159301",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "EQ41155_NPCBorn",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1593,
                alias = "Npc1593",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "EQ41152_NPCBorn",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4115503"] = {
        npcs = {
            {
                id = 159301,
                alias = "Npc159301",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "EQ41155_NPCBorn",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1593,
                alias = "Npc1593",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "EQ41152_NPCBorn",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4115504"] = {
        npcs = {
            {
                id = 159301,
                alias = "Npc159301",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "EQ41155_NPCBorn",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1593,
                alias = "Npc1593",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "EQ41152_NPCBorn",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    }
}
