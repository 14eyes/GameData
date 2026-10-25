main_id = 71515
local tbl = {}
local n = 7151502
tbl[1] = 7151501
tbl[2] = n
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["7151501"] = {},
    ["7151502"] = {
        npcs = {
            {
                id = 30306,
                alias = "Npc30306",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7151501_N30306",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 30307,
                alias = "Npc30307",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7151501_N30307",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 30308,
                alias = "Npc30308",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7151501_N30308",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    }
}

quest_data = {
    ["7151501"] = {
        npcs = {
            {
                id = 30306,
                alias = "Npc30306",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7151501_N30306",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 30307,
                alias = "Npc30307",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7151501_N30307",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 30308,
                alias = "Npc30308",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7151501_N30308",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["7151502"] = {}
}
