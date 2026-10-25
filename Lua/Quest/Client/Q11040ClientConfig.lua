return {
    MainID = 11040,
    ActorAlias = "11040",
    SubIDs = {q1104001 = 1104001, q1104002 = 1104002, q1104003 = 1104003, q1104004 = 1104004},
    Npcs = {
        ShatangData = {
            id = 1019,
            alias = "Npc1019",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        BarbaraData = {
            id = 1008,
            alias = "Barbara",
            script = "Actor/Quest/Q413/Barbara",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        RosaliyaData = {
            id = 1020,
            alias = "Npc1020",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        }
    },
    Datas = {
        NarratorShatang = {narratorId = 1104002, pauseLen = 10, resumeLen = 5, tag = "StoryCut"},
        NarratorRSLY = {narratorId = 1104004, pauseLen = 10, resumeLen = 5, tag = "StoryCut"},
        Q1104001Trigger_ = {
            alias = "Q1104001Trigger",
            script = "Actor/Gadget/Q1104001Trigger",
            id = 70900002,
            point = sceneData:GetDummyPoint(3, "Q11040Shatang")
        },
        Q1104003Trigger_ = {
            alias = "Q1104003Trigger",
            script = "Actor/Gadget/Q1104003Trigger",
            id = 70900002,
            point = sceneData:GetDummyPoint(3, "Q11040RSLY1")
        }
    }
}
