main_id = 72206
local tbl = {}
local n = 7220602
local v = 7220603
local n2 = 7220604
local n3 = 7220605
local n4 = 7220606
local n5 = 7220607
tbl[1] = 7220601
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
rewind_data = {["7220601"] = {}, ["7220607"] = {}}

quest_data = {
    ["7220601"] = {},
    ["7220602"] = {
        npcs = {
            {
                id = 20428,
                alias = "Npc20428",
                script = "Actor/Npc/TempNPC",
                pos = "72206_Point",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7220603"] = {
        npcs = {
            {
                id = 1005,
                alias = "Paimon",
                script = "Actor/Quest/Q352/Paimon",
                pos = "72206_Point",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7220604"] = {},
    ["7220605"] = {
        npcs = {
            {
                id = 20428,
                alias = "Npc20428",
                script = "Actor/Npc/TempNPC",
                pos = "72206_Point",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7220606"] = {
        npcs = {
            {
                id = 20428,
                alias = "Npc20428",
                script = "Actor/Npc/TempNPC",
                pos = "72206_Point",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7220607"] = {
        npcs = {
            {
                id = 20428,
                alias = "Npc20428",
                script = "Actor/Npc/TempNPC",
                pos = "72206_Point",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}
