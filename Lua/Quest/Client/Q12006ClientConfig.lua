return {
    MainID = 12006,
    ActorAlias = "12006",
    SubIDs = {
        q1200601 = 1200601,
        q1200602 = 1200602,
        q1200603 = 1200603,
        q1200607 = 1200607,
        q1200608 = 1200608,
        q1200606 = 1200606,
        q1200605 = 1200605,
        q1200604 = 1200604
    },
    Npcs = {
        Npc3006Data = {
            id = 3006,
            alias = "Npc3006",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = sceneData:GetDummyPoint(3, "Q1200501Mio")
        },
        Npc3044Data = {
            id = 3044,
            alias = "Npc3044",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = sceneData:GetDummyPoint(3, "Q1200601FoodOwner")
        },
        Npc1013DataFoodSit = {
            id = 1013,
            alias = "Npc1013",
            script = "Actor/Npc/TempNPC",
            point = sceneData:GetDummyPoint(3, "Q1200601FoodAyakaSit")
        },
        Npc1013DataCookPoint = {
            id = 1013,
            alias = "Npc1013",
            script = "Actor/Npc/TempNPC",
            point = sceneData:GetDummyPoint(3, "Q1200602FoodAyakaCook")
        },
        PaimonData = {
            id = 1005,
            alias = "Paimon",
            script = "Actor/Quest/Q352/Paimon",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        }
    },
    Datas = {
        Q12006Trigger_ = {
            alias = "Q12006Trigger",
            script = "Actor/Gadget/Q12006Trigger",
            id = 70900002,
            point = {pos = {x = -3008.071, y = 220.3147, z = -4362.083}, rot = {x = 0, y = 0, z = 0}}
        }
    }
}
