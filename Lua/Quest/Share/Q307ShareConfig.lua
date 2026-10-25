main_id = 307
local tbl = {}
local n = 30701
local v = 30702
local n2 = 30703
local n3 = 30704
local n4 = 30707
local n5 = 30708
local n6 = 30709
local n7 = 30710
local n8 = 30711
local n9 = 30712
local n10 = 30713
local n11 = 30715
tbl[1] = 30700
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
tbl[6] = n4
tbl[7] = n5
tbl[8] = n6
tbl[9] = n7
tbl[10] = n8
tbl[11] = n9
tbl[12] = n10
tbl[13] = n11
sub_ids = tbl
rewind_data = {}
rewind_data["30701"] = {npcs = {{id = 1004, alias = "Gaia", script = "Actor/Quest/Q301/Gaia301", pos = "Q307DungeonGaia"}}}
rewind_data["30702"] = {npcs = {{id = 1004, alias = "Gaia", script = "Actor/Quest/Q301/Gaia301", pos = "Q307DungeonDoor"}}}
quest_data = {}

quest_data["30700"] = {
    npcs = {
        {
            alias = "Gaia",
            script = "Actor/Quest/Q301/Gaia301",
            id = 1004,
            pos = "Q307DungeonGaia",
            scene_id = 3,
            room_id = 0,
            data_index = 0
        }
    }
}

quest_data["30704"] = {transmit_points = {{point_id = 1, scene_id = 3, pos = "Q307DungeonDoor"}}}

quest_data["30710"] = {
    npcs = {
        {
            alias = "Gaia",
            script = "Actor/Quest/Q301/Gaia301",
            id = 1004,
            pos = "Q307GaiaDungeon",
            scene_id = 20008,
            room_id = 0,
            data_index = 0
        }
    }
}

quest_data["30715"] = {
    npcs = {
        {
            alias = "Gaia",
            script = "Actor/Quest/Q301/Gaia301",
            id = 1004,
            pos = "Q307Gaia",
            scene_id = 20008,
            room_id = 0,
            data_index = 0
        }
    }
}
