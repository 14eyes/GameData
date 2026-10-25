return {
    MainID = 11021,
    ActorAlias = "11021",
    SubIDs = {
        q1102101 = 1102101,
        q1102102 = 1102102,
        q1102107 = 1102107,
        q1102108 = 1102108,
        q1102103 = 1102103,
        q1102104 = 1102104,
        q1102109 = 1102109,
        q1102105 = 1102105,
        q1102106 = 1102106
    },
    Npcs = {
        Npc10232Data = {
            id = 10232,
            alias = "Npc10232",
            script = "Actor/Npc/TempNPC",
            point = sceneData:GetDummyPoint(3, "Q11021ZL1")
        },
        Npc10303Data = {
            id = 10303,
            alias = "Npc10303",
            script = "Actor/Npc/TempNPC",
            point = sceneData:GetDummyPoint(3, "Q11021Girl1")
        },
        Npc10302Data = {
            id = 10302,
            alias = "Npc10302",
            script = "Actor/Npc/TempNPC",
            point = sceneData:GetDummyPoint(3, "Q11021Yuren1")
        }
    },
    Gadgets = {GadgetData = {id = 71700097, alias = "Gad1", point = sceneData:GetDummyPoint(3, "Q11021Gadget1")}},
    Datas = {
        NarratorWithId01 = {narratorId = 1102102, pauseLen = 10, resumeLen = 5, tag = "Tag"},
        NarratorWithId02 = {narratorId = 1102103, pauseLen = 10, resumeLen = 5, tag = "Tag"},
        NarratorWithId03 = {narratorId = 1102104, pauseLen = 10, resumeLen = 5, tag = "Tag"},
        NarratorWithId04 = {narratorId = 1102105, pauseLen = 10, resumeLen = 5, tag = "Tag"},
        Q1102105Trigger_ = {
            alias = "Q1102105Trigger",
            script = "Actor/Gadget/Q1102105Trigger",
            id = 70900002,
            point = sceneData:GetDummyPoint(3, "Q11021Gadget3")
        },
        Q1102107Trigger_ = {
            alias = "Q1102107Trigger",
            script = "Actor/Gadget/Q1102107Trigger",
            id = 70900002,
            point = sceneData:GetDummyPoint(3, "Q11021Battle1")
        },
        TargetPos = ""
    }
}
