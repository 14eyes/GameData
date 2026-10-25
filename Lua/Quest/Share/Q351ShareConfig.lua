main_id = 351
local tbl = {}
local n = 35101
local v = 35102
local n2 = 35103
local n3 = 35104
local n4 = 35105
local n5 = 35106
local n6 = 35107
tbl[1] = 35100
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
tbl[6] = n4
tbl[7] = n5
tbl[8] = n6
sub_ids = tbl
rewind_data = {}
rewind_data["35104"] = {}

rewind_data["35100"] = {
    avatar = {pos = "Q351PlayerRewind1"},
    npcs = {
        {
            id = 1005,
            alias = "Paimon",
            script = "Actor/Quest/Q352/Paimon",
            pos = "Q351FirstQuest",
            scene_id = 3,
            room_id = 0,
            data_index = 0
        }
    }
}

rewind_data["35102"] = {avatar = {pos = "Q351PlayerRewind2"}}

rewind_data["35105"] = {
    npcs = {
        {
            id = 1005,
            alias = "Paimon",
            script = "Actor/Quest/Q352/Paimon",
            pos = "Q351FirstClimb",
            scene_id = 3,
            room_id = 0,
            data_index = 0
        }
    }
}

quest_data = {}

quest_data["35104"] = {
    npcs = {
        {
            id = 1005,
            alias = "Paimon",
            script = "Actor/Quest/Q352/Paimon",
            pos = "Q351FirstQuest",
            scene_id = 3,
            room_id = 0,
            data_index = 0
        }
    }
}
