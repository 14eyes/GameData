return {
    MainID = 20103,
    ActorAlias = "20103",
    SubIDs = {
        q2010301 = 2010301,
        q2010302 = 2010302,
        q2010303 = 2010303,
        q2010304 = 2010304,
        q2010305 = 2010305,
        q2010306 = 2010306,
        q2010307 = 2010307,
        q2010308 = 2010308,
        q2010309 = 2010309,
        q2010310 = 2010310,
        q2010311 = 2010311,
        q2010312 = 2010312,
        q2010313 = 2010313,
        q2010314 = 2010314,
        q2010315 = 2010315
    },
    Npcs = {
        Npc1565Data = {
            id = 1565,
            alias = "Npc1565",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = sceneData:GetDummyPoint(3, "Q20103NPCBorn")
        },
        PaimonData = {
            id = 1005,
            alias = "Paimon",
            script = "Actor/Quest/Q352/Paimon",
            point = sceneData:GetDummyPoint(3, "Q20103PaimonBorn")
        },
        Npc20025Data = {
            id = 20025,
            alias = "Npc20025",
            script = "Actor/Npc/TempNPC",
            point = sceneData:GetDummyPoint(3, "Q20103Hili1Born")
        },
        Npc20102Data = {
            id = 20102,
            alias = "Npc20102",
            script = "Actor/Npc/TempNPC",
            point = sceneData:GetDummyPoint(3, "Q20103Hili2Born")
        },
        Npc20103Data = {
            id = 20103,
            alias = "Npc20103",
            script = "Actor/Npc/TempNPC",
            point = sceneData:GetDummyPoint(3, "Q20103Hili3Born")
        }
    },
    Points = {NewTransfrom = sceneData:GetDummyPoint(3, "Q20103PlayerBorn")},
    Datas = {
        PaimonReminder = {
            {dialogID = 201031601, audioEvtName = "", duration = 3},
            {dialogID = 201031602, audioEvtName = "", duration = 3}
        }
    }
}
