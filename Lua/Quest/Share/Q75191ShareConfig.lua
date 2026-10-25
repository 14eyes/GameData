main_id = 75191
local tbl = {}
local n = 7519102
local v = 7519103
tbl[1] = 7519101
tbl[2] = n
tbl[3] = v
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["7519101"] = {}, ["7519102"] = {}, ["7519103"] = {}}

quest_data = {
    ["7519101"] = {},
    ["7519102"] = {
        npcs = {
            {
                id = 21807,
                alias = "Npc21807",
                script = "Actor/Npc/TempNPC",
                pos = "[101_61:-25.756,731.800,425.377]",
                scene_id = 101,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7519103"] = {}
}
