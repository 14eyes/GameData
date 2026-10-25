main_id = 5019
local tbl = {}
local n = 501902
tbl[1] = 501901
tbl[2] = n
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["501901"] = {},
    ["501902"] = {
        npcs = {
            {
                id = 14184,
                alias = "Npc14184",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350200413:-2806.977,203.963,9119.372,0.000,188.139,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 14207,
                alias = "Npc14207",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350200414:-2808.308,203.935,9118.883,0.000,145.122,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    }
}

quest_data = {
    ["501901"] = {
        npcs = {
            {
                id = 14184,
                alias = "Npc14184",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350200413:-2806.977,203.963,9119.372,0.000,188.139,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 14207,
                alias = "Npc14207",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350200414:-2808.308,203.935,9118.883,0.000,145.122,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 14607,
                alias = "Npc14607",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350200415:-2807.130,203.971,9117.679,0.000,335.381,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["501902"] = {}
}
