main_id = 76080
local tbl = {}
local n = 7608002
local v = 7608003
local n2 = 7608004
tbl[1] = 7608001
tbl[2] = n
tbl[3] = v
tbl[4] = n2
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["7608001"] = {}, ["7608002"] = {}, ["7608003"] = {}, ["7608004"] = {}}

quest_data = {
    ["7608001"] = {},
    ["7608002"] = {
        npcs = {
            {
                id = 22185,
                alias = "Npc22185",
                script = "Actor/Npc/TempNPC",
                pos = "[3_13625:1653.060,201.922,10187.040,0.000,70.654,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7608003"] = {},
    ["7608004"] = {
        npcs = {
            {
                id = 22185,
                alias = "Npc22185",
                script = "Actor/Npc/TempNPC",
                pos = "[3_13628:1674.792,200.201,10266.510,0.000,189.104,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}
