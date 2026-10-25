main_id = 30032
local tbl = {}
local n = 3003202
local v = 3003203
local n2 = 3003204
local n3 = 3003205
tbl[1] = 3003201
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
sub_ids = tbl
rewind_data = {}

rewind_data["3003202"] = {
    npcs = {
        {
            id = "{QuestNpcID}",
            alias = "{QuestNpcID}",
            script = "Actor/Npc/RandomNpc",
            pos = "{QuestRescuePos1}",
            data_index = 0,
            scene_id = 3
        }
    }
}

rewind_data["3003204"] = {
    npcs = {
        {
            id = "{QuestNpcID}",
            alias = "{QuestNpcID}",
            script = "Actor/Npc/RandomNpc",
            pos = "{QuestRescuePos1}",
            data_index = 0,
            scene_id = 3
        }
    }
}

quest_data = {}

quest_data["3003201"] = {
    npcs = {
        {
            alias = "{QuestNpcID}",
            script = "Actor/Npc/RandomNpc",
            id = "{QuestNpcID}",
            pos = "{QuestRescuePos1}",
            scene_id = 3,
            room_id = 0,
            data_index = 1
        }
    }
}

quest_data["3003203"] = {
    npcs = {
        {
            alias = "{QuestNpcID}",
            script = "Actor/Npc/RandomNpc",
            id = "{QuestNpcID}",
            pos = "{QuestRescuePos1}",
            scene_id = 3,
            room_id = 0,
            data_index = 1
        }
    }
}

quest_data["3003205"] = {
    npcs = {
        {
            alias = "{QuestNpcID}",
            script = "Actor/Npc/RandomNpc",
            id = "{QuestNpcID}",
            pos = "{QuestRescuePos2}",
            scene_id = 3,
            room_id = 0,
            data_index = 1
        }
    }
}
