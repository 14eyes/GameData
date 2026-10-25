main_id = 72728
local tbl = {}
local n = 7272803
local v = 7272802
tbl[1] = 7272801
tbl[2] = n
tbl[3] = v
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
local tbl2 = {}
local tbl3 = {}
local quest_var = {}
local n2 = -1
local n3 = -1
local n4 = -1
local n5 = -1
quest_var[1] = 1
quest_var[2] = n2
quest_var[3] = n3
quest_var[4] = n4
quest_var[5] = n5
tbl3.quest_var = quest_var
tbl2["7272801"] = tbl3
tbl2["7272802"] = {}
rewind_data = tbl2

quest_data = {
    ["7272801"] = {
        npcs = {
            {
                id = 1005,
                alias = "Paimon",
                script = "Actor/Quest/Q352/Paimon",
                pos = "Q22021_Wushidashu_02",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7272802"] = {
        npcs = {
            {
                id = 1005,
                alias = "Paimon",
                script = "Actor/Quest/Q352/Paimon",
                pos = "Q7272802_Player",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7272803"] = {
        npcs = {
            {
                id = 1005,
                alias = "Paimon",
                script = "Actor/Quest/Q352/Paimon",
                pos = "Q22021_Wushidashu_02",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}
