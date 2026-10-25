return {
    MainID = 41114,
    ActorAlias = "41114",
    SubIDs = {
        q4111401 = 4111401,
        q4111407 = 4111407,
        q4111408 = 4111408,
        q4111403 = 4111403,
        q4111414 = 4111414,
        q4111404 = 4111404,
        q4111405 = 4111405,
        q4111409 = 4111409,
        q4111410 = 4111410,
        q4111411 = 4111411,
        q4111412 = 4111412,
        q4111415 = 4111415,
        q4111413 = 4111413,
        q4111416 = 4111416,
        q4111402 = 4111402,
        q4111406 = 4111406
    },
    Npcs = {
        Npc10095Data = {
            id = 10095,
            alias = "Npc10095",
            script = "Actor/Npc/TempNPC",
            point = sceneData:GetDummyPoint(3, "Q4111401Mona")
        },
        Npc30015Data = {
            id = 30015,
            alias = "Npc30015",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        PaimonData = {
            id = 1005,
            alias = "Paimon",
            script = "Actor/Quest/Q352/Paimon",
            point = sceneData:GetDummyPoint(1004, "Q4111414Paimon")
        },
        PaimonData2 = {
            id = 1005,
            alias = "Paimon",
            script = "Actor/Quest/Q352/Paimon",
            point = sceneData:GetDummyPoint(1004, "Q4111408Paimon")
        },
        Npc10013Data = {
            id = 10013,
            alias = "Npc10013",
            script = "Actor/Npc/TempNPC",
            point = sceneData:GetDummyPoint(3, "Q4111411Scaramouche")
        },
        Npc10012Data = {
            id = 10012,
            alias = "Npc10012",
            script = "Actor/Npc/TempNPC",
            point = sceneData:GetDummyPoint(3, "Q4111213Ozzy")
        },
        Npc10011Data = {
            id = 10011,
            alias = "Npc10011",
            script = "Actor/Npc/TempNPC",
            point = sceneData:GetDummyPoint(3, "Q4111213Fischl")
        }
    },
    Gadgets = {
        BookInteraction = {id = 70710217, alias = "Q4111403Book", point = sceneData:GetDummyPoint(1004, "Q4111408Target")},
        Q4111403Target = {id = 70300118, alias = "Q4111403Target", point = sceneData:GetDummyPoint(1004, "Q4111408Target")},
        Q4111404Target = {id = 70300118, alias = "Q4111404Target", point = sceneData:GetDummyPoint(1004, "Q4111414Target")},
        Q4111413Target = {id = 70300118, alias = "Q4111413Target", point = sceneData:GetDummyPoint(3, "Q4111413Target")}
    },
    Datas = {
        NarratorWithId = {narratorId = 411141201, pauseLen = 10, resumeLen = 5, tag = "StoryCut"},
        Q41114Trigger_ = {
            alias = "Q41114Trigger",
            script = "Actor/Gadget/Q41114Trigger",
            id = 70900002,
            point = sceneData:GetDummyPoint(3, "Q4111411Scaramouche")
        },
        Q41114Trigger2_ = {
            alias = "Q41114Trigger2",
            script = "Actor/Gadget/Q41114Trigger2",
            id = 70900002,
            point = {pos = {x = 1632.529, y = 194.6372, z = -2585.606}, rot = {x = 0, y = 0, z = 0}}
        }
    }
}
