main_id = 40248
local tbl = {}
local n = 4024801
local v = 4024802
tbl[1] = 4024803
tbl[2] = n
tbl[3] = v
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {QUEST_EXEC_DEL_ALL_SPECIFIC_PACK_ITEM = {{"121629"}}}}
rewind_data = {["4024801"] = {}, ["4024802"] = {}, ["4024803"] = {}}

quest_data = {
    ["4024801"] = {},
    ["4024802"] = {
        npcs = {
            {
                id = 1012,
                alias = "Xiangling",
                script = "Actor/Npc/TempNPC",
                pos = "[3_311500292:2432.308,341.898,2393.721,0.000,143.475,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4024803"] = {}
}
