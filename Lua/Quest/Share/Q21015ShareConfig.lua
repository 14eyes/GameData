main_id = 21015
local tbl = {}
local n = 2101502
local v = 2101503
local n2 = 2101504
local n3 = 2101505
tbl[1] = 2101501
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
sub_ids = tbl
XiaojiujiuData = {ID = 2311, Alias = "Npc2311"}
rewind_data = {}

rewind_data["2101502"] = {
    npcs = {
        {
            alias = "Npc2311",
            script = "Actor/Npc/TempNPC",
            id = 2311,
            pos = "Q21015hua03",
            scene_id = 3,
            room_id = 0,
            data_index = 0
        }
    }
}

quest_data = {}

quest_data["2101501"] = {
    npcs = {{alias = "Npc2311", script = "Actor/Npc/TempNPC", id = 2311, pos = "Q21015hua03", scene_id = 3}}
}
