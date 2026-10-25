main_id = 30003
local tbl = {}
local n = 3000302
local v = 3000303
local n2 = 3000304
tbl[1] = 3000301
tbl[2] = n
tbl[3] = v
tbl[4] = n2
sub_ids = tbl
rewind_data = {}

rewind_data["3000302"] = {
    npcs = {
        {
            id = "{QuestNpcID}",
            alias = "{QuestNpcID}",
            script = "Actor/Npc/RandomNpc",
            pos = "{QuestRescuePos}",
            data_index = 0,
            scene_id = 3
        }
    }
}

rewind_data["3000303"] = {
    npcs = {
        {
            id = "{QuestNpcID}",
            alias = "{QuestNpcID}",
            script = "Actor/Npc/RandomNpc",
            pos = "{QuestRescuePos}",
            data_index = 0,
            scene_id = 3
        }
    }
}

quest_data = {}

quest_data["3000301"] = {
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
