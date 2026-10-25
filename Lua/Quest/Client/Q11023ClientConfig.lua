return {
    MainID = 11023,
    ActorAlias = "11023",
    SubIDs = {
        q1102314 = 1102314,
        q1102301 = 1102301,
        q1102302 = 1102302,
        q1102303 = 1102303,
        q1102304 = 1102304,
        q1102305 = 1102305,
        q1102306 = 1102306,
        q1102307 = 1102307,
        q1102308 = 1102308,
        q1102312 = 1102312,
        q1102309 = 1102309,
        q1102313 = 1102313,
        q1102310 = 1102310,
        q1102311 = 1102311
    },
    Npcs = {
        Npc10232Data = {
            id = 10232,
            alias = "Npc10232",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc10302Data = {
            id = 10302,
            alias = "Npc10302",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc10303Data = {
            id = 10303,
            alias = "Npc10303",
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
    Gadgets = {
        GadgetData = {id = 71700097, alias = "Gad1", point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}}
    },
    Datas = {
        NarratorWithId = {narratorId = 1102301, pauseLen = 10, resumeLen = 5, tag = "Tag"},
        NarratorWithId02 = {narratorId = 1102310, pauseLen = 10, resumeLen = 5, tag = "Tag"},
        Q1102310Trigger_ = {
            alias = "Q1102310Trigger",
            script = "Actor/Gadget/Q1102310Trigger",
            id = 70900002,
            point = sceneData:GetDummyPoint(1056, "NarratorFinal")
        }
    }
}
