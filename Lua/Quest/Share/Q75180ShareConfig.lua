main_id = 75180
local tbl = {}
local n = 7518005
local v = 7518003
local n2 = 7518004
local n3 = 7518002
tbl[1] = 7518001
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["7518001"] = {},
    ["7518002"] = {},
    ["7518003"] = {},
    ["7518004"] = {},
    ["7518005"] = {
        npcs = {
            {
                id = 21802,
                alias = "Npc21802",
                script = "Actor/Npc/TempNPC",
                pos = "[3_10717:-2519.876,262.290,10233.230,0.000,324.757,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

quest_data = {
    ["7518001"] = {
        npcs = {
            {
                id = 21802,
                alias = "Npc21802",
                script = "Actor/Npc/TempNPC",
                pos = "[3_10717:-2519.876,262.290,10233.230,0.000,324.757,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 6439,
                alias = "Npc6439",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_10717:-2519.876,262.290,10233.230,0.000,324.757,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "[3_10718:-2522.563,262.864,10237.790,0.000,145.558,0.000]"}}
    },
    ["7518002"] = {
        npcs = {
            {
                id = 21802,
                alias = "Npc21802",
                script = "Actor/Npc/TempNPC",
                pos = "[3_10717:-2519.876,262.290,10233.230,0.000,324.757,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 6439,
                alias = "Npc6439",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_10717:-2519.876,262.290,10233.230,0.000,324.757,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["7518003"] = {
        npcs = {
            {
                id = 21802,
                alias = "Npc21802",
                script = "Actor/Npc/TempNPC",
                pos = "[3_10717:-2519.876,262.290,10233.230,0.000,324.757,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 6439,
                alias = "Npc6439",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_10717:-2519.876,262.290,10233.230,0.000,324.757,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["7518004"] = {},
    ["7518005"] = {
        npcs = {
            {
                id = 6439,
                alias = "Npc6439",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_10717:-2519.876,262.290,10233.230,0.000,324.757,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}
