return {
    MainID = 70006,
    ActorAlias = "70006",
    SubIDs = {q7000601 = 7000601, q7000602 = 7000602, q7000603 = 7000603, q7000604 = 7000604},
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
        Q70006Trigger_ = {
            alias = "Q70006Trigger",
            script = "Actor/Gadget/Q70006Trigger",
            id = 70900002,
            point = sceneData:GetDummyPoint(3, "Q70006guild")
        },
        NarratorWithId = {narratorId = 7000601, pauseLen = 10, resumeLen = 5, tag = "Story"}
    }
}
