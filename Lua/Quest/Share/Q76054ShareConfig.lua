main_id = 76054
local tbl = {}
local n = 7605403
tbl[1] = 7605401
tbl[2] = n
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["7605401"] = {},
    ["7605403"] = {
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
    ["7605401"] = {
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
    ["7605403"] = {
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
