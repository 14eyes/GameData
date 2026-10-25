main_id = 76197
local tbl = {}
local n = 7619702
local v = 7619703
local n2 = 7619705
local n3 = 7619704
tbl[1] = 7619701
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["7619701"] = {}, ["7619702"] = {}, ["7619703"] = {}}

quest_data = {
    ["7619701"] = {},
    ["7619702"] = {
        npcs = {
            {
                id = 16562,
                alias = "Npc16562",
                script = "Actor/Npc/TempNPC",
                pos = "[3_15867:1795.969,200.718,10598.670]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7619703"] = {
        npcs = {
            {
                id = 21837,
                alias = "Npc21837",
                script = "Actor/Npc/TempNPC",
                pos = "[3_16478:1827.401,200.561,10624.850,0.000,267.600,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 7081,
                alias = "Npc7081",
                script = "Actor/Npc/TempNPC",
                pos = "[3_16477:1826.404,200.675,10623.040,0.000,299.865,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["7619704"] = {
        npcs = {
            {
                id = 21837,
                alias = "Npc21837",
                script = "Actor/Npc/TempNPC",
                pos = "[3_16478:1827.401,200.561,10624.850,0.000,267.600,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 7081,
                alias = "Npc7081",
                script = "Actor/Npc/TempNPC",
                pos = "[3_16477:1826.404,200.675,10623.040,0.000,299.865,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["7619705"] = {}
}
