main_id = 75049
local tbl = {}
local n = 7504902
local v = 7504903
local n2 = 7504904
local n3 = 7504911
tbl[1] = 7504901
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["7504901"] = {},
    ["7504902"] = {},
    ["7504903"] = {},
    ["7504904"] = {
        npcs = {
            {
                id = 21715,
                alias = "Npc21715",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350100066:-1878.218,-235.251,9065.010,0.000,154.683,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7504911"] = {
        npcs = {
            {
                id = 21715,
                alias = "Npc21715",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350100066:-1878.218,-235.251,9065.010,0.000,154.683,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

quest_data = {
    ["7504901"] = {},
    ["7504902"] = {},
    ["7504903"] = {
        npcs = {
            {
                id = 21715,
                alias = "Npc21715",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350100066:-1878.218,-235.251,9065.010,0.000,154.683,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7504904"] = {
        transmit_points = {
            {point_id = 3, scene_id = 3, pos = "[3_350100132:-1870.662,-236.584,9047.729,0.000,335.634,0.000]"}
        }
    },
    ["7504911"] = {}
}
