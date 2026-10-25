return {
    MainID = 22028,
    ActorAlias = "22028",
    SubIDs = {
        q2202801 = 2202801,
        q2202802 = 2202802,
        q2202803 = 2202803,
        q2202804 = 2202804,
        q2202806 = 2202806,
        q2202805 = 2202805,
        q2202807 = 2202807,
        q2202808 = 2202808,
        q2202809 = 2202809
    },
    Npcs = {
        Npc3045Data = {
            id = 3045,
            alias = "Npc3045",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        }
    },
    Datas = {
        Q22028Trigger1_ = {
            alias = "Q22028Trigger1",
            script = "Actor/Gadget/Q22028Trigger1",
            id = 70900002,
            point = sceneData:GetDummyPoint(3, "Q2202805xiangtai")
        },
        Q22028Trigger2_ = {
            alias = "Q22028Trigger2",
            script = "Actor/Gadget/Q22028Trigger2",
            id = 70900002,
            point = sceneData:GetDummyPoint(3, "Q2202809xiangtai")
        }
    }
}
