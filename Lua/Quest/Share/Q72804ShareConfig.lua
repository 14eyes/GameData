main_id = 72804
local tbl = {}
local n = 7280403
local v = 7280404
local n2 = 7280408
local n3 = 7280405
local n4 = 7280406
local n5 = 7280407
tbl[1] = 7280401
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
    ["7280401"] = {},
    ["7280403"] = {},
    ["7280404"] = {},
    ["7280406"] = {},
    ["7280407"] = {},
    ["7280408"] = {}
}

quest_data = {
    ["7280401"] = {},
    ["7280403"] = {},
    ["7280404"] = {
        npcs = {
            {
                id = 3060,
                alias = "Npc3060",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7280404NPC3060",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7280405"] = {
        npcs = {
            {
                id = 20332,
                alias = "Npc20332",
                script = "Actor/Npc/TempNPC",
                pos = "Q7280405hailuanguiBOSS",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7280406"] = {},
    ["7280407"] = {
        npcs = {
            {
                id = 3060,
                alias = "Npc3060",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7280407NPC3060",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7280408"] = {
        npcs = {
            {
                id = 3060,
                alias = "Npc3060",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7280405NPC3060",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 20332,
                alias = "Npc20332",
                script = "Actor/Npc/TempNPC",
                pos = "Q7280405hailuanguiBOSS",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    }
}
