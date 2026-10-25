return {
    MainID = 73523,
    ActorAlias = "73523",
    SubIDs = {q7352301 = 7352301, q7352304 = 7352304, q7352302 = 7352302, q7352305 = 7352305, q7352303 = 7352303},
    Npcs = {
        Npc13254Data = {
            id = 13254,
            alias = "Npc13254",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc13225Data = {
            id = 13225,
            alias = "Npc13225",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc30356Data = {
            id = 30356,
            alias = "Npc30356",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        }
    },
    Points = {
        TPos_Q7352301_TriggerOut = sceneData:GetDummyPoint(3, "Q7352003_N13254"),
        TPos_Q7352302_TriggerOut = sceneData:GetDummyPoint(3, "Q7352105_N13225"),
        TPos_Q7352303_TriggerOut = sceneData:GetDummyPoint(3, "Q7352202_N30356")
    },
    Datas = {
        Q7352301_TriggerOut = {
            alias = "Q7352301_TriggerOut",
            script = "Actor/Gadget/Q7352301_TriggerOut",
            id = 70900002,
            point = sceneData:GetDummyPoint(3, "Q7352003_N13254")
        },
        Q7352302_TriggerOut = {
            alias = "Q7352302_TriggerOut",
            script = "Actor/Gadget/Q7352302_TriggerOut",
            id = 70900002,
            point = sceneData:GetDummyPoint(3, "Q7352105_N13225")
        },
        Q7352303_TriggerOut = {
            alias = "Q7352303_TriggerOut",
            script = "Actor/Gadget/Q7352303_TriggerOut",
            id = 70900002,
            point = sceneData:GetDummyPoint(3, "Q7352202_N30356")
        }
    }
}
