main_id = 30015
local tbl = {}
local n = 3001502
tbl[1] = 3001501
tbl[2] = n
sub_ids = tbl
rewind_data = {}

rewind_data["3001501"] = {
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

rewind_data["3001502"] = {
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

quest_data["3001501"] = {
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

quest_data["3001502"] = {}
