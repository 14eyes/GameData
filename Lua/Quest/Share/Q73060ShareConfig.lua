main_id = 73060
local tbl = {}
local n = 7306002
local v = 7306003
local n2 = 7306004
tbl[1] = 7306001
tbl[2] = n
tbl[3] = v
tbl[4] = n2
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["7306001"] = {}, ["7306002"] = {}, ["7306003"] = {}, ["7306004"] = {}}

quest_data = {
    ["7306001"] = {
        npcs = {
            {
                id = 20605,
                alias = "Npc20605",
                script = "Actor/Npc/TempNPC",
                pos = "guide_Q7301801",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 4187,
                alias = "Npc4187",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "guide_Q7301801",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["7306002"] = {
        npcs = {
            {
                id = 20607,
                alias = "Npc20607",
                script = "Actor/Npc/TempNPC",
                pos = "guide_Q7301801_3",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 4189,
                alias = "Npc4189",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "guide_Q7301801_3",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["7306003"] = {
        npcs = {
            {
                id = 20606,
                alias = "Npc20606",
                script = "Actor/Npc/TempNPC",
                pos = "guide_Q7301801_2",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 4188,
                alias = "Npc4188",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "guide_Q7301801_2",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["7306004"] = {
        npcs = {
            {
                id = 20608,
                alias = "Npc20608",
                script = "Actor/Npc/TempNPC",
                pos = "guide_Q7301801_4",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 4190,
                alias = "Npc4190",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "guide_Q7301801_4",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    }
}
