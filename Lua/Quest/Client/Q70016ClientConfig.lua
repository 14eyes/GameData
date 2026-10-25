return {
    MainID = 70016,
    ActorAlias = "70016",
    SubIDs = {q7001601 = 7001601, q7001602 = 7001602, q7001603 = 7001603},
    Npcs = {
        Npc11007Data = {
            id = 11007,
            alias = "Npc11007",
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
        NarratorWithId = {narratorId = 7001601, pauseLen = 10, resumeLen = 5, tag = "Story"},
        Q70016Trigger_ = {
            alias = "Q70016Trigger",
            script = "Actor/Gadget/Q70016Trigger",
            id = 70900002,
            point = sceneData:GetDummyPoint(3, "Q7001601guild")
        }
    }
}
