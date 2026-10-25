main_id = 606
local tbl = {}
local n = 60601
local v = 60602
local n2 = 60603
local n3 = 60605
tbl[1] = 60604
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["60601"] = {},
    ["60602"] = {},
    ["60603"] = {},
    ["60604"] = {},
    ["60605"] = {
        npcs = {
            {
                id = 1062,
                alias = "Npc1062",
                script = "Actor/Npc/TempNPC",
                pos = "[20260_4:2323.878,223.990,-826.349,0.000,182.200,0.000]",
                scene_id = 20260,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

quest_data = {
    ["60601"] = {
        npcs = {
            {
                id = 1062,
                alias = "Npc1062",
                script = "Actor/Npc/TempNPC",
                pos = "[20260_4:2323.878,223.990,-826.349,0.000,182.200,0.000]",
                scene_id = 20260,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1027,
                alias = "Npc1027",
                script = "Actor/Npc/TempNPC",
                pos = "[20260_4:2323.878,223.990,-826.349,0.000,182.200,0.000]",
                scene_id = 20260,
                room_id = 0,
                data_index = 2
            }
        },
        transmit_points = {{point_id = 1, scene_id = 20260, pos = "[20260_4:2323.878,223.990,-826.349,0.000,182.200,0.000]"}}
    },
    ["60602"] = {},
    ["60603"] = {
        npcs = {
            {
                id = 1062,
                alias = "Npc1062",
                script = "Actor/Npc/TempNPC",
                pos = "[20260_4:2323.878,223.990,-826.349,0.000,182.200,0.000]",
                scene_id = 20260,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1027,
                alias = "Npc1027",
                script = "Actor/Npc/TempNPC",
                pos = "[20260_4:2323.878,223.990,-826.349,0.000,182.200,0.000]",
                scene_id = 20260,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["60604"] = {
        npcs = {
            {
                id = 1062,
                alias = "Npc1062",
                script = "Actor/Npc/TempNPC",
                pos = "[20260_4:2323.878,223.990,-826.349,0.000,182.200,0.000]",
                scene_id = 20260,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1027,
                alias = "Npc1027",
                script = "Actor/Npc/TempNPC",
                pos = "[20260_4:2323.878,223.990,-826.349,0.000,182.200,0.000]",
                scene_id = 20260,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["60605"] = {
        npcs = {
            {
                id = 1027,
                alias = "Npc1027",
                script = "Actor/Npc/TempNPC",
                pos = "[20260_4:2323.878,223.990,-826.349,0.000,182.200,0.000]",
                scene_id = 20260,
                room_id = 0,
                data_index = 1
            }
        }
    }
}
