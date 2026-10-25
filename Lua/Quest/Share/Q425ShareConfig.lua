main_id = 425
local tbl = {}
local n = 42502
local v = 42503
local n2 = 42504
tbl[1] = 42501
tbl[2] = n
tbl[3] = v
tbl[4] = n2
sub_ids = tbl
rewind_data = {}

rewind_data["42502"] = {
    npcs = {
        {
            id = 1160,
            alias = "Wendy",
            script = "Actor/Quest/Q301/Wendy301",
            pos = "QuestNpc",
            data_index = 0,
            scene_id = 1015
        }
    }
}

rewind_data["42503"] = {
    npcs = {
        {
            id = 1160,
            alias = "Wendy",
            script = "Actor/Quest/Q301/Wendy301",
            pos = "QuestNpc",
            data_index = 0,
            scene_id = 1015
        }
    }
}

quest_data = {}
quest_data["42502"] = {trial_actors = {}, actors = {}, items = {}, monsters = {}, gadgets = {}}
