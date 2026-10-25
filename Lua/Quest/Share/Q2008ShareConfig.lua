main_id = 2008
local tbl = {}
local n = 200805
local v = 200806
local n2 = 200801
local n3 = 200802
local n4 = 200803
local n5 = 200804
local n6 = 200808
tbl[1] = 200807
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
tbl[6] = n4
tbl[7] = n5
tbl[8] = n6
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["200801"] = {},
    ["200803"] = {},
    ["200804"] = {},
    ["200805"] = {},
    ["200806"] = {
        npcs = {
            {
                id = 1013,
                alias = "Npc1013",
                script = "Actor/Npc/TempNPC",
                pos = "Q2003tuoma",
                scene_id = 1060,
                room_id = 1,
                data_index = 2
            }
        }
    },
    ["200808"] = {}
}

quest_data = {
    ["200801"] = {
        npcs = {
            {
                id = 1005,
                alias = "Paimon",
                script = "Actor/Quest/Q352/Paimon",
                pos = "Q200801paimon",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1036,
                alias = "Npc1036",
                script = "Actor/Npc/TempNPC",
                pos = "Q200801yayi",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 12008,
                alias = "Npc12008",
                script = "Actor/Npc/TempNPC",
                pos = "Q200801mass1",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 12009,
                alias = "Npc12009",
                script = "Actor/Npc/TempNPC",
                pos = "Q200801mass2",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 1033,
                alias = "Npc1033",
                script = "Actor/Npc/TempNPC",
                pos = "Q200801tuoma",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            }
        },
        gadgets = {
            {
                id = 70710476,
                alias = "Gadget70710476",
                pos = "Q200801tuoma",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["200802"] = {},
    ["200803"] = {},
    ["200804"] = {
        npcs = {
            {
                id = 1005,
                alias = "Paimon",
                script = "Actor/Quest/Q352/Paimon",
                pos = "Q2008paimon",
                scene_id = 20112,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 1, scene_id = 20112, pos = "Q2008born"}}
    },
    ["200805"] = {},
    ["200806"] = {
        npcs = {
            {
                id = 1005,
                alias = "Paimon",
                script = "Actor/Quest/Q352/Paimon",
                pos = "Q2003paimon",
                scene_id = 1060,
                room_id = 1,
                data_index = 1
            },
            {
                id = 1013,
                alias = "Npc1013",
                script = "Actor/Npc/TempNPC",
                pos = "Q2003tuoma",
                scene_id = 1060,
                room_id = 1,
                data_index = 2
            }
        }
    },
    ["200807"] = {},
    ["200808"] = {transmit_points = {{point_id = 2, scene_id = 3, pos = "Q200901born"}}}
}
