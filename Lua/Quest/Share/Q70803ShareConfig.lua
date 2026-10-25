main_id = 70803
local tbl = {}
local n = 7080302
tbl[1] = 7080301
tbl[2] = n
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["7080301"] = {}, ["7080302"] = {}}

quest_data = {
    ["7080301"] = {},
    ["7080302"] = {
        npcs = {
            {
                id = 1409,
                alias = "Npc1409",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7080302_N1409",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1668,
                alias = "Npc1668",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7080302_N1668",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1674,
                alias = "Npc1674",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7080302_N1674",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1577,
                alias = "Npc1577",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7080302_N1577",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    }
}
