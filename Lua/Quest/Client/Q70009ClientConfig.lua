return {
    MainID = 70009,
    ActorAlias = "70009",
    SubIDs = {
        q7000901 = 7000901,
        q7000903 = 7000903,
        q7000904 = 7000904,
        q7000905 = 7000905,
        q7000906 = 7000906,
        q7000907 = 7000907,
        q7000908 = 7000908,
        q7000909 = 7000909,
        q7000910 = 7000910,
        q7000911 = 7000911,
        q7000912 = 7000912,
        q7000913 = 7000913,
        q7000902 = 7000902
    },
    Npcs = {
        Npc1517Data = {
            id = 1517,
            alias = "Npc1517",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = sceneData:GetDummyPoint(1008, "Q70810VictorBorn")
        },
        Npc1599DataChurch = {
            id = 1599,
            alias = "Npc1599",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = sceneData:GetDummyPoint(1008, "Q70009LillyBorn")
        },
        Npc1599Data711 = {
            id = 1599,
            alias = "Npc1599",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = sceneData:GetDummyPoint(3, "Q70009FeedEndLilly")
        },
        Npc1599DataFeed = {
            id = 1599,
            alias = "Npc1599",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = sceneData:GetDummyPoint(3, "Q70009FeedLilly")
        },
        Npc1599DataFlower = {
            id = 1599,
            alias = "Npc1599",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = sceneData:GetDummyPoint(3, "Q70009FlowerLilly")
        },
        Npc1599DataFood = {
            id = 1599,
            alias = "Npc1599",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = sceneData:GetDummyPoint(3, "Q70009FoodLilly")
        },
        Npc1423Data = {
            id = 1423,
            alias = "Npc1423",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = sceneData:GetDummyPoint(3, "NpcFemaleInsomniaStand06Born")
        },
        Npc1425Data = {
            id = 1425,
            alias = "Npc1425",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = sceneData:GetDummyPoint(3, "Q70810FloraBorn")
        }
    },
    Datas = {
        NarratorTable1 = {
            {dialogID = 700091101, audioEvtName = "", duration = 3},
            {dialogID = 700091102, audioEvtName = "", duration = 3},
            {dialogID = 700091103, audioEvtName = "", duration = 5}
        },
        NarratorTable2 = {{dialogID = 700091110, audioEvtName = "", duration = 5}},
        Q70009Trigger_ = {
            alias = "Q70009Trigger",
            script = "Actor/Gadget/Q70009Trigger",
            id = 70900002,
            point = sceneData:GetDummyPoint(3, "Q70009FesArea")
        },
        Q70009TriggerInteract_ = {
            alias = "Q70009TriggerInteract",
            script = "Actor/Gadget/Q70009TriggerInteract",
            id = 70900002,
            point = sceneData:GetDummyPoint(3, "Q70009FoodLilly")
        }
    }
}
