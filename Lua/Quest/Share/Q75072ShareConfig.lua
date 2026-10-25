main_id = 75072
local tbl = {}
local n = 7507202
tbl[1] = 7507201
tbl[2] = n
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["7507201"] = {}, ["7507202"] = {}}

quest_data = {
    ["7507201"] = {
        npcs = {
            {
                id = 21493,
                alias = "Npc21493",
                script = "Actor/Npc/TempNPC",
                pos = "[3_8270:-2222.111,298.841,8340.089,0.000,301.981,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7507202"] = {
        npcs = {
            {
                id = 21493,
                alias = "Npc21493",
                script = "Actor/Npc/TempNPC",
                pos = "[3_8687:-2175.407,244.447,8435.218]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}
