main_id = 40213
local tbl = {}
local n = 4021301
tbl[1] = 4021302
tbl[2] = n
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["4021301"] = {}, ["4021302"] = {}}

quest_data = {
    ["4021301"] = {
        npcs = {
            {
                id = 15597,
                alias = "Npc15597",
                script = "Actor/Npc/TempNPC",
                pos = "[3_13447:3577.477,201.254,9423.405,0.000,180.000,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 15598,
                alias = "Npc15598",
                script = "Actor/Npc/TempNPC",
                pos = "[3_13448:3577.152,201.258,9420.628]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4021302"] = {}
}
