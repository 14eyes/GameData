main_id = 40239
local tbl = {}
local n = 4023902
local v = 4023903
local n2 = 4023904
tbl[1] = 4023901
tbl[2] = n
tbl[3] = v
tbl[4] = n2
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["4023902"] = {}, ["4023903"] = {}, ["4023904"] = {}}

quest_data = {
    ["4023901"] = {},
    ["4023902"] = {},
    ["4023903"] = {
        npcs = {
            {
                id = 16350,
                alias = "Npc16350",
                script = "Actor/Npc/TempNPC",
                pos = "[3_360700240:1412.849,204.349,9295.525]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4023904"] = {}
}
