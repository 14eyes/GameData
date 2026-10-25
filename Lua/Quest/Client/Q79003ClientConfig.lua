return {
    MainID = 79003,
    ActorAlias = "79003",
    SubIDs = {
        q7900314 = 7900314,
        q7900301 = 7900301,
        q7900302 = 7900302,
        q7900310 = 7900310,
        q7900311 = 7900311,
        q7900303 = 7900303,
        q7900312 = 7900312,
        q7900304 = 7900304,
        q7900313 = 7900313,
        q7900305 = 7900305,
        q7900309 = 7900309,
        q7900307 = 7900307,
        q7900315 = 7900315,
        q7900316 = 7900316,
        q7900317 = 7900317,
        q7900318 = 7900318,
        q7900306 = 7900306,
        q7900319 = 7900319,
        q7900308 = 7900308
    },
    Npcs = {
        PaimonData = {
            id = 1005,
            alias = "Paimon",
            script = "Actor/Quest/Q352/Paimon",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        }
    },
    Datas = {
        Q7900310Trigger_ = {
            alias = "Q7900310Trigger",
            script = "Actor/Gadget/Q7900310Trigger",
            id = 70900002,
            point = sceneData:GetDummyPoint(4, "Q7900303PaimonPos")
        },
        Q7900311Trigger_ = {
            alias = "Q7900311Trigger",
            script = "Actor/Gadget/Q7900311Trigger",
            id = 70900002,
            point = sceneData:GetDummyPoint(4, "Q7900304PaimonPos")
        },
        Q7900312Trigger_ = {
            alias = "Q7900312Trigger",
            script = "Actor/Gadget/Q7900312Trigger",
            id = 70900002,
            point = sceneData:GetDummyPoint(4, "Q7900304PaimonPos")
        },
        Q7900313Trigger_ = {
            alias = "Q7900313Trigger",
            script = "Actor/Gadget/Q7900313Trigger",
            id = 70900002,
            point = sceneData:GetDummyPoint(4, "Q7900303PaimonPos")
        }
    }
}
