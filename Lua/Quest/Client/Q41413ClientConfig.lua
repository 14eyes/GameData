return {
    MainID = 41413,
    ActorAlias = "41413",
    SubIDs = {
        q4141301 = 4141301,
        q4141302 = 4141302,
        q4141303 = 4141303,
        q4141304 = 4141304,
        q4141305 = 4141305,
        q4141306 = 4141306,
        q4141307 = 4141307
    },
    Npcs = {
        paimonData = {
            id = 1005,
            alias = "Paimon",
            script = "Actor/Quest/Q352/Paimon",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        QinData = {
            id = 1006,
            alias = "Qin",
            script = "Actor/Quest/Q411/Qin",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        WendyData = {
            id = 1001,
            alias = "Wendy",
            script = "Actor/Quest/Q301/Wendy301",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        }
    },
    Datas = {
        Q4141301Trigger_ = {
            alias = "Q4141301Trigger",
            script = "Actor/Gadget/Q4141301Trigger",
            id = 70900002,
            point = sceneData:GetDummyPoint(3, "Q4141301Trigger")
        },
        Q4141305Trigger_ = {
            alias = "Q4141305Trigger",
            script = "Actor/Gadget/Q4141305Trigger",
            id = 70900002,
            point = sceneData:GetDummyPoint(3, "Q4141305Trigger")
        }
    },
    NarratorWithId01 = {narratorId = 414130501, pauseLen = 10, resumeLen = 5, tag = "StoryCut"}
}
