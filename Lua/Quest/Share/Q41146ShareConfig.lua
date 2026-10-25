main_id = 41146
local tbl = {}
local n = 4114601
local v = 4114602
local n2 = 4114603
tbl[1] = 4114604
tbl[2] = n
tbl[3] = v
tbl[4] = n2
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}

cancel_action = {
    CLIENT = {},
    SERVER = {
        QUEST_EXEC_DEL_ALL_SPECIFIC_PACK_ITEM = {{"100652"}},
        QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {{"133004435"}}
    }
}

rewind_data = {
    ["4114601"] = {
        npcs = {
            {
                id = 157901,
                alias = "Npc157901",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "EQ41146_NPCBorn",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4114603"] = {
        npcs = {
            {
                id = 157901,
                alias = "Npc157901",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "EQ41146_NPCBorn",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

quest_data = {
    ["4114601"] = {
        npcs = {
            {
                id = 157901,
                alias = "Npc157901",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "EQ41146_NPCBorn",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1579,
                alias = "Npc1579",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "EQ41146_NPCBorn",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4114602"] = {
        npcs = {
            {
                id = 157901,
                alias = "Npc157901",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "EQ41146_NPCBorn",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1579,
                alias = "Npc1579",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "EQ41146_NPCBorn",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4114603"] = {
        npcs = {
            {
                id = 157901,
                alias = "Npc157901",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "EQ41146_NPCBorn",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1579,
                alias = "Npc1579",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "EQ41146_NPCBorn",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4114604"] = {
        npcs = {
            {
                id = 157901,
                alias = "Npc157901",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "EQ41146_NPCBorn",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1579,
                alias = "Npc1579",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "EQ41146_NPCBorn",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    }
}
