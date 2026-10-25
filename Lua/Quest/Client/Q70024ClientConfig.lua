return {
    MainID = 70024,
    ActorAlias = "70024",
    SubIDs = {q7002401 = 7002401, q7002402 = 7002402, q7002403 = 7002403, q7002404 = 7002404},
    Npcs = {
        Npc151201Data = {
            id = 151201,
            alias = "Npc151201",
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
        NarratorTable = {narratorId = 7002401, pauseLen = 10, resumeLen = 5, tag = "StoryCut"},
        Q70024Trigger_ = {
            alias = "Q70024Trigger",
            script = "Actor/Gadget/Q70024Trigger",
            id = 70900002,
            point = sceneData:GetDummyPoint(3, "Q7002402AILA")
        }
    }
}
