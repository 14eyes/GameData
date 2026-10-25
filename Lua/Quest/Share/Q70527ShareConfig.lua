main_id = 70527
local tbl = {}
local n = 7052702
tbl[1] = 7052701
tbl[2] = n
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["7052701"] = {},
    ["7052702"] = {
        npcs = {
            {
                id = 1419,
                alias = "Npc1419",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7052701_N1419",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 30159,
                alias = "Npc30159",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7052701_N30159",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    }
}

quest_data = {
    ["7052701"] = {
        npcs = {
            {
                id = 1419,
                alias = "Npc1419",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7052701_N1419",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 30159,
                alias = "Npc30159",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7052701_N30159",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["7052702"] = {}
}
