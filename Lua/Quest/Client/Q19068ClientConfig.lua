return {
    MainID = 19068,
    ActorAlias = "19068",
    SubIDs = {
        q1906801 = 1906801,
        q1906802 = 1906802,
        q1906803 = 1906803,
        q1906804 = 1906804,
        q1906806 = 1906806,
        q1906808 = 1906808,
        q1906809 = 1906809,
        q1906811 = 1906811,
        q1906805 = 1906805,
        q1906810 = 1906810,
        q1906807 = 1906807
    },
    Npcs = {
        Npc1027DataBeiya = {
            id = 1027,
            alias = "Npc1027",
            script = "Actor/Npc/TempNPC",
            point = sceneData:GetDummyPoint(3, "Q19067BeiyaNoel")
        },
        Npc140101DataGive = {
            id = 140101,
            alias = "Npc140101",
            script = "Actor/Npc/TempNPC",
            point = sceneData:GetDummyPoint(3, "Q19069Beiya")
        },
        Npc1027DataLunch = {
            id = 1027,
            alias = "Npc1027",
            script = "Actor/Npc/TempNPC",
            point = sceneData:GetDummyPoint(3, "Q19068BeiyaLunchRoute2")
        },
        Npc140101DataTry = {
            id = 140101,
            alias = "Npc140101",
            script = "Actor/Npc/TempNPC",
            point = sceneData:GetDummyPoint(3, "Q19070BeiyaTryBeiya")
        },
        Npc1027DataTry = {
            id = 1027,
            alias = "Npc1027",
            script = "Actor/Npc/TempNPC",
            point = sceneData:GetDummyPoint(3, "Q19070BeiyaTryNoel")
        },
        Npc1027DataBE = {
            id = 1027,
            alias = "Npc1027",
            script = "Actor/Npc/TempNPC",
            point = sceneData:GetDummyPoint(1004, "Q19068DateBENoel")
        },
        Npc140301Data = {
            id = 140301,
            alias = "Npc140301",
            script = "Actor/Npc/TempNPC",
            point = sceneData:GetDummyPoint(3, "Q20517_Quinn_InitPos")
        },
        Npc20218Data = {
            id = 20218,
            alias = "NPC20218",
            script = "Actor/Npc/TempNPC",
            point = sceneData:GetDummyPoint(1004, "Q19068DateNotebook")
        }
    },
    Datas = {
        RoutePointsData = {
            sceneData:GetDummyPoint(3, "Q19068BeiyaLunchRoute1").pos,
            sceneData:GetDummyPoint(3, "Q19068BeiyaLunchRoute2").pos,
            sceneData:GetDummyPoint(3, "Q19068BeiyaLunchRoute3").pos,
            sceneData:GetDummyPoint(3, "Q19068BeiyaLunchRoute4")
        },
        TransmitPointLunch = {point_id = 1, scene_id = 3, pos = "Q19068BeiyaLunchRoute2"},
        NarratorAfterLunch = {narratorId = 1906807, pauseLen = 10, resumeLen = 5, tag = "Story"},
        NarratorLibrary = {narratorId = 1906809, pauseLen = 10, resumeLen = 5, tag = "Story"}
    }
}
