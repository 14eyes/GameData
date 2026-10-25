return {
    MainID = 70017,
    ActorAlias = "70017",
    SubIDs = {q7001701 = 7001701, q7001702 = 7001702, q7001703 = 7001703, q7001704 = 7001704},
    Npcs = {
        Npc11007Data1 = {
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
        NarratorWithId = {narratorId = 7001501, pauseLen = 10, resumeLen = 5, tag = "Story"},
        Q70017Trigger_ = {
            alias = "Q70017Trigger",
            script = "Actor/Gadget/Q70017Trigger",
            id = 70900002,
            point = sceneData:GetDummyPoint(3, "Q7001801guild")
        }
    }
}
