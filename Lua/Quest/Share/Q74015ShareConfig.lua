main_id = 74015
local tbl = {}
local n = 7401502
local v = 7401504
local n2 = 7401503
local n3 = 7401506
local n4 = 7401505
local n5 = 7401507
tbl[1] = 7401501
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
tbl[6] = n4
tbl[7] = n5
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["7401501"] = {},
    ["7401502"] = {},
    ["7401503"] = {},
    ["7401504"] = {},
    ["7401505"] = {},
    ["7401506"] = {
        npcs = {
            {
                id = 21035,
                alias = "Npc21035",
                script = "Actor/Npc/TempNPC",
                pos = "Q7401502_N21035",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

quest_data = {
    ["7401501"] = {transmit_points = {{point_id = 1, scene_id = 3, pos = "Q7401502_player"}}},
    ["7401502"] = {
        npcs = {
            {
                id = 21035,
                alias = "Npc21035",
                script = "Actor/Npc/TempNPC",
                pos = "Q7401502_N21035",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7401503"] = {
        npcs = {
            {
                id = 21035,
                alias = "Npc21035",
                script = "Actor/Npc/TempNPC",
                pos = "Q7401502_N21035",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 2, scene_id = 3, pos = "Q7401502_player"}}
    },
    ["7401504"] = {
        npcs = {
            {
                id = 21035,
                alias = "Npc21035",
                script = "Actor/Npc/TempNPC",
                pos = "Q7401502_N21035",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7401505"] = {
        npcs = {
            {
                id = 21035,
                alias = "Npc21035",
                script = "Actor/Npc/TempNPC",
                pos = "Q7401502_N21035",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7401506"] = {},
    ["7401507"] = {}
}
