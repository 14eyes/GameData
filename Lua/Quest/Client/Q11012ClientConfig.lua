return {
    MainID = 11012,
    ActorAlias = "11012",
    SubIDs = {
        q1101201 = 1101201,
        q1101202 = 1101202,
        q1101211 = 1101211,
        q1101221 = 1101221,
        q1101212 = 1101212,
        q1101203 = 1101203,
        q1101216 = 1101216,
        q1101213 = 1101213,
        q1101217 = 1101217,
        q1101210 = 1101210,
        q1101218 = 1101218,
        q1101219 = 1101219,
        q1101214 = 1101214,
        q1101204 = 1101204,
        q1101209 = 1101209,
        q1101205 = 1101205,
        q1101220 = 1101220,
        q1101208 = 1101208,
        q1101206 = 1101206,
        q1101207 = 1101207,
        q1101215 = 1101215
    },
    Npcs = {
        Npc10200Data = {
            id = 10200,
            alias = "Npc10200",
            script = "Actor/Npc/TempNPC",
            point = sceneData:GetDummyPoint(3, "Q11012Gongzi1")
        },
        Npc10310Data = {
            id = 10310,
            alias = "Npc10310",
            script = "Actor/Npc/TempNPC",
            point = sceneData:GetDummyPoint(1055, "Q11012Invisiable")
        },
        Npc10265Data = {
            id = 10265,
            alias = "Npc10265",
            script = "Actor/Npc/TempNPC",
            point = sceneData:GetDummyPoint(1055, "Q11012Tok")
        },
        Npc2067Data = {
            id = 2067,
            alias = "Npc2067",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = sceneData:GetDummyPoint(1033, "Q11012Andrei")
        },
        PaimonData = {
            id = 1005,
            alias = "Paimon",
            script = "Actor/Quest/Q352/Paimon",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        }
    },
    Datas = {
        RoutePointsData = {
            sceneData:GetDummyPoint(1055, "Q11012Route2").pos,
            sceneData:GetDummyPoint(1055, "Q11012Route18").pos,
            sceneData:GetDummyPoint(1055, "Q11012Route19").pos
        },
        DungeonRoutePointsData = {
            sceneData:GetDummyPoint(1055, "Q11012Route3").pos,
            sceneData:GetDummyPoint(1055, "Q11012Route4").pos
        },
        DungeonRoutePointsData2 = {
            sceneData:GetDummyPoint(1055, "Q11012Route5").pos,
            sceneData:GetDummyPoint(1055, "Q11012Route6").pos,
            sceneData:GetDummyPoint(1055, "Q11012Route7").pos,
            sceneData:GetDummyPoint(1055, "Q11012Route8").pos,
            sceneData:GetDummyPoint(1055, "Q11012Route9").pos,
            sceneData:GetDummyPoint(1055, "Q11012Route4").pos,
            sceneData:GetDummyPoint(1055, "Q11012Route15").pos,
            sceneData:GetDummyPoint(1055, "Q11012Route16").pos
        },
        DungeonRoutePointsData3 = {
            sceneData:GetDummyPoint(1055, "Q11012Route10").pos,
            sceneData:GetDummyPoint(1055, "Q11012Route11").pos,
            sceneData:GetDummyPoint(1055, "Q11012Route12").pos,
            sceneData:GetDummyPoint(1055, "Q11012Route13").pos,
            sceneData:GetDummyPoint(1055, "Q11012Route14").pos
        },
        DungeonRoutePointsData4 = {
            sceneData:GetDummyPoint(1055, "Q11012Route1").pos,
            sceneData:GetDummyPoint(1055, "Q11012Route17").pos
        },
        Q11012Trigger_ = {
            alias = "Q11012Trigger",
            script = "Actor/Gadget/Q11012Trigger",
            id = 70900002,
            point = sceneData:GetDummyPoint(3, "Q11012DungeonEntry")
        },
        Q11012TriggerDungeon_ = {
            alias = "Q11012TriggerDungeon",
            script = "Actor/Gadget/Q11012TriggerDungeon",
            id = 70900002,
            point = sceneData:GetDummyPoint(1055, "Q11012Invisiable")
        }
    }
}
