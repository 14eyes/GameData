return {
    MainID = 15005,
    ActorAlias = "15005",
    SubIDs = {q1500501 = 1500501, q1500502 = 1500502, q1500503 = 1500503},
    Npcs = {
        Npc14317 = {
            id = 14317,
            alias = "Npc14317",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc14227 = {
            id = 14227,
            alias = "Npc14227",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc14228 = {
            id = 14228,
            alias = "Npc14228",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        }
    },
    Points = {
        _Q1500502TriggerPoint_ = sceneData:GetDummyPoint(3, "Q1500501_guide"),
        Q1500501trigger = sceneData:GetDummyPoint(3, "Q1500501_guide")
    },
    Datas = {
        NarratorWithId_1500501 = {narratorId = 1500501, tag = "StoryInMainPage", startCheckPause = true, resumeReminder = -1}
    }
}
