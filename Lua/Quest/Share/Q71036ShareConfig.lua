main_id = 71036
local tbl = {}
local n = 7103602
local v = 7103604
local n2 = 7103605
local n3 = 7103606
local n4 = 7103607
local n5 = 7103608
local n6 = 7103609
local n7 = 7103611
local n8 = 7103610
tbl[1] = 7103601
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
tbl[6] = n4
tbl[7] = n5
tbl[8] = n6
tbl[9] = n7
tbl[10] = n8
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["7103601"] = {},
    ["7103602"] = {},
    ["7103609"] = {},
    ["7103610"] = {
        npcs = {
            {
                id = 20523,
                alias = "Npc20523",
                script = "Actor/Npc/TempNPC",
                pos = "Q7104503_N20523",
                scene_id = 6,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7103611"] = {}
}

quest_data = {
    ["7103601"] = {
        npcs = {
            {
                id = 20523,
                alias = "Npc20523",
                script = "Actor/Npc/TempNPC",
                pos = "Q7104503_N20523",
                scene_id = 6,
                room_id = 0,
                data_index = 1
            },
            {
                id = 20006,
                alias = "Npc20006",
                script = "Actor/Npc/TempNPC",
                pos = "Q7104503_N20523",
                scene_id = 6,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["7103602"] = {
        npcs = {
            {
                id = 20523,
                alias = "Npc20523",
                script = "Actor/Npc/TempNPC",
                pos = "Q7104503_N20523",
                scene_id = 6,
                room_id = 0,
                data_index = 1
            },
            {
                id = 20006,
                alias = "Npc20006",
                script = "Actor/Npc/TempNPC",
                pos = "Q7104503_N20523",
                scene_id = 6,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["7103604"] = {},
    ["7103605"] = {},
    ["7103606"] = {},
    ["7103607"] = {},
    ["7103608"] = {},
    ["7103609"] = {},
    ["7103610"] = {
        npcs = {
            {
                id = 20006,
                alias = "Npc20006",
                script = "Actor/Npc/TempNPC",
                pos = "Q7104503_N20523",
                scene_id = 6,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7103611"] = {
        npcs = {
            {
                id = 20523,
                alias = "Npc20523",
                script = "Actor/Npc/TempNPC",
                pos = "Q7104503_N20523",
                scene_id = 6,
                room_id = 0,
                data_index = 1
            },
            {
                id = 20006,
                alias = "Npc20006",
                script = "Actor/Npc/TempNPC",
                pos = "Q7104503_N20523",
                scene_id = 6,
                room_id = 0,
                data_index = 2
            }
        },
        transmit_points = {{point_id = 1, scene_id = 6, pos = "Q7103611"}}
    }
}
