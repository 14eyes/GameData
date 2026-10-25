main_id = 75097
local tbl = {}
local n = 7509702
local v = 7509703
local n2 = 7509704
local n3 = 7509705
local n4 = 7509706
tbl[1] = 7509701
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
tbl[6] = n4
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
local tbl2 = {["7509701"] = {}, ["7509702"] = {}, ["7509703"] = {}}
local tbl3 = {}
local quest_var = {}
local n5 = 0
local n6 = 0
local n7 = 0
local n8 = 0
quest_var[1] = 1
quest_var[2] = n5
quest_var[3] = n6
quest_var[4] = n7
quest_var[5] = n8
tbl3.quest_var = quest_var
tbl2["7509704"] = tbl3
local tbl4 = {}
local quest_var2 = {}
local n9 = 0
local n10 = 0
local n11 = 0
local n12 = 0
quest_var2[1] = 1
quest_var2[2] = n9
quest_var2[3] = n10
quest_var2[4] = n11
quest_var2[5] = n12
tbl4.quest_var = quest_var2
tbl2["7509705"] = tbl4
local tbl5 = {}
local quest_var3 = {}
local n13 = 0
local n14 = 0
local n15 = 0
local n16 = 0
quest_var3[1] = 1
quest_var3[2] = n13
quest_var3[3] = n14
quest_var3[4] = n15
quest_var3[5] = n16
tbl5.quest_var = quest_var3
tbl2["7509706"] = tbl5
rewind_data = tbl2

quest_data = {
    ["7509701"] = {},
    ["7509702"] = {},
    ["7509703"] = {},
    ["7509704"] = {
        npcs = {
            {
                id = 1005,
                alias = "Paimon",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350400123:-1395.410,199.437,7751.955,0.000,202.558,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7509705"] = {
        npcs = {
            {
                id = 1005,
                alias = "Paimon",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350400123:-1395.410,199.437,7751.955,0.000,202.558,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7509706"] = {
        npcs = {
            {
                id = 1005,
                alias = "Paimon",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350400123:-1395.410,199.437,7751.955,0.000,202.558,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}
