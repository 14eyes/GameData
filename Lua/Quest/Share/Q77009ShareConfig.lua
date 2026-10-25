main_id = 77009
local tbl = {}
local n = 7700902
tbl[1] = 7700901
tbl[2] = n
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["7700901"] = {}, ["7700902"] = {}}

quest_data = {
    ["7700901"] = {
        npcs = {
            {
                id = 17094,
                alias = "Npc17094",
                script = "Actor/Npc/TempNPC",
                pos = "[1159_48:66.296,-4.171,-465.263]",
                scene_id = 1159,
                room_id = 1,
                data_index = 1
            }
        },
        transmit_points = {
            {point_id = 1, scene_id = 1159, pos = "[1159_48:66.296,-4.171,-465.263]"},
            {point_id = 2, scene_id = 1159, pos = "[1159_11:63.269,-4.142,-459.145]"}
        }
    },
    ["7700902"] = {}
}
