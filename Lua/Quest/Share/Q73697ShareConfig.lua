main_id = 73697
local tbl = {}
local n = 7369702
local v = 7369703
local n2 = 7369704
local n3 = 7369705
local n4 = 7369706
tbl[1] = 7369701
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
tbl[6] = n4
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["7369701"] = {}, ["7369702"] = {}, ["7369704"] = {}, ["7369706"] = {}}

quest_data = {
    ["7369701"] = {
        npcs = {
            {
                id = 13210,
                alias = "Npc13210",
                script = "Actor/Npc/TempNPC",
                pos = "Q7369701_N13210",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7369702"] = {},
    ["7369703"] = {},
    ["7369704"] = {},
    ["7369705"] = {},
    ["7369706"] = {
        npcs = {
            {
                id = 13210,
                alias = "Npc13210",
                script = "Actor/Npc/TempNPC",
                pos = "Q7369706_N13210",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}
