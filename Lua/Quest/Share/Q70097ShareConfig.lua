main_id = 70097
local tbl = {}
local n = 7009702
tbl[1] = 7009701
tbl[2] = n
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["7009701"] = {}, ["7009702"] = {}}

quest_data = {
    ["7009701"] = {
        npcs = {
            {
                id = 1825,
                alias = "Npc1825",
                script = "Actor/Npc/TempNPC",
                pos = "[103_206:406.531,179.466,602.347,0.000,225.594,0.000]",
                scene_id = 103,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7009702"] = {
        npcs = {
            {
                id = 1825,
                alias = "Npc1825",
                script = "Actor/Npc/TempNPC",
                pos = "[103_207:401.463,178.984,595.659,0.000,264.878,0.000]",
                scene_id = 103,
                room_id = 0,
                data_index = 1
            }
        }
    }
}
