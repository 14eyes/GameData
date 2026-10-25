main_id = 70151
local tbl = {}
local n = 7015102
tbl[1] = 7015101
tbl[2] = n
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["7015101"] = {}, ["7015102"] = {}}

quest_data = {
    ["7015101"] = {
        npcs = {
            {
                id = 17110,
                alias = "Npc17110",
                script = "Actor/Npc/TempNPC",
                pos = "[3_18099:9609.464,395.007,6639.990,0.000,114.273,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7015102"] = {}
}
