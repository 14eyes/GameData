main_id = 77001
local tbl = {}
local n = 7700102
tbl[1] = 7700101
tbl[2] = n
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["7700101"] = {}, ["7700102"] = {}}

quest_data = {
    ["7700101"] = {
        npcs = {
            {
                id = 17094,
                alias = "Npc17094",
                script = "Actor/Npc/TempNPC",
                pos = "[1159_34:27.519,0.221,-359.385,0.000,214.354,0.000]",
                scene_id = 1159,
                room_id = 1,
                data_index = 1
            }
        },
        transmit_points = {
            {point_id = 1, scene_id = 1159, pos = "[1159_32:26.308,0.221,-359.826,0.000,72.711,0.000]"},
            {point_id = 2, scene_id = 1159, pos = "[1159_11:63.269,-4.142,-459.145]"}
        }
    },
    ["7700102"] = {}
}
