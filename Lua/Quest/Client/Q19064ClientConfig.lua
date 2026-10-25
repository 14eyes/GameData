return {
    MainID = 19064,
    ActorAlias = "19064",
    SubIDs = {q1906401 = 1906401, q1906402 = 1906402, q1906403 = 1906403, q1906404 = 1906404, q1906405 = 1906405},
    Npcs = {
        Npc1027Data = {
            id = 1027,
            alias = "Npc1027",
            script = "Actor/Npc/TempNPC",
            point = sceneData:GetDummyPoint(3, "Q19064TrainingNoel")
        },
        Npc160501Data = {
            id = 160501,
            alias = "Npc160501",
            script = "Actor/Npc/TempNPC",
            point = sceneData:GetDummyPoint(3, "Q19064TrainingEllin")
        }
    },
    Datas = {
        TransmitPoint1 = {point_id = 1, scene_id = 3, pos = "Q19064TrainingPlayer"},
        NarratorTraningStart = {narratorId = 1906402, pauseLen = 10, resumeLen = 5, tag = "StoryCut"},
        Q19064Trigger_ = {
            alias = "Q19064Trigger",
            script = "Actor/Gadget/Q19064Trigger",
            id = 70900002,
            point = sceneData:GetDummyPoint(3, "Q19064TrainingNoel")
        }
    }
}
