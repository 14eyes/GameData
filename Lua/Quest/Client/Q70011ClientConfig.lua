return {
    MainID = 70011,
    ActorAlias = "70011",
    SubIDs = {q7001101 = 7001101, q7001102 = 7001102, q7001103 = 7001103},
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
        NarratorWithId = {narratorId = 7001101, pauseLen = 10, resumeLen = 5, tag = "Story"},
        Q70011Trigger_ = {
            alias = "Q70011Trigger",
            script = "Actor/Gadget/Q70011Trigger",
            id = 70900002,
            point = sceneData:GetDummyPoint(3, "Q7001101guild")
        }
    }
}
