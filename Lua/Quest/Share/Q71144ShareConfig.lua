main_id = 71144
local tbl = {}
local n = 7114402
local v = 7114403
tbl[1] = 7114401
tbl[2] = n
tbl[3] = v
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["7114401"] = {},
    ["7114402"] = {},
    ["7114403"] = {
        npcs = {
            {
                id = 30601,
                alias = "Npc30601",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310702021:-744.533,222.824,320.688,0.000,114.919,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

quest_data = {
    ["7114401"] = {},
    ["7114402"] = {
        npcs = {
            {
                id = 30601,
                alias = "Npc30601",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310702021:-744.533,222.824,320.688,0.000,114.919,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7114403"] = {}
}
