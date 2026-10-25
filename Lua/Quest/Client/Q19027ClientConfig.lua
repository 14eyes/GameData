return {
    MainID = 19027,
    ActorAlias = "19027",
    SubIDs = {
        q1902702 = 1902702,
        q1902703 = 1902703,
        q1902704 = 1902704,
        q1902705 = 1902705,
        q1902706 = 1902706,
        q1902707 = 1902707,
        q1902708 = 1902708,
        q1902701 = 1902701
    },
    Npcs = {
        Coop_GorouData = {
            id = 505,
            alias = "Coop_Gorou",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc12097Data = {
            id = 12097,
            alias = "Npc12097",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc12325Data = {
            id = 12325,
            alias = "Npc12325",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc12204Data = {
            id = 12204,
            alias = "Npc12204",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc12095Data = {
            id = 12095,
            alias = "Npc12095",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc1039Data = {
            id = 1039,
            alias = "Npc1039",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        }
    },
    Datas = {
        RoutePointsData = {
            sceneData:GetDummyPoint(3, "Q19027_Route1").pos,
            sceneData:GetDummyPoint(3, "Q19027_Route2").pos,
            sceneData:GetDummyPoint(3, "Q19027_Route3").pos,
            sceneData:GetDummyPoint(3, "Q19027_Route4").pos,
            sceneData:GetDummyPoint(3, "Q19027_Route5").pos,
            sceneData:GetDummyPoint(3, "Q19027_Route6").pos
        },
        RunKaiche = {narratorId = 1902701, pauseLen = 10, resumeLen = 5, tag = "Story", startCheckPause = false},
        TeleportNarrator = {NewString = "[QUEST_Message_Q1902703]"}
    }
}
