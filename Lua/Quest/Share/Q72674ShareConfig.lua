main_id = 72674
local tbl = {}
local n = 7267402
local v = 7267403
tbl[1] = 7267401
tbl[2] = n
tbl[3] = v
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["7267401"] = {},
    ["7267402"] = {
        npcs = {
            {
                id = 3159,
                alias = "Npc3159",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7267401_N3159",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7267403"] = {
        npcs = {
            {
                id = 3159,
                alias = "Npc3159",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7267401_N3159",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

quest_data = {
    ["7267401"] = {
        npcs = {
            {
                id = 3159,
                alias = "Npc3159",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7267401_N3159",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 3160,
                alias = "Npc3160",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7267401_N3159",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 3188,
                alias = "Npc3188",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7267401_N3159",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 3161,
                alias = "Npc3161",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7267401_N3159",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["7267402"] = {
        npcs = {
            {
                id = 3160,
                alias = "Npc3160",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7267402_N3160",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 3188,
                alias = "Npc3188",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7267401_N3159",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 3161,
                alias = "Npc3161",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7267401_N3159",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["7267403"] = {
        npcs = {
            {
                id = 3188,
                alias = "Npc3188",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7267401_N3159",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 3161,
                alias = "Npc3161",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7267401_N3159",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    }
}
