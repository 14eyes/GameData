main_id = 76193
local tbl = {}
local n = 7619302
tbl[1] = 7619301
tbl[2] = n
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["7619301"] = {}, ["7619302"] = {}}

quest_data = {
    ["7619301"] = {
        npcs = {
            {
                id = 5301,
                alias = "Npc5301",
                script = "Actor/Npc/TempNPC",
                pos = "[3_15855:2167.245,201.456,9905.606,0.000,352.910,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 5303,
                alias = "Npc5303",
                script = "Actor/Npc/TempNPC",
                pos = "[3_15854:2169.338,201.424,9905.370,0.000,345.748,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["7619302"] = {}
}
