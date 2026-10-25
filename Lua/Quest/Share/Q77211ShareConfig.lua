main_id = 77211
local tbl = {}
local n = 7721101
local v = 7721102
local n2 = 7721103
local n3 = 7721104
local n4 = 7721105
tbl[1] = 7721106
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
tbl[6] = n4
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["7721101"] = {}, ["7721102"] = {}, ["7721106"] = {}}

quest_data = {
    ["7721101"] = {
        transmit_points = {{point_id = 1, scene_id = 3, pos = "[3_18219:7569.955,200.090,6565.037,0.000,240.055,0.000]"}}
    },
    ["7721102"] = {
        npcs = {
            {
                id = 22734,
                alias = "Npc22734",
                script = "Actor/Npc/TempNPC",
                pos = "[3_18219:7569.955,200.090,6565.037,0.000,240.055,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7721103"] = {},
    ["7721104"] = {},
    ["7721105"] = {},
    ["7721106"] = {}
}
