main_id = 30007
local tbl = {}
local n = 3000702
local v = 3000703
local n2 = 3000704
tbl[1] = 3000701
tbl[2] = n
tbl[3] = v
tbl[4] = n2
sub_ids = tbl
rewind_data = {}

rewind_data["3000702"] = {
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

rewind_data["3000703"] = {
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

quest_data["3000701"] = {
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
