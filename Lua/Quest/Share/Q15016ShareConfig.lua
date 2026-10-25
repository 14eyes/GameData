main_id = 15016
local tbl = {}
local n = 1501601
tbl[1] = 1501602
tbl[2] = n
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["1501601"] = {}, ["1501602"] = {}}

quest_data = {
    ["1501601"] = {
        npcs = {
            {
                id = 1095,
                alias = "Npc1095",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350400250:-1371.828,169.272,7664.439,0.000,72.506,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1501602"] = {
        npcs = {
            {
                id = 1095,
                alias = "Npc1095",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350400250:-1371.828,169.272,7664.439,0.000,72.506,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}
