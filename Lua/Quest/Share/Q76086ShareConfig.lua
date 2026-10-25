main_id = 76086
local tbl = {}
local n = 7608602
tbl[1] = 7608601
tbl[2] = n
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["7608601"] = {},
    ["7608602"] = {
        npcs = {
            {
                id = 1318,
                alias = "Npc1318",
                script = "Actor/Npc/TempNPC",
                pos = "[3_360300009:2149.017,136.326,11219.340,0.470,238.684,0.772]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

quest_data = {
    ["7608601"] = {
        npcs = {
            {
                id = 1318,
                alias = "Npc1318",
                script = "Actor/Npc/TempNPC",
                pos = "[3_360300009:2149.017,136.326,11219.340,0.470,238.684,0.772]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7608602"] = {
        npcs = {
            {
                id = 1318,
                alias = "Npc1318_1",
                script = "Actor/Npc/TempNPC",
                pos = "[3_360300005:2138.599,108.775,11208.970,0.000,189.288,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}
