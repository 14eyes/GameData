main_id = 71039
local tbl = {}
local n = 7103902
local v = 7103903
tbl[1] = 7103901
tbl[2] = n
tbl[3] = v
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["7103901"] = {},
    ["7103902"] = {
        npcs = {
            {
                id = 2616,
                alias = "Npc2616",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7103802_N2616",
                scene_id = 6,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7103903"] = {}
}

quest_data = {
    ["7103901"] = {
        npcs = {
            {
                id = 2616,
                alias = "Npc2616",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7103802_N2616",
                scene_id = 6,
                room_id = 0,
                data_index = 1
            },
            {
                id = 20523,
                alias = "Npc20523",
                script = "Actor/Npc/TempNPC",
                pos = "Q7103813_N20523",
                scene_id = 6,
                room_id = 0,
                data_index = 2
            },
            {
                id = 20006,
                alias = "Npc20006",
                script = "Actor/Npc/TempNPC",
                pos = "Q7103813_N20523",
                scene_id = 6,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["7103902"] = {
        npcs = {
            {
                id = 20523,
                alias = "Npc20523",
                script = "Actor/Npc/TempNPC",
                pos = "Q7103801_N20523",
                scene_id = 6,
                room_id = 0,
                data_index = 1
            },
            {
                id = 20006,
                alias = "Npc20006",
                script = "Actor/Npc/TempNPC",
                pos = "Q7103801_N20523",
                scene_id = 6,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["7103903"] = {}
}
