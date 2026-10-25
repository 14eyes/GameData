main_id = 73506
local tbl = {}
local n = 7350602
local v = 7350603
tbl[1] = 7350601
tbl[2] = n
tbl[3] = v
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["7350601"] = {},
    ["7350602"] = {},
    ["7350603"] = {
        npcs = {
            {
                id = 2602,
                alias = "Npc2602",
                script = "Actor/Npc/TempNPC",
                pos = "N2602_Q7350603",
                scene_id = 1074,
                room_id = 1,
                data_index = 1
            }
        }
    }
}

quest_data = {
    ["7350601"] = {
        npcs = {
            {
                id = 4070,
                alias = "Npc4070",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7350601_N4070",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7350602"] = {
        npcs = {
            {
                id = 2602,
                alias = "Npc2602",
                script = "Actor/Npc/TempNPC",
                pos = "Q7350602_N30261",
                scene_id = 1074,
                room_id = 1,
                data_index = 1
            },
            {
                id = 30279,
                alias = "Npc30279",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7350602_N30279",
                scene_id = 1074,
                room_id = 1,
                data_index = 2
            },
            {
                id = 1007,
                alias = "Lisa",
                script = "Actor/Quest/Q411/Lisa",
                pos = "Q7350602_N30261",
                scene_id = 1074,
                room_id = 1,
                data_index = 3
            }
        }
    },
    ["7350603"] = {
        npcs = {
            {
                id = 30279,
                alias = "Npc30279",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7350603_N30279",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1007,
                alias = "Lisa",
                script = "Actor/Quest/Q411/Lisa",
                pos = "N2602_Q7350603",
                scene_id = 1074,
                room_id = 1,
                data_index = 2
            }
        }
    }
}
