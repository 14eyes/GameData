main_id = 70152
local tbl = {}
local n = 7015202
tbl[1] = 7015201
tbl[2] = n
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["7015201"] = {}, ["7015202"] = {}}

quest_data = {
    ["7015201"] = {
        npcs = {
            {
                id = 22854,
                alias = "Npc22854",
                script = "Actor/Npc/TempNPC",
                pos = "[3_18100:9503.480,384.715,6664.638,0.000,289.759,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7015202"] = {}
}
