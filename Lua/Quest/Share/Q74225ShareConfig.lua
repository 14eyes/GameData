main_id = 74225
local tbl = {}
local n = 7422501
local v = 7422502
tbl[1] = 7422503
tbl[2] = n
tbl[3] = v
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["7422501"] = {},
    ["7422502"] = {
        npcs = {
            {
                id = 5353,
                alias = "Npc5353",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_8106:1130.555,280.076,4354.859,0.000,106.642,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7422503"] = {}
}

quest_data = {
    ["7422501"] = {
        npcs = {
            {
                id = 5353,
                alias = "Npc5353",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_8106:1130.555,280.076,4354.859,0.000,106.642,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7422502"] = {},
    ["7422503"] = {}
}
