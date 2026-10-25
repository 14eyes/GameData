main_id = 16008
local tbl = {}
local n = 1600802
tbl[1] = 1600801
tbl[2] = n
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["1600801"] = {}, ["1600802"] = {}}

quest_data = {
    ["1600801"] = {},
    ["1600802"] = {
        npcs = {
            {
                id = 1065,
                alias = "Npc1065",
                script = "Actor/Npc/TempNPC",
                pos = "[1073_139:12.454,1.520,-7.698,0.000,291.161,0.000]",
                scene_id = 1073,
                room_id = 1,
                data_index = 1
            },
            {
                id = 1320,
                alias = "Npc1320",
                script = "Actor/Npc/TempNPC",
                pos = "[1073_140:11.732,0.642,-10.493,0.000,162.839,0.000]",
                scene_id = 1073,
                room_id = 1,
                data_index = 2
            }
        }
    }
}
