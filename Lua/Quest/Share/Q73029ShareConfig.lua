main_id = 73029
local tbl = {}
local n = 7302901
local v = 7302903
local n2 = 7302902
local n3 = 7302904
tbl[1] = 7302905
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["7302901"] = {}, ["7302902"] = {}, ["7302903"] = {}, ["7302904"] = {}, ["7302905"] = {}}

quest_data = {
    ["7302901"] = {},
    ["7302902"] = {},
    ["7302903"] = {
        npcs = {
            {
                id = 20909,
                alias = "Npc20909",
                script = "Actor/Npc/TempNPC",
                pos = "Q7302901_N20600",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7302904"] = {},
    ["7302905"] = {}
}
