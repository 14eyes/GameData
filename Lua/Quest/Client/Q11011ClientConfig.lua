return {
    MainID = 11011,
    ActorAlias = "11011",
    SubIDs = {
        q1101112 = 1101112,
        q1101101 = 1101101,
        q1101125 = 1101125,
        q1101121 = 1101121,
        q1101104 = 1101104,
        q1101105 = 1101105,
        q1101122 = 1101122,
        q1101123 = 1101123,
        q1101102 = 1101102,
        q1101113 = 1101113,
        q1101116 = 1101116,
        q1101117 = 1101117,
        q1101114 = 1101114,
        q1101115 = 1101115,
        q1101120 = 1101120,
        q1101103 = 1101103,
        q1101106 = 1101106,
        q1101107 = 1101107,
        q1101118 = 1101118,
        q1101124 = 1101124,
        q1101119 = 1101119,
        q1101108 = 1101108,
        q1101109 = 1101109,
        q1101110 = 1101110,
        q1101111 = 1101111
    },
    Npcs = {
        Npc10200Data = {
            id = 10200,
            alias = "Npc10200",
            script = "Actor/Npc/TempNPC",
            point = sceneData:GetDummyPoint(3, "Q11011Gongzi1")
        },
        Npc10265Data = {
            id = 10265,
            alias = "Npc10265",
            script = "Actor/Npc/TempNPC",
            point = sceneData:GetDummyPoint(3, "Q11011Tok1")
        },
        PaimonData = {
            id = 1005,
            alias = "Paimon",
            script = "Actor/Quest/Q352/Paimon",
            point = sceneData:GetDummyPoint(3, "Q1101101Paimon")
        },
        Npc10274Data = {
            id = 10274,
            alias = "Npc10274",
            script = "Actor/Npc/TempNPC",
            point = sceneData:GetDummyPoint(3, "Q11011Thoarder")
        },
        Npc10288Data = {
            id = 10288,
            alias = "Npc10288",
            script = "Actor/Npc/TempNPC",
            point = sceneData:GetDummyPoint(3, "Q11011Thoarder2")
        },
        Npc10289Data = {
            id = 10289,
            alias = "Npc10289",
            script = "Actor/Npc/TempNPC",
            point = sceneData:GetDummyPoint(3, "Q11011Thoarder3")
        },
        Npc2092Data = {
            id = 2092,
            alias = "Npc2092",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = sceneData:GetDummyPoint(3, "Q1101101Anshanpo")
        },
        Npc209201Data = {
            id = 209201,
            alias = "Npc209201",
            script = "Actor/Npc/TempNPC",
            point = sceneData:GetDummyPoint(3, "Q1101101Anshanpo")
        },
        Npc2045Data = {
            id = 2045,
            alias = "Npc2045",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = sceneData:GetDummyPoint(3, "Q1101103Mao")
        },
        Npc204501Data = {
            id = 204501,
            alias = "Npc204501",
            script = "Actor/Npc/TempNPC",
            point = sceneData:GetDummyPoint(3, "Q1101103Mao")
        },
        Npc10272Data = {
            id = 10272,
            alias = "Npc10272",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc10275Data = {
            id = 10275,
            alias = "Npc10275",
            script = "Actor/Npc/TempNPC",
            point = sceneData:GetDummyPoint(3, "Q11011Yurenzhong")
        },
        Npc10327Data = {
            id = 10327,
            alias = "Npc10327",
            script = "Actor/Npc/TempNPC",
            point = sceneData:GetDummyPoint(3, "Q11011Yurenzhong2")
        },
        Npc10328Data = {
            id = 10328,
            alias = "Npc10328",
            script = "Actor/Npc/TempNPC",
            point = sceneData:GetDummyPoint(3, "Q11011Yurenzhong3")
        },
        Npc10332Data = {
            id = 10332,
            alias = "Npc10332",
            script = "Actor/Npc/TempNPC",
            point = sceneData:GetDummyPoint(3, "Q11011Yurenzhong4")
        },
        Npc10324Data = {
            id = 10324,
            alias = "Npc10324",
            script = "Actor/Npc/TempNPC",
            point = sceneData:GetDummyPoint(3, "Q11011Xianqiandui")
        },
        Npc10325Data = {
            id = 10325,
            alias = "Npc10325",
            script = "Actor/Npc/TempNPC",
            point = sceneData:GetDummyPoint(3, "Q11011Xianqiandui2")
        },
        Npc10326Data = {
            id = 10326,
            alias = "Npc10326",
            script = "Actor/Npc/TempNPC",
            point = sceneData:GetDummyPoint(3, "Q11011Xianqiandui3")
        },
        Npc2034Data = {
            id = 2034,
            alias = "Npc2034",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = sceneData:GetDummyPoint(3, "Q1101109Gao")
        },
        Npc2077Data = {
            id = 2077,
            alias = "Npc2077",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = sceneData:GetDummyPoint(3, "Q11011Pier")
        }
    },
    Datas = {
        NarratorWithId1 = {narratorId = 1101107, pauseLen = 10, resumeLen = 5, tag = "StoryCut"},
        NarratorWithId2 = {narratorId = 1101106, pauseLen = 10, resumeLen = 5, tag = "StoryCut"},
        RoutePointsData1 = {
            sceneData:GetDummyPoint(3, "Q11011Route1").pos,
            sceneData:GetDummyPoint(3, "Q11011Route2").pos,
            sceneData:GetDummyPoint(3, "Q11011Route3").pos,
            sceneData:GetDummyPoint(3, "Q11011Route4").pos,
            sceneData:GetDummyPoint(3, "Q11011Route5").pos
        },
        RoutePointsData2 = {
            sceneData:GetDummyPoint(3, "Q11011Route6").pos,
            sceneData:GetDummyPoint(3, "Q11011Route7").pos,
            sceneData:GetDummyPoint(3, "Q11011Route8").pos
        },
        RoutePointsData3 = {
            sceneData:GetDummyPoint(3, "Q11011Route9").pos,
            sceneData:GetDummyPoint(3, "Q11011Route11").pos,
            sceneData:GetDummyPoint(3, "Q11011Route10").pos
        },
        Q11011Trigger_ = {
            alias = "Q11011Trigger",
            script = "Actor/Gadget/Q11011Trigger",
            id = 70900002,
            point = sceneData:GetDummyPoint(3, "Q11011Challenge")
        },
        Q11011Trigger2_ = {
            alias = "Q11011Trigger2",
            script = "Actor/Gadget/Q11011Trigger2",
            id = 70900002,
            point = sceneData:GetDummyPoint(3, "Q11011Fight")
        },
        Q11011Trigger3_ = {
            alias = "Q11011Trigger3",
            script = "Actor/Gadget/Q11011Trigger3",
            id = 70900002,
            point = sceneData:GetDummyPoint(3, "Q11011RouteTrigger")
        },
        Q11011TriggerShan_ = {
            alias = "Q11011TriggerShan",
            script = "Actor/Gadget/Q11011TriggerShan",
            id = 70900002,
            point = sceneData:GetDummyPoint(3, "Q1101101Player")
        },
        Q11011TriggerMao_ = {
            alias = "Q11011TriggerMao",
            script = "Actor/Gadget/Q11011TriggerMao",
            id = 70900002,
            point = sceneData:GetDummyPoint(3, "Q11011Wanmintang")
        },
        Q11011TriggerPier_ = {
            alias = "Q11011TriggerPier",
            script = "Actor/Gadget/Q11011TriggerPier",
            id = 70900002,
            point = sceneData:GetDummyPoint(3, "Q11011Pier")
        },
        Q11011TriggerDao_ = {
            alias = "Q11011TriggerDao",
            script = "Actor/Gadget/Q11011TriggerDao",
            id = 70900002,
            point = sceneData:GetDummyPoint(3, "Q11011Gongzi1")
        },
        Q11011TriggerYu_ = {
            alias = "Q11011TriggerYu",
            script = "Actor/Gadget/Q11011TriggerYu",
            id = 70900002,
            point = sceneData:GetDummyPoint(3, "Q11011Fight")
        }
    }
}
