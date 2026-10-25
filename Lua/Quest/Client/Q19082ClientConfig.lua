return {
    MainID = 19082,
    ActorAlias = "19082",
    SubIDs = {
        q1908201 = 1908201,
        q1908202 = 1908202,
        q1908203 = 1908203,
        q1908206 = 1908206,
        q1908204 = 1908204,
        q1908205 = 1908205
    },
    Npcs = {
        Npc1027Data = {
            id = 1027,
            alias = "Npc1027",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc204501Data = {
            id = 204501,
            alias = "Npc204501",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc204901Data = {
            id = 204901,
            alias = "Npc204901",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        }
    },
    Datas = {
        Q19082Trigger1_ = {
            alias = "Q19082Trigger1",
            script = "Actor/Gadget/Q19082Trigger1",
            id = 70900002,
            point = sceneData:GetDummyPoint(3, "Q1908201target")
        },
        Q19082Trigger2_ = {
            alias = "Q19082Trigger2",
            script = "Actor/Gadget/Q19082Trigger2",
            id = 70900002,
            point = sceneData:GetDummyPoint(3, "Q1908204dugushuo")
        },
        Q19082Trigger3_ = {
            alias = "Q19082Trigger3",
            script = "Actor/Gadget/Q19082Trigger3",
            id = 70900002,
            point = sceneData:GetDummyPoint(3, "Q1908203Noel")
        }
    }
}
