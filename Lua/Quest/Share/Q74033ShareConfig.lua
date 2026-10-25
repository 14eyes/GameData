main_id = 74033
local tbl = {}
local n = 7403301
local v = 7403305
local n2 = 7403303
local n3 = 7403304
tbl[1] = 7403302
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["7403301"] = {},
    ["7403302"] = {},
    ["7403303"] = {
        npcs = {
            {
                id = 21076,
                alias = "Npc21076",
                script = "Actor/Npc/TempNPC",
                pos = "[3_4614:4596.750,-46.380,4590.743,0.000,311.231,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7403304"] = {
        npcs = {
            {
                id = 21076,
                alias = "Npc21076",
                script = "Actor/Npc/TempNPC",
                pos = "[3_4614:4596.750,-46.380,4590.743,0.000,311.231,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7403305"] = {}
}

quest_data = {
    ["7403301"] = {
        npcs = {
            {
                id = 21048,
                alias = "Npc21048",
                script = "Actor/Npc/TempNPC",
                pos = "[3_4947:4582.453,-45.499,4686.493,0.000,225.870,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7403302"] = {},
    ["7403303"] = {},
    ["7403304"] = {
        npcs = {
            {
                id = 21048,
                alias = "Npc21048",
                script = "Actor/Npc/TempNPC",
                pos = "[3_5582:4595.909,-46.380,4592.177,0.000,154.448,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7403305"] = {
        npcs = {
            {
                id = 21076,
                alias = "Npc21076",
                script = "Actor/Npc/TempNPC",
                pos = "[3_4614:4596.750,-46.380,4590.743,0.000,311.231,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}
