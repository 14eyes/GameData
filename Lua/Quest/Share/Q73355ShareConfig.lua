main_id = 73355
local tbl = {}
local n = 7335502
tbl[1] = 7335501
tbl[2] = n
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["7335501"] = {}, ["7335502"] = {}}

quest_data = {
    ["7335501"] = {
        npcs = {
            {
                id = 4498,
                alias = "Npc4498_1",
                script = "Actor/Npc/TempNPC",
                pos = "[3_15669:400.007,285.391,3273.132]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7335502"] = {
        npcs = {
            {
                id = 4496,
                alias = "Npc4496",
                script = "Actor/Npc/TempNPC",
                pos = "[3_15672:377.056,280.612,3248.549,0.000,151.253,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}
