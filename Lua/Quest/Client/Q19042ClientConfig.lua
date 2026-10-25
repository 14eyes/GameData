return {
    MainID = 19042,
    ActorAlias = "19042",
    SubIDs = {
        q1904201 = 1904201,
        q1904202 = 1904202,
        q1904203 = 1904203,
        q1904204 = 1904204,
        q1904205 = 1904205,
        q1904206 = 1904206,
        q1904207 = 1904207
    },
    Npcs = {
        Npc1024Data = {
            id = 1024,
            alias = "Npc1024",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc1423Data = {
            id = 1423,
            alias = "Npc1423",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        }
    },
    Datas = {
        RoutePointsData1 = {
            sceneData:GetDummyPoint(3, "Q19042Route101").pos,
            sceneData:GetDummyPoint(3, "Q19042Route102").pos,
            sceneData:GetDummyPoint(3, "Q19042Route103").pos,
            sceneData:GetDummyPoint(3, "Q19042Bennett1").pos
        },
        RoutePointsData2 = {
            sceneData:GetDummyPoint(3, "Q19042Route201").pos,
            sceneData:GetDummyPoint(3, "Q19042Route202").pos,
            sceneData:GetDummyPoint(3, "Q19042Route203").pos,
            sceneData:GetDummyPoint(3, "Q19042Bennett2").pos
        },
        RoutePointsData3 = {
            sceneData:GetDummyPoint(3, "Q19042Route301").pos,
            sceneData:GetDummyPoint(3, "Q19042Route302").pos,
            sceneData:GetDummyPoint(3, "Q19042Route303").pos,
            sceneData:GetDummyPoint(3, "Q19042Route304").pos
        },
        NarratorWithId = {narratorId = 1904202, pauseLen = 10, resumeLen = 5, tag = "StoryCut"},
        RoutePointsData4 = {sceneData:GetDummyPoint(3, "Q19042Bennett3").pos},
        Q19042Trigger1_ = {
            alias = "Q19042Trigger1",
            script = "Actor/Gadget/Q19042Trigger1",
            id = 70900002,
            point = sceneData:GetDummyPoint(3, "Q19042Bennett1")
        },
        Q19042Trigger2_ = {
            alias = "Q19042Trigger2",
            script = "Actor/Gadget/Q19042Trigger2",
            id = 70900002,
            point = sceneData:GetDummyPoint(3, "Q19042Bennett2")
        },
        Q19042Trigger3_ = {
            alias = "Q19042Trigger3",
            script = "Actor/Gadget/Q19042Trigger3",
            id = 70900002,
            point = sceneData:GetDummyPoint(3, "Q19042Bennett3")
        }
    }
}
