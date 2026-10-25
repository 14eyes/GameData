return {
    MainID = 70014,
    ActorAlias = "70014",
    SubIDs = {q7001401 = 7001401, q7001402 = 7001402, q7001403 = 7001403},
    Npcs = {
        Npc11008Data = {
            id = 11008,
            alias = "Npc11008",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc156501Data = {
            id = 156501,
            alias = "Npc156501",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        PaimonData = {
            id = 1005,
            alias = "Paimon",
            script = "Actor/Quest/Q352/Paimon",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        }
    },
    Datas = {
        NarratorWithId = {narratorId = 7001401, pauseLen = 10, resumeLen = 5, tag = "Story"},
        Q70014Trigger_ = {
            alias = "Q70014Trigger",
            script = "Actor/Gadget/Q70014Trigger",
            id = 70900002,
            point = sceneData:GetDummyPoint(3, "Q7001401guild")
        }
    }
}
