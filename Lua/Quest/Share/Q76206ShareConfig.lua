main_id = 76206
local tbl = {}
local n = 7620606
local v = 7620601
local n2 = 7620602
tbl[1] = 7620603
tbl[2] = n
tbl[3] = v
tbl[4] = n2
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["7620601"] = {
        npcs = {
            {
                id = 22455,
                alias = "Npc22455",
                script = "Actor/Npc/TempNPC",
                pos = "[103_910303074:313.203,247.809,-558.100,0.000,217.106,0.000]",
                scene_id = 103,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7620602"] = {},
    ["7620603"] = {},
    ["7620606"] = {
        npcs = {
            {
                id = 22455,
                alias = "Npc22455",
                script = "Actor/Npc/TempNPC",
                pos = "[103_910303074:313.203,247.809,-558.100,0.000,217.106,0.000]",
                scene_id = 103,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

quest_data = {
    ["7620601"] = {},
    ["7620602"] = {},
    ["7620603"] = {
        npcs = {
            {
                id = 22455,
                alias = "Npc22455",
                script = "Actor/Npc/TempNPC",
                pos = "[103_910303074:313.203,247.809,-558.100,0.000,217.106,0.000]",
                scene_id = 103,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7620606"] = {}
}
