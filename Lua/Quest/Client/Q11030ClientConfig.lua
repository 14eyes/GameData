return {
    MainID = 11030,
    ActorAlias = "11030",
    SubIDs = {
        q1103001 = 1103001,
        q1103002 = 1103002,
        q1103003 = 1103003,
        q1103004 = 1103004,
        q1103010 = 1103010,
        q1103005 = 1103005,
        q1103006 = 1103006,
        q1103007 = 1103007,
        q1103008 = 1103008,
        q1103009 = 1103009,
        q1103011 = 1103011,
        q1103012 = 1103012
    },
    Npcs = {
        Npc214001Data = {
            id = 214001,
            alias = "Npc214001",
            script = "Actor/Npc/TempNPC",
            point = sceneData:GetDummyPoint(3, "Q11030SanMiShuBaiShi")
        },
        Npc214201Data = {
            id = 214201,
            alias = "Npc214201",
            script = "Actor/Npc/TempNPC",
            point = sceneData:GetDummyPoint(3, "Q11030SanMiShuBaiWen")
        },
        Npc214301Data = {
            id = 214301,
            alias = "Npc214301",
            script = "Actor/Npc/TempNPC",
            point = sceneData:GetDummyPoint(3, "Q11030SanMiShuBaiXiao")
        },
        Npc1015Data = {
            id = 1015,
            alias = "Npc1015",
            script = "Actor/Npc/TempNPC",
            point = sceneData:GetDummyPoint(3, "Q11030GanyuV2Born")
        },
        Npc1015Data2 = {
            id = 1015,
            alias = "Npc1015",
            script = "Actor/Npc/TempNPC",
            point = sceneData:GetDummyPoint(3, "Q11030GanyuV2Born2")
        },
        Npc1015Data3 = {
            id = 1015,
            alias = "Npc1015",
            script = "Actor/Npc/TempNPC",
            point = sceneData:GetDummyPoint(3, "Q11030GanyuChallenge1Fin")
        },
        Npc1015Data4 = {
            id = 1015,
            alias = "Npc1015",
            script = "Actor/Npc/TempNPC",
            point = sceneData:GetDummyPoint(3, "Q11030GanyuChallenge2Fin")
        },
        Npc10258Data = {
            id = 10258,
            alias = "Npc10258",
            script = "Actor/Npc/TempNPC",
            point = sceneData:GetDummyPoint(3, "Q11030AocangAfeiMove")
        },
        XiaoData = {
            id = 10204,
            alias = "Xiao",
            script = "Actor/Npc/TempNPC",
            point = sceneData:GetDummyPoint(3, "Q11030Xiao2")
        },
        Npc10342Data = {
            id = 10342,
            alias = "Npc10342",
            script = "Actor/Npc/TempNPC",
            point = sceneData:GetDummyPoint(3, "Q11030VisitNPC")
        },
        PaimonData = {
            id = 1005,
            alias = "Paimon",
            script = "Actor/Quest/Q352/Paimon",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        }
    },
    Datas = {
        PaimonIndicate = {narratorId = 1103001, pauseLen = 10, resumeLen = 5, tag = "StoryCut"},
        TransmitPoint = {point_id = 1, scene_id = 3, pos = "Q11030Challenge1Start2"},
        Challenge1FinTrans = {point_id = 2, scene_id = 3, pos = "Q11030Challenge1FinTrans"},
        Q11030Trigger_ = {
            alias = "Q11030Trigger",
            script = "Actor/Gadget/Q11030Trigger",
            id = 70900002,
            point = sceneData:GetDummyPoint(3, "Q11030Xiao1")
        },
        Q11030TriggerBegin_ = {
            alias = "Q11030TriggerBegin",
            script = "Actor/Gadget/Q11030TriggerBegin",
            id = 70900002,
            point = sceneData:GetDummyPoint(3, "Q11030SanMiShuBaiShi")
        }
    }
}
