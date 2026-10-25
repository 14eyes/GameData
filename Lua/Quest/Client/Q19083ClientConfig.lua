return {
    MainID = 19083,
    ActorAlias = "19083",
    SubIDs = {
        q1908301 = 1908301,
        q1908302 = 1908302,
        q1908303 = 1908303,
        q1908312 = 1908312,
        q1908304 = 1908304,
        q1908305 = 1908305,
        q1908306 = 1908306,
        q1908307 = 1908307,
        q1908308 = 1908308,
        q1908310 = 1908310,
        q1908311 = 1908311,
        q1908313 = 1908313,
        q1908309 = 1908309
    },
    Npcs = {
        Npc1027Data = {
            id = 1027,
            alias = "Npc1027",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc11006Data = {
            id = 11006,
            alias = "Npc11006",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        }
    },
    Datas = {
        narrator1 = {narratorId = 1908306, pauseLen = 10, resumeLen = 5, tag = "Tag"},
        Q19083Trigger1_ = {
            alias = "Q19083Trigger1",
            script = "Actor/Gadget/Q19083Trigger1",
            id = 70900002,
            point = sceneData:GetDummyPoint(3, "Q1908301Noel")
        },
        Q19083Trigger2_ = {
            alias = "Q19083Trigger2",
            script = "Actor/Gadget/Q19083Trigger2",
            id = 70900002,
            point = sceneData:GetDummyPoint(3, "Q1908304target")
        },
        Q19083Trigger3_ = {
            alias = "Q19083Trigger3",
            script = "Actor/Gadget/Q19083Trigger3",
            id = 70900002,
            point = sceneData:GetDummyPoint(3, "Q1908303shayin")
        },
        Q19083Trigger4_ = {
            alias = "Q19083Trigger4",
            script = "Actor/Gadget/Q19083Trigger4",
            id = 70900002,
            point = sceneData:GetDummyPoint(3, "Q1908308target")
        },
        Q19083Trigger5_ = {
            alias = "Q19083Trigger5",
            script = "Actor/Gadget/Q19083Trigger5",
            id = 70900002,
            point = sceneData:GetDummyPoint(3, "Q1908308target")
        },
        Q19083Trigger6_ = {
            alias = "Q19083Trigger6",
            script = "Actor/Gadget/Q19083Trigger6",
            id = 70900002,
            point = sceneData:GetDummyPoint(3, "Q1908304target")
        },
        Q19083Trigger7_ = {
            alias = "Q19083Trigger7",
            script = "Actor/Gadget/Q19083Trigger7",
            id = 70900002,
            point = sceneData:GetDummyPoint(3, "Q1908308target")
        }
    }
}
