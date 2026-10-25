main_id = 71057
local tbl = {}
local n = 7105702
local v = 7105703
local n2 = 7105704
local n3 = 7105705
local n4 = 7105706
local n5 = 7105707
local n6 = 7105708
local n7 = 7105709
tbl[1] = 7105701
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
tbl[6] = n4
tbl[7] = n5
tbl[8] = n6
tbl[9] = n7
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["7105701"] = {},
    ["7105702"] = {},
    ["7105703"] = {},
    ["7105704"] = {},
    ["7105705"] = {},
    ["7105706"] = {},
    ["7105707"] = {},
    ["7105708"] = {},
    ["7105709"] = {}
}

quest_data = {
    ["7105701"] = {},
    ["7105702"] = {
        npcs = {
            {
                id = 20534,
                alias = "Npc20534",
                script = "Actor/Npc/TempNPC",
                pos = "Q7105702_N20534",
                scene_id = 6,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 1, scene_id = 6, pos = "Q7105702"}}
    },
    ["7105703"] = {},
    ["7105704"] = {},
    ["7105705"] = {
        npcs = {
            {
                id = 20534,
                alias = "Npc20534",
                script = "Actor/Npc/TempNPC",
                pos = "Q7105705_N20534",
                scene_id = 6,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7105706"] = {
        npcs = {
            {
                id = 20534,
                alias = "Npc20534",
                script = "Actor/Npc/TempNPC",
                pos = "Q7105705_N20534",
                scene_id = 6,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7105707"] = {},
    ["7105708"] = {},
    ["7105709"] = {}
}
