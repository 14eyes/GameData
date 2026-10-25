return {
    MainID = 21000,
    ActorAlias = "21000",
    SubIDs = {
        q2100001 = 2100001,
        q2100002 = 2100002,
        q2100003 = 2100003,
        q2100004 = 2100004,
        q2100005 = 2100005,
        q2100006 = 2100006,
        q2100018 = 2100018,
        q2100007 = 2100007,
        q2100010 = 2100010,
        q2100017 = 2100017,
        q2100011 = 2100011,
        q2100012 = 2100012,
        q2100013 = 2100013,
        q2100016 = 2100016,
        q2100014 = 2100014,
        q2100015 = 2100015
    },
    Npcs = {
        Npc2031Data = {
            id = 2031,
            alias = "Npc2031",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc2030Data = {
            id = 2030,
            alias = "Npc2030",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = sceneData:GetDummyPoint(3, "Q2100001_N2030")
        },
        Npc2074Data = {
            id = 2074,
            alias = "Npc2074",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = sceneData:GetDummyPoint(3, "Q2100001_N2074")
        }
    },
    Datas = {
        RoutePointsData = {sceneData:GetDummyPoint(3, "Q2100004_N2031").pos},
        RoutePointsData1 = {sceneData:GetDummyPoint(3, "Q2100008_N2031").pos},
        RoutePointsData2 = {
            sceneData:GetDummyPoint(3, "Q2100008_N10000005").pos,
            sceneData:GetDummyPoint(3, "Q2100008_N1005").pos,
            sceneData:GetDummyPoint(3, "Q2100008_N2031").pos,
            sceneData:GetDummyPoint(3, "Q2100006_N2031").pos
        },
        RoutePointsData3 = {sceneData:GetDummyPoint(3, "Q2100005").pos}
    }
}
