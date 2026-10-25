return {
    MainID = 70013,
    ActorAlias = "70013",
    SubIDs = {q7001301 = 7001301, q7001302 = 7001302, q7001303 = 7001303},
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
        NarratorWithId = {narratorId = 7001301, pauseLen = 10, resumeLen = 5, tag = "Story"},
        Q70013Trigger_ = {
            alias = "Q70013Trigger",
            script = "Actor/Gadget/Q70013Trigger",
            id = 70900002,
            point = sceneData:GetDummyPoint(3, "Q7001301guild")
        }
    }
}
