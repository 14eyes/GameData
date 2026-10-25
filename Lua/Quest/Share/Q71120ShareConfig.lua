main_id = 71120
local tbl = {}
local n = 7112003
local v = 7112002
tbl[1] = 7112001
tbl[2] = n
tbl[3] = v
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["7112001"] = {},
    ["7112002"] = {
        npcs = {
            {
                id = 21397,
                alias = "Npc21397",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310100181:2436.787,334.006,1874.734,0.000,293.088,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 21413,
                alias = "Npc21413",
                script = "Actor/Npc/TempNPC",
                pos = "[3_311400092:2437.124,334.059,1876.737,0.000,263.434,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["7112003"] = {}
}

quest_data = {
    ["7112001"] = {
        npcs = {
            {
                id = 21397,
                alias = "Npc21397",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310100181:2436.787,334.006,1874.734,0.000,293.088,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 21413,
                alias = "Npc21413",
                script = "Actor/Npc/TempNPC",
                pos = "[3_311400092:2437.124,334.059,1876.737,0.000,263.434,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "[3_311400076:2435.169,334.210,1876.004,0.000,92.932,0.000]"}}
    },
    ["7112002"] = {
        transmit_points = {{point_id = 3, scene_id = 3, pos = "[3_311400076:2435.169,334.210,1876.004,0.000,92.932,0.000]"}}
    },
    ["7112003"] = {
        npcs = {
            {
                id = 21397,
                alias = "Npc21397",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310100181:2436.787,334.006,1874.734,0.000,293.088,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 21413,
                alias = "Npc21413",
                script = "Actor/Npc/TempNPC",
                pos = "[3_311400092:2437.124,334.059,1876.737,0.000,263.434,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        },
        transmit_points = {{point_id = 2, scene_id = 3, pos = "[3_311400076:2435.169,334.210,1876.004,0.000,92.932,0.000]"}}
    }
}
