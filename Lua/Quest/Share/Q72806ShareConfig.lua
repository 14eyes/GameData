main_id = 72806
local tbl = {}
local n = 7280602
local v = 7280603
local n2 = 7280604
local n3 = 7280605
tbl[1] = 7280601
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["7280601"] = {},
    ["7280602"] = {},
    ["7280603"] = {},
    ["7280604"] = {
        npcs = {
            {
                id = 10045,
                alias = "Npc10045",
                script = "Actor/Npc/TempNPC",
                pos = "Q7280603XQ",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7280605"] = {
        npcs = {
            {
                id = 10045,
                alias = "Npc10045",
                script = "Actor/Npc/TempNPC",
                pos = "Q7280603XQ",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

quest_data = {
    ["7280601"] = {},
    ["7280602"] = {},
    ["7280603"] = {
        npcs = {
            {
                id = 10045,
                alias = "Npc10045",
                script = "Actor/Npc/TempNPC",
                pos = "Q7280603XQ",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7280604"] = {
        npcs = {
            {
                id = 1005,
                alias = "Paimon",
                script = "Actor/Quest/Q352/Paimon",
                pos = "Q7280603XQ",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7280605"] = {}
}
