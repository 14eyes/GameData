return {
    MainID = 19043,
    ActorAlias = "19043",
    SubIDs = {
        q1904301 = 1904301,
        q1904302 = 1904302,
        q1904303 = 1904303,
        q1904304 = 1904304,
        q1904309 = 1904309,
        q1904305 = 1904305,
        q1904306 = 1904306,
        q1904307 = 1904307,
        q1904308 = 1904308
    },
    Npcs = {
        Npc1024Data = {
            id = 1024,
            alias = "Npc1024",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        }
    },
    Gadgets = {
        Gadget70710291Data = {
            id = 70710291,
            alias = "Gadget707102911",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Gadget70710291Data1 = {
            id = 70710291,
            alias = "Gadget707102912",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        }
    },
    Datas = {
        RoutePointsData1 = {
            sceneData:GetDummyPoint(3, "Q19043Route101").pos,
            sceneData:GetDummyPoint(3, "Q19043Route102").pos,
            sceneData:GetDummyPoint(3, "Q19043Route103").pos,
            sceneData:GetDummyPoint(3, "Q19043Bennett2").pos
        },
        RoutePointsData2 = {
            sceneData:GetDummyPoint(3, "Q19043Route201").pos,
            sceneData:GetDummyPoint(3, "Q19043Route202").pos,
            sceneData:GetDummyPoint(3, "Q19043Route203").pos,
            sceneData:GetDummyPoint(3, "Q19043Route204").pos,
            sceneData:GetDummyPoint(3, "Q19043Route205").pos,
            sceneData:GetDummyPoint(3, "Q19043Bennett3").pos
        },
        Narrator06Finish = {narratorId = 1904303, pauseLen = 10, resumeLen = 5, tag = "Story"},
        Narrator09Finish = {narratorId = 1904301, pauseLen = 10, resumeLen = 5, tag = "Story"},
        Narrator05Finish = {narratorId = 1904302, pauseLen = 10, resumeLen = 5, tag = "Story"},
        Narrator08Finish = {narratorId = 1904304, pauseLen = 10, resumeLen = 5, tag = "Story"},
        Q19043Trigger1_ = {
            alias = "Q19043Trigger1",
            script = "Actor/Gadget/Q19043Trigger1",
            id = 70900002,
            point = sceneData:GetDummyPoint(3, "Q19043Bannett1")
        },
        Q19043Trigger2_ = {
            alias = "Q19043Trigger2",
            script = "Actor/Gadget/Q19043Trigger2",
            id = 70900002,
            point = sceneData:GetDummyPoint(3, "Q19043Bennett3")
        },
        Q19043Trigger3_ = {
            alias = "Q19043Trigger3",
            script = "Actor/Gadget/Q19043Trigger3",
            id = 70900002,
            point = sceneData:GetDummyPoint(3, "Q19043Bennett3")
        }
    }
}
