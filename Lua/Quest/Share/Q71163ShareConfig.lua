main_id = 71163
local tbl = {}
local n = 7116302
local v = 7116304
local n2 = 7116303
tbl[1] = 7116301
tbl[2] = n
tbl[3] = v
tbl[4] = n2
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
local tbl2 = {}
local tbl3 = {}
local quest_var = {}
local n3 = 0
local n4 = 0
local n5 = 0
local n6 = 0
quest_var[1] = 1
quest_var[2] = n3
quest_var[3] = n4
quest_var[4] = n5
quest_var[5] = n6
tbl3.quest_var = quest_var
tbl2["7116301"] = tbl3
tbl2["7116302"] = {}
tbl2["7116303"] = {}
rewind_data = tbl2

quest_data = {
    ["7116301"] = {},
    ["7116302"] = {
        npcs = {
            {
                id = 1323,
                alias = "Npc1323",
                script = "Actor/Npc/TempNPC",
                pos = "[3_14911:-500.205,210.022,348.080,0.000,150.691,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1323,
                alias = "Npc1323_1",
                script = "Actor/Npc/TempNPC",
                pos = "[3_14910:2505.168,437.010,2158.234]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        },
        transmit_points = {
            {point_id = 1, scene_id = 3, pos = "[3_14919:2508.087,436.983,2156.729]"},
            {point_id = 2, scene_id = 3, pos = "[3_15751:1997.390,281.880,1459.981]"}
        }
    },
    ["7116303"] = {
        npcs = {
            {
                id = 1323,
                alias = "Npc1323",
                script = "Actor/Npc/TempNPC",
                pos = "[3_14910:2505.168,437.010,2158.234]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1323,
                alias = "Npc1323_1",
                script = "Actor/Npc/TempNPC",
                pos = "[3_14911:-500.205,210.022,348.080,0.000,150.691,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["7116304"] = {
        npcs = {
            {
                id = 1323,
                alias = "Npc1323",
                script = "Actor/Npc/TempNPC",
                pos = "[3_14911:-500.205,210.022,348.080,0.000,150.691,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1323,
                alias = "Npc1323_1",
                script = "Actor/Npc/TempNPC",
                pos = "[3_14910:2505.168,437.010,2158.234]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        },
        transmit_points = {{point_id = 3, scene_id = 3, pos = "[3_14919:2508.087,436.983,2156.729]"}}
    }
}
