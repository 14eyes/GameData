main_id = 73041
local tbl = {}
local n = 7304102
local v = 7304103
local n2 = 7304104
tbl[1] = 7304101
tbl[2] = n
tbl[3] = v
tbl[4] = n2
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["7304101"] = {}, ["7304102"] = {}, ["7304103"] = {}, ["7304104"] = {}}

quest_data = {
    ["7304101"] = {
        npcs = {
            {
                id = 20714,
                alias = "Npc20714",
                script = "Actor/Npc/TempNPC",
                pos = "Q7304101_N20714",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 20715,
                alias = "Npc20715",
                script = "Actor/Npc/TempNPC",
                pos = "Q7304101_N20715",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 4208,
                alias = "Npc4208",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7304101_N20714",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 4209,
                alias = "Npc4209",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7304101_N20715",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["7304102"] = {
        npcs = {
            {
                id = 20714,
                alias = "Npc20714",
                script = "Actor/Npc/TempNPC",
                pos = "Q7304102_N20714",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 20715,
                alias = "Npc20715",
                script = "Actor/Npc/TempNPC",
                pos = "Q7304102_N20715",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 4208,
                alias = "Npc4208",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7304102_N20714",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 4209,
                alias = "Npc4209",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7304102_N20715",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["7304103"] = {},
    ["7304104"] = {
        npcs = {
            {
                id = 20714,
                alias = "Npc20714",
                script = "Actor/Npc/TempNPC",
                pos = "Q7304103_N20714",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 20715,
                alias = "Npc20715",
                script = "Actor/Npc/TempNPC",
                pos = "Q7304103_N20715",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 4208,
                alias = "Npc4208",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7304103_N20714",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 4209,
                alias = "Npc4209",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7304103_N20715",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    }
}
