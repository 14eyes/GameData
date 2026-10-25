main_id = 20030
local tbl = {}
local n = 2003002
local v = 2003003
local n2 = 2003004
tbl[1] = 2003001
tbl[2] = n
tbl[3] = v
tbl[4] = n2
sub_ids = tbl
rewind_data = {}
quest_data = {}

quest_data["2003001"] = {
    npcs = {
        {
            id = 1005,
            alias = "Paimon",
            script = "Actor/Quest/Q352/Paimon",
            pos = "Q20030CamTarget",
            scene_id = 3,
            room_id = 0,
            data_index = 1
        }
    }
}
