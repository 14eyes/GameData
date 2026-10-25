main_id = 75209
local tbl = {}
local n = 7520902
local v = 7520903
local n2 = 7520904
local n3 = 7520910
local n4 = 7520906
local n5 = 7520907
local n6 = 7520908
local n7 = 7520909
local n8 = 7520905
tbl[1] = 7520901
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
tbl[6] = n4
tbl[7] = n5
tbl[8] = n6
tbl[9] = n7
tbl[10] = n8
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["7520901"] = {},
    ["7520904"] = {},
    ["7520905"] = {},
    ["7520907"] = {},
    ["7520908"] = {},
    ["7520909"] = {}
}

quest_data = {
    ["7520901"] = {
        npcs = {
            {
                id = 6547,
                alias = "Npc6547_1",
                script = "Actor/Npc/TempNPC",
                pos = "[3_12880:758.878,273.379,13770.740]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7520902"] = {},
    ["7520903"] = {},
    ["7520904"] = {
        npcs = {
            {
                id = 6547,
                alias = "Npc6547_1",
                script = "Actor/Npc/TempNPC",
                pos = "[3_12880:758.878,273.379,13770.740]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "[3_352000004:734.661,268.536,13724.780,0.000,10.000,0.000]"}}
    },
    ["7520905"] = {
        npcs = {
            {
                id = 6547,
                alias = "Npc6547_1",
                script = "Actor/Npc/TempNPC",
                pos = "[3_11081:771.982,248.477,13925.990]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7520906"] = {},
    ["7520907"] = {
        npcs = {
            {
                id = 6547,
                alias = "Npc6547_1",
                script = "Actor/Npc/TempNPC",
                pos = "[3_11082:752.276,267.298,13779.380]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7520908"] = {},
    ["7520909"] = {},
    ["7520910"] = {
        transmit_points = {{point_id = 1, scene_id = 3, pos = "[3_352000004:734.661,268.536,13724.780,0.000,10.000,0.000]"}}
    }
}
