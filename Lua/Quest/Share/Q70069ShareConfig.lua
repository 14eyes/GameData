main_id = 70069
local tbl = {}
local n = 7006902
local v = 7006903
local n2 = 7006904
tbl[1] = 7006901
tbl[2] = n
tbl[3] = v
tbl[4] = n2
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["7006901"] = {}, ["7006902"] = {}, ["7006903"] = {}, ["7006904"] = {}}

quest_data = {
    ["7006901"] = {
        npcs = {
            {
                id = 22296,
                alias = "Npc22296",
                script = "Actor/Npc/TempNPC",
                pos = "[103_10:800.192,192.225,469.293,0.000,139.307,0.000]",
                scene_id = 103,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 4, scene_id = 103, pos = "[103_93:825.802,199.763,460.863,0.000,280.227,0.000]"}}
    },
    ["7006902"] = {
        npcs = {
            {
                id = 22296,
                alias = "Npc22296",
                script = "Actor/Npc/TempNPC",
                pos = "[103_10:800.192,192.225,469.293,0.000,139.307,0.000]",
                scene_id = 103,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7006903"] = {
        npcs = {
            {
                id = 22296,
                alias = "Npc22296",
                script = "Actor/Npc/TempNPC",
                pos = "[103_10:800.192,192.225,469.293,0.000,139.307,0.000]",
                scene_id = 103,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7006904"] = {
        npcs = {
            {
                id = 22296,
                alias = "Npc22296",
                script = "Actor/Npc/TempNPC",
                pos = "[103_8:775.416,187.536,452.886,0.000,30.117,0.000]",
                scene_id = 103,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 7, scene_id = 103, pos = "[103_102:776.637,187.584,454.309,0.000,217.654,0.000]"}}
    }
}
