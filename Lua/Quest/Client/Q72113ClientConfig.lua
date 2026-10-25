return {
    MainID = 72113,
    ActorAlias = "72113",
    SubIDs = {
        q7211301 = 7211301,
        q7211302 = 7211302,
        q7211303 = 7211303,
        q7211304 = 7211304,
        q7211305 = 7211305,
        q7211306 = 7211306,
        q7211315 = 7211315,
        q7211307 = 7211307,
        q7211312 = 7211312,
        q7211308 = 7211308,
        q7211314 = 7211314,
        q7211319 = 7211319,
        q7211309 = 7211309,
        q7211313 = 7211313,
        q7211316 = 7211316,
        q7211318 = 7211318,
        q7211310 = 7211310,
        q7211317 = 7211317,
        q7211311 = 7211311
    },
    Npcs = {
        paimonData = {
            id = 1005,
            alias = "Paimon",
            script = "Actor/Quest/Q352/Paimon",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc20317Data = {
            id = 20317,
            alias = "Npc20317",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        }
    },
    Datas = {
        Q72113Trigger_ = {
            alias = "Q72113Trigger",
            script = "Actor/Gadget/Q72113Trigger",
            id = 70900002,
            point = sceneData:GetDummyPoint(3, "Q3_72103_0")
        },
        Q72113Trigger1_ = {
            alias = "Q72113Trigger1",
            script = "Actor/Gadget/Q72113Trigger1",
            id = 70900002,
            point = sceneData:GetDummyPoint(3, "Q3_72113_BrokenBridge_Player")
        },
        Q72113Trigger2_ = {
            alias = "Q72113Trigger2",
            script = "Actor/Gadget/Q72113Trigger2",
            id = 70900002,
            point = sceneData:GetDummyPoint(3, "Q3_72113_Cage_Player")
        }
    }
}
