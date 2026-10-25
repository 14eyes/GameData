main_id = 30022
local tbl = {}
local n = 3002202
tbl[1] = 3002201
tbl[2] = n
sub_ids = tbl
rewind_data = {}
rewind_data["3002201"] = {}
quest_data = {}

quest_data["3002201"] = {
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

quest_data["3002202"] = {
    npcs = {
        {
            alias = "{QuestNpcID2}",
            script = "Actor/Npc/RandomNpc",
            id = "{QuestNpcID2}",
            pos = "{NPCPos}",
            scene_id = 3,
            room_id = 0,
            data_index = 1
        }
    }
}
