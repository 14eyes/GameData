return {
    MainID = 70022,
    ActorAlias = "70022",
    SubIDs = {q7002201 = 7002201, q7002202 = 7002202, q7002203 = 7002203},
    Npcs = {
        Npc11008Data = {
            id = 11008,
            alias = "Npc11008",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        PaimonData = {
            id = 1005,
            alias = "Paimon",
            script = "Actor/Quest/Q352/Paimon",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc156501Data = {
            id = 156501,
            alias = "Npc156501",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        }
    },
    Datas = {
        NarratorWithId = {narratorId = 7002202, pauseLen = 10, resumeLen = 5, tag = "Story"},
        Q70022Trigger_ = {
            alias = "Q70022Trigger",
            script = "Actor/Gadget/Q70022Trigger",
            id = 70900002,
            point = sceneData:GetDummyPoint(3, "Q7002101guild")
        }
    }
}
