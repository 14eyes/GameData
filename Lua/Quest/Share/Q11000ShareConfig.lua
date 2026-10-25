main_id = 11000
local tbl = {}
local n = 1100002
local v = 1100003
local n2 = 1100004
local n3 = 1100005
tbl[1] = 1100001
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
sub_ids = tbl
XianglingData = {ID = 1012, Alias = "Xiangling"}
PaimonData = {ID = 1005, Alias = "Paimon"}
AllanData = {ID = 153901, Alias = "Npc153901"}
rewind_data = {}
quest_data = {}

quest_data["1100001"] = {
    npcs = {
        {
            alias = "Xiangling",
            script = "Actor/Npc/TempNPC",
            id = 1012,
            pos = "Q1100001XL",
            scene_id = 3,
            room_id = 0,
            data_index = 0
        }
    }
}

quest_data["1100003"] = {
    npcs = {
        {
            alias = "Xiangling",
            script = "Actor/Npc/TempNPC",
            id = 1012,
            pos = "Q1100003XL",
            scene_id = 3,
            room_id = 0,
            data_index = 0
        }
    },
    transmit_points = {{point_id = 1, scene_id = 3, pos = "Q1100003Player"}}
}

quest_data["1100004"] = {
    npcs = {
        {
            alias = "Xiangling",
            script = "Actor/Npc/TempNPC",
            id = 1012,
            pos = "Q1100003XL",
            scene_id = 3,
            room_id = 0,
            data_index = 0
        }
    }
}

quest_data["1100005"] = {
    npcs = {
        {
            alias = "Xiangling",
            script = "Actor/Npc/TempNPC",
            id = 1012,
            pos = "Q1100003XL",
            scene_id = 3,
            room_id = 0,
            data_index = 0
        }
    }
}
