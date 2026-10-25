main_id = 70090
local tbl = {}
local n = 7009002
local v = 7009003
tbl[1] = 7009001
tbl[2] = n
tbl[3] = v
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["7009001"] = {}, ["7009003"] = {}}

quest_data = {
    ["7009001"] = {
        npcs = {
            {
                id = 1018,
                alias = "Npc1018",
                script = "Actor/Npc/TempNPC",
                pos = "[3_17196:1200.634,374.210,-792.896,0.000,330.000,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7009002"] = {
        npcs = {
            {
                id = 1018,
                alias = "Npc1018",
                script = "Actor/Npc/TempNPC",
                pos = "[3_17196:1200.634,374.210,-792.896,0.000,330.000,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7009003"] = {
        npcs = {
            {
                id = 1018,
                alias = "Npc1018",
                script = "Actor/Npc/TempNPC",
                pos = "[3_17193:1206.078,374.170,-789.829]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}
