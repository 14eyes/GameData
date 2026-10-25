return {
    MainID = 11043,
    ActorAlias = "11043",
    SubIDs = {q1104301 = 1104301, q1104305 = 1104305, q1104302 = 1104302, q1104304 = 1104304, q1104303 = 1104303},
    Npcs = {
        Npc1018Data = {
            id = 1018,
            alias = "Npc1018",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        }
    },
    Gadgets = {
        Gadget71700097Data = {
            id = 71700097,
            alias = "Gadget71700097",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        }
    },
    Datas = {
        NarratorWithId = {narratorId = 1104302, pauseLen = 10, resumeLen = 5, tag = "StoryCut"},
        NarratorWithId02 = {narratorId = 1104303, pauseLen = 10, resumeLen = 5, tag = "StoryCut"},
        Q1104301Trigger_ = {
            alias = "Q1104301Trigger",
            script = "Actor/Gadget/Q1104301Trigger",
            id = 70900002,
            point = sceneData:GetDummyPoint(3, "Q11043Albedo1")
        }
    }
}
