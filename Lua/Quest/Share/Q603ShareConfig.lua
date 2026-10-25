main_id = 603
local tbl = {}
local n = 60303
local v = 60302
tbl[1] = 60301
tbl[2] = n
tbl[3] = v
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["60301"] = {}, ["60302"] = {}, ["60303"] = {}}

quest_data = {
    ["60301"] = {
        npcs = {
            {
                id = 1018,
                alias = "Npc1018",
                script = "Actor/Npc/TempNPC",
                pos = "[3_300201055:1308.629,275.177,-798.530,0.000,253.397,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["60302"] = {
        npcs = {
            {
                id = 1001,
                alias = "Wendy",
                script = "Actor/Npc/TempNPC",
                pos = "[20259_7:2316.686,249.990,-761.218,0.000,206.886,0.000]",
                scene_id = 20259,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["60303"] = {}
}
