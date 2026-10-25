main_id = 308
local tbl = {}
local n = 30801
local v = 30802
local n2 = 30803
local n3 = 30804
local n4 = 30807
local n5 = 30808
local n6 = 30809
local n7 = 30810
local n8 = 30811
local n9 = 30812
local n10 = 30814
tbl[1] = 30800
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
sub_ids = tbl
rewind_data = {}
rewind_data["30801"] = {npcs = {{id = 1007, alias = "Lisa", script = "Actor/Quest/Q411/Lisa", pos = "Q308DungeonLisa"}}}
rewind_data["30802"] = {npcs = {{id = 1007, alias = "Lisa", script = "Actor/Quest/Q411/Lisa", pos = "Q308DungeonDoor"}}}
quest_data = {}

quest_data["30800"] = {
    npcs = {
        {
            alias = "Lisa",
            script = "Actor/Quest/Q411/Lisa",
            id = 1007,
            pos = "Q308DungeonLisa",
            scene_id = 3,
            room_id = 0,
            data_index = 0
        }
    }
}

quest_data["30810"] = {
    npcs = {
        {
            alias = "Lisa",
            script = "Actor/Quest/Q411/Lisa",
            id = 1007,
            pos = "Q308LisaDungeon",
            scene_id = 20011,
            room_id = 0,
            data_index = 0
        }
    }
}

quest_data["30814"] = {
    npcs = {
        {
            alias = "Lisa",
            script = "Actor/Quest/Q411/Lisa",
            id = 1007,
            pos = "Q308Lisa",
            scene_id = 20011,
            room_id = 0,
            data_index = 0
        }
    }
}
