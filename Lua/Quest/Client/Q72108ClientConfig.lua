return {
    MainID = 72108,
    ActorAlias = "72108",
    SubIDs = {
        q7210810 = 7210810,
        q7210801 = 7210801,
        q7210811 = 7210811,
        q7210819 = 7210819,
        q7210802 = 7210802,
        q7210812 = 7210812,
        q7210816 = 7210816,
        q7210813 = 7210813,
        q7210814 = 7210814,
        q7210803 = 7210803,
        q7210804 = 7210804,
        q7210805 = 7210805,
        q7210806 = 7210806,
        q7210821 = 7210821,
        q7210807 = 7210807,
        q7210815 = 7210815,
        q7210808 = 7210808,
        q7210809 = 7210809,
        q7210817 = 7210817,
        q7210820 = 7210820,
        q7210818 = 7210818
    },
    Npcs = {
        Npc3161Data = {
            id = 3161,
            alias = "Npc3161",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = sceneData:GetDummyPoint(3, "72108_cat1")
        },
        Npc3160Data = {
            id = 3160,
            alias = "Npc3160",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = sceneData:GetDummyPoint(3, "72108_cat2")
        },
        Npc3159Data = {
            id = 3159,
            alias = "Npc3159",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = sceneData:GetDummyPoint(3, "72108_cat3")
        },
        PaimonData = {
            id = 1005,
            alias = "Paimon",
            script = "Actor/Quest/Q352/Paimon",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc20221Data = {
            id = 20221,
            alias = "Npc20221",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc3188Data = {
            id = 3188,
            alias = "Npc3188",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        }
    },
    Points = {
        start = sceneData:GetDummyPoint(3, "Q3_72008_0"),
        reach = sceneData:GetDummyPoint(3, "Q3_72008_19"),
        Player = sceneData:GetDummyPoint(3, "Q7210809player"),
        Paimon = sceneData:GetDummyPoint(3, "Q7210809paimon"),
        catleft = sceneData:GetDummyPoint(3, "72108_cat2"),
        catright = sceneData:GetDummyPoint(3, "72108_cat3")
    },
    Datas = {
        RoutePointsData = {
            sceneData:GetDummyPoint(3, "Q3_72008_1").pos,
            sceneData:GetDummyPoint(3, "Q3_72008_2").pos,
            (sceneData:GetDummyPoint(3, "Q3_72008_3")),
            (sceneData:GetDummyPoint(3, "Q3_72008_4")),
            (sceneData:GetDummyPoint(3, "Q3_72008_5")),
            (sceneData:GetDummyPoint(3, "Q3_72008_6")),
            (sceneData:GetDummyPoint(3, "Q3_72008_7")),
            (sceneData:GetDummyPoint(3, "Q3_72008_8")),
            (sceneData:GetDummyPoint(3, "Q3_72008_9")),
            (sceneData:GetDummyPoint(3, "Q3_72008_10")),
            (sceneData:GetDummyPoint(3, "Q3_72008_11")),
            (sceneData:GetDummyPoint(3, "Q3_72008_12")),
            (sceneData:GetDummyPoint(3, "Q3_72008_13")),
            (sceneData:GetDummyPoint(3, "Q3_72008_14")),
            (sceneData:GetDummyPoint(3, "Q3_72008_15")),
            (sceneData:GetDummyPoint(3, "Q3_72008_16")),
            (sceneData:GetDummyPoint(3, "Q3_72008_17")),
            sceneData:GetDummyPoint(3, "Q3_72008_18")
        }
    }
}
