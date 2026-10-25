main_id = 30000
local tbl = {}
local n = 3000002
local v = 3000003
local n2 = 3000004
tbl[1] = 3000001
tbl[2] = n
tbl[3] = v
tbl[4] = n2
sub_ids = tbl
rewind_data = {}

rewind_data["3000002"] = {
    npcs = {
        {
            id = "{QuestNpcID}",
            alias = "{QuestNpcID}",
            script = "Actor/Quest/Q411/Qin",
            pos = "{QuestRescuePos}",
            data_index = 0,
            scene_id = 3
        }
    }
}

rewind_data["3000003"] = {
    npcs = {
        {
            id = "{QuestNpcID}",
            alias = "{QuestNpcID}",
            script = "Actor/Quest/Q411/Qin",
            pos = "{QuestRescuePos}",
            data_index = 0,
            scene_id = 3
        }
    }
}

quest_data = {}

quest_data["3000001"] = {
    npcs = {
        {
            alias = "{QuestNpcID}",
            script = "Actor/Npc/RandomNpc",
            id = "{QuestNpcID}",
            pos = "{QuestRescuePos}",
            scene_id = 3,
            room_id = 0,
            data_index = 1
        }
    }
}
