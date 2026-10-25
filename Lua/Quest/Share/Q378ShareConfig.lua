main_id = 378
local tbl = {}
local n = 37802
local v = 37803
local n2 = 37804
local n3 = 37805
tbl[1] = 37801
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
sub_ids = tbl
rewind_data = {}
rewind_data["37801"] = {}
rewind_data["37802"] = {}

rewind_data["37803"] = {
    npcs = {{id = 1006, alias = "Qin", script = "Actor/Quest/Q411/Qin", pos = "Q378Qin1", data_index = 0}}
}

rewind_data["37805"] = {
    npcs = {
        {
            id = 1008,
            alias = "Barbara",
            script = "Actor/Quest/Q413/Barbara",
            pos = "Q378Babara",
            data_index = 0
        },
        {id = 1006, alias = "Qin", script = "Actor/Quest/Q411/Qin", pos = "Q378Qin2", data_index = 0}
    }
}

quest_data = {}
quest_data["37802"] = {trial_actors = {}, actors = {}, items = {}, monsters = {}, gadgets = {}}

quest_data["37803"] = {
    npcs = {{id = 1006, alias = "Qin", script = "Actor/Quest/Q411/Qin", pos = "Q378Qin1", data_index = 0}}
}

quest_data["37804"] = {
    npcs = {
        {
            id = 1008,
            alias = "Barbara",
            script = "Actor/Quest/Q413/Barbara",
            pos = "Q378Babara",
            data_index = 0
        }
    }
}
