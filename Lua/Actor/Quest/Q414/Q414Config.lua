require("Actor/ActorCommon")

return {
    MainID = 414,
    ActorAlias = "414",
    Poem1ID = 100110,
    Poem2ID = 100111,
    Poem3ID = 100112,
    SubIDs = {
        q41400 = 41400,
        q41401 = 41401,
        q41402 = 41402,
        q41403 = 41403,
        q41404 = 41404,
        q41405 = 41405,
        q41406 = 41406,
        q41407 = 41407,
        q41408 = 41408,
        q41409 = 41409,
        q41410 = 41410,
        q41411 = 41411,
        q41412 = 41412
    },
    WendyData = {
        Wendy = "Wendy",
        WendyScript = "Actor/Quest/Q301/Wendy301",
        WendyID = 1001,
        bornPos = sceneData:GetDummyPoint(3, "Q414WendyBorn").pos,
        bornDir = sceneData:GetDummyPoint(3, "Q414WendyBorn").rot
    },
    PaimonData = {
        Paimon = "Paimon",
        PaimonScript = "Actor/Quest/Q352/Paimon",
        PaimonID = 1005,
        bornPos = sceneData:GetDummyPoint(3, "Q414Paimon1").pos,
        bornDir = sceneData:GetDummyPoint(3, "Q414Paimon1").rot
    }
}
