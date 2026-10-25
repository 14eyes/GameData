main_id = 77210
local tbl = {}
local n = 7721003
local v = 7721004
local n2 = 7721001
local n3 = 7721006
local n4 = 7721007
local n5 = 7721008
local n6 = 7721009
local n7 = 7721002
tbl[1] = 7721005
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
    ["7721001"] = {},
    ["7721002"] = {},
    ["7721003"] = {},
    ["7721004"] = {},
    ["7721005"] = {},
    ["7721006"] = {},
    ["7721007"] = {},
    ["7721008"] = {},
    ["7721009"] = {}
}

quest_data = {
    ["7721001"] = {
        transmit_points = {{point_id = 1, scene_id = 3, pos = "[3_18212:9849.050,200.204,7684.011,0.000,25.328,0.000]"}}
    },
    ["7721002"] = {
        npcs = {
            {
                id = 22734,
                alias = "Npc22734",
                script = "Actor/Npc/TempNPC",
                pos = "[3_18212:9849.050,200.204,7684.011,0.000,25.328,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7721003"] = {
        transmit_points = {{point_id = 1, scene_id = 3, pos = "[3_18211:9796.647,200.045,7629.412,0.000,74.690,0.000]"}}
    },
    ["7721004"] = {
        npcs = {
            {
                id = 22734,
                alias = "Npc22734",
                script = "Actor/Npc/TempNPC",
                pos = "[3_18211:9796.647,200.045,7629.412,0.000,74.690,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7721005"] = {},
    ["7721006"] = {},
    ["7721007"] = {},
    ["7721008"] = {},
    ["7721009"] = {}
}
