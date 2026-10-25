main_id = 998
local tbl = {}
local n = 99802
local v = 99803
local n2 = 99804
local n3 = 99805
tbl[1] = 99801
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
sub_ids = tbl
rewind_data = {}

rewind_data["99801"] = {
    npcs = {{id = 1121, alias = "QQ1121", script = "Actor/Npc/TempNpcActor", pos = "Q998Pos1", data_index = 0}}
}

rewind_data["99803"] = {npcs = {{id = 1121, alias = "QQ1121", script = "Actor/Npc/TempNpcActor", pos = "Q998Pos2"}}}
rewind_data["99805"] = {npcs = {{id = 1121, alias = "QQ1121", script = "Actor/Npc/TempNpcActor", pos = "Q998Pos3"}}}

rewind_data["99807"] = {
    npcs = {
        {
            id = 1001,
            alias = "Wendy",
            script = "Actor/Quest/Q301/Wendy301",
            pos = "Q37201Player",
            data_index = 1,
            scene_id = 3
        }
    }
}

quest_data = {}
quest_data["99803"] = {trial_actors = {}, actors = {}, items = {}, monsters = {}, gadgets = {}}

quest_data["99806"] = {
    npcs = {
        {
            id = 1001,
            alias = "Wendy",
            script = "Actor/Quest/Q301/Wendy301",
            pos = "Q37201Player",
            data_index = 1,
            scene_id = 3
        }
    }
}

quest_data["99807"] = {
    npcs = {
        {
            id = 1006,
            alias = "Qin",
            script = "Actor/Quest/Q411/Qin",
            pos = "Q372WendyShow",
            scene_id = 3,
            data_index = 1
        }
    }
}
