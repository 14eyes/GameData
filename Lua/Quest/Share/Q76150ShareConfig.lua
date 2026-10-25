main_id = 76150
local tbl = {}
local n = 7615003
local v = 7615002
tbl[1] = 7615001
tbl[2] = n
tbl[3] = v
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["7615001"] = {}, ["7615002"] = {}, ["7615003"] = {}}

quest_data = {
    ["7615001"] = {},
    ["7615002"] = {
        npcs = {
            {
                id = 22272,
                alias = "Npc22272",
                script = "Actor/Npc/TempNPC",
                pos = "[103_44:187.220,-643.543,457.943,0.000,236.041,0.000]",
                scene_id = 103,
                room_id = 0,
                data_index = 1
            },
            {
                id = 22306,
                alias = "Npc22306",
                script = "Actor/Npc/TempNPC",
                pos = "[103_184:184.700,-643.545,457.574,0.000,53.523,0.000]",
                scene_id = 103,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["7615003"] = {}
}
