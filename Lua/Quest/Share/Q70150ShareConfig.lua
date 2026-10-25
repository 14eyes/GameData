main_id = 70150
local tbl = {}
local n = 7015002
tbl[1] = 7015001
tbl[2] = n
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["7015001"] = {}, ["7015002"] = {}}

quest_data = {
    ["7015001"] = {
        npcs = {
            {
                id = 17113,
                alias = "Npc17113_1",
                script = "Actor/Npc/TempNPC",
                pos = "[3_18094:7598.605,212.442,7802.036,0.000,203.688,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7015002"] = {
        npcs = {
            {
                id = 17113,
                alias = "Npc17113_1",
                script = "Actor/Npc/TempNPC",
                pos = "[3_18671:7722.017,218.980,7717.639,0.000,133.655,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}
