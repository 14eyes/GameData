main_id = 72013
local tbl = {}
local n = 7201302
local v = 7201303
tbl[1] = 7201301
tbl[2] = n
tbl[3] = v
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["7201301"] = {}, ["7201303"] = {}}

quest_data = {
    ["7201301"] = {
        npcs = {
            {
                id = 1036,
                alias = "Npc1036",
                script = "Actor/Npc/TempNPC",
                pos = "Q19018_bachognshenzi",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7201302"] = {
        npcs = {
            {
                id = 1036,
                alias = "Npc1036",
                script = "Actor/Npc/TempNPC",
                pos = "Q19018_bachognshenzi",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7201303"] = {
        npcs = {
            {
                id = 1088,
                alias = "Npc1088",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350200030:-2187.517,243.901,8449.113,0.000,275.057,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}
