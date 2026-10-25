return {
    MainID = 19103,
    ActorAlias = "19103",
    SubIDs = {
        q1910301 = 1910301,
        q1910302 = 1910302,
        q1910303 = 1910303,
        q1910304 = 1910304,
        q1910305 = 1910305,
        q1910306 = 1910306
    },
    Npcs = {
        Coop_DionaData = {
            id = 502,
            alias = "Coop_Diona",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc153901Data = {
            id = 153901,
            alias = "Npc153901",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc1539Data = {
            id = 1539,
            alias = "Npc1539",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        }
    },
    Datas = {
        Q1910305RoutePointsData = {
            {x = 1469.792, y = 239.914, z = -1406.09},
            {x = 1451.404, y = 239.6354, z = -1413.134},
            sceneData:GetDummyPoint(3, "COOP103901Diona09").pos
        },
        Q1910302NarratorWithId = {narratorId = 1910302, pauseLen = 10, resumeLen = 5, tag = "Story"},
        Q1910303NarratorWithId = {narratorId = 1910303, pauseLen = 10, resumeLen = 5, tag = "Story"}
    }
}
