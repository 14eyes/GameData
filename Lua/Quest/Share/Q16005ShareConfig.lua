main_id = 16005
local tbl = {}
local n = 1600502
tbl[1] = 1600501
tbl[2] = n
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["1600501"] = {}, ["1600502"] = {}}

quest_data = {
    ["1600501"] = {},
    ["1600502"] = {
        npcs = {
            {
                id = 1320,
                alias = "Npc1320",
                script = "Actor/Npc/TempNPC",
                pos = "[3_15013:2256.625,230.083,-808.331]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}
