return {
    MainID = 2012,
    ActorAlias = "2012",
    SubIDs = {
        q201201 = 201201,
        q201202 = 201202,
        q201203 = 201203,
        q201204 = 201204,
        q201205 = 201205,
        q201206 = 201206,
        q201210 = 201210,
        q201211 = 201211,
        q201216 = 201216,
        q201217 = 201217,
        q201212 = 201212,
        q201207 = 201207,
        q201213 = 201213,
        q201208 = 201208,
        q201214 = 201214,
        q201209 = 201209,
        q201215 = 201215
    },
    Npcs = {
        Npc3075Data = {
            id = 3075,
            alias = "Npc3075",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        PaimonData = {
            id = 1005,
            alias = "Paimon",
            script = "Actor/Quest/Q352/Paimon",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc3089Data = {
            id = 3089,
            alias = "Npc3089",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc3084Data = {
            id = 3084,
            alias = "Npc3084",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc3083Data = {
            id = 3083,
            alias = "Npc3083",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc12043Data = {
            id = 12043,
            alias = "Npc12043",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc1033Data = {
            id = 1033,
            alias = "Npc1033",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc3097Data = {
            id = 3097,
            alias = "Npc3097",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc12044Data = {
            id = 12044,
            alias = "Npc12044",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc12045Data = {
            id = 12045,
            alias = "Npc12045",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc12051Data = {
            id = 12051,
            alias = "Npc12051",
            script = "Actor/Npc/FollowNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        }
    },
    Gadgets = {
        Gadget71700283Data = {
            id = 71700283,
            alias = "Gadget71700283",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        }
    },
    FollowNPCData = {
        alias = "Npc12051",
        metaPath = "Actor/Npc/YJTSneakAI",
        configID = 10064,
        dataIndex = 4,
        bornPos = sceneData:GetDummyPoint(3, "Q1000Guard0401").pos,
        bornDir = sceneData:GetDummyPoint(3, "Q1000Guard0401").rot,
        PatrolPosNum = 13,
        PatrolPos = {
            sceneData:GetDummyPoint(3, "Q2012NpcFollow01").pos,
            sceneData:GetDummyPoint(3, "Q2012NpcFollow02").pos,
            sceneData:GetDummyPoint(3, "Q2012NpcFollow03").pos,
            sceneData:GetDummyPoint(3, "Q2012NpcFollow04").pos,
            sceneData:GetDummyPoint(3, "Q2012NpcFollow04_1").pos,
            sceneData:GetDummyPoint(3, "Q2012NpcFollow05").pos,
            sceneData:GetDummyPoint(3, "Q2012NpcFollow06").pos,
            sceneData:GetDummyPoint(3, "Q2012NpcFollow07").pos,
            sceneData:GetDummyPoint(3, "Q2012NpcFollow08").pos,
            sceneData:GetDummyPoint(3, "Q2012NpcFollow08_1").pos,
            sceneData:GetDummyPoint(3, "Q2012NpcFollow09").pos,
            sceneData:GetDummyPoint(3, "Q2012NpcFollow10").pos,
            sceneData:GetDummyPoint(3, "Q2012NpcFollow11_0").pos
        },
        PatrolDir = {
            sceneData:GetDummyPoint(3, "Q2012NpcFollow01").rot,
            sceneData:GetDummyPoint(3, "Q2012NpcFollow02").rot,
            sceneData:GetDummyPoint(3, "Q2012NpcFollow03").rot,
            sceneData:GetDummyPoint(3, "Q2012NpcFollow04").rot,
            sceneData:GetDummyPoint(3, "Q2012NpcFollow04_1").rot,
            sceneData:GetDummyPoint(3, "Q2012NpcFollow05").rot,
            sceneData:GetDummyPoint(3, "Q2012NpcFollow06").rot,
            sceneData:GetDummyPoint(3, "Q2012NpcFollow07").rot,
            sceneData:GetDummyPoint(3, "Q2012NpcFollow08").rot,
            sceneData:GetDummyPoint(3, "Q2012NpcFollow08_1").pos,
            sceneData:GetDummyPoint(3, "Q2012NpcFollow09").rot,
            sceneData:GetDummyPoint(3, "Q2012NpcFollow10").rot,
            sceneData:GetDummyPoint(3, "Q2012NpcFollow11_0").rot
        },
        PatrolNext = 1
    },
    Datas = {
        FollowLen = 100,
        FailLen = 10,
        RoutePoints = {
            sceneData:GetDummyPoint(3, "Q2012NpcFollow01").pos,
            sceneData:GetDummyPoint(3, "Q2012NpcFollow02").pos,
            sceneData:GetDummyPoint(3, "Q2012NpcFollow03").pos,
            sceneData:GetDummyPoint(3, "Q2012NpcFollow04").pos,
            sceneData:GetDummyPoint(3, "Q2012NpcFollow05").pos,
            sceneData:GetDummyPoint(3, "Q2012NpcFollow06").pos,
            sceneData:GetDummyPoint(3, "Q2012NpcFollow07").pos,
            sceneData:GetDummyPoint(3, "Q2012NpcFollow08").pos,
            sceneData:GetDummyPoint(3, "Q2012NpcFollow09").pos,
            sceneData:GetDummyPoint(3, "Q2012NpcFollow10").pos,
            sceneData:GetDummyPoint(3, "Q2012NpcFollow11_0").pos
        },
        NarratorWithId01 = {narratorId = 201201, pauseLen = 10, resumeLen = 5, tag = "Story", startCheckPause = false},
        NarratorWithId02 = {narratorId = 201209, pauseLen = 10, resumeLen = 5, tag = "Story", startCheckPause = false},
        NarratorChat01 = {narratorId = 201297, pauseLen = 10, resumeLen = 5, tag = "Story", startCheckPause = false},
        NarratorThink01 = {narratorId = 201291, pauseLen = 10, resumeLen = 5, tag = "Story", startCheckPause = false},
        NarratorThink02 = {narratorId = 201292, pauseLen = 10, resumeLen = 5, tag = "Story", startCheckPause = false},
        NarratorFailFound = {narratorId = 201293, pauseLen = 10, resumeLen = 5, tag = "Story", startCheckPause = false},
        NarratorFailFar = {narratorId = 201294, pauseLen = 10, resumeLen = 5, tag = "Story", startCheckPause = false},
        NarratorWarnFar = {narratorId = 201295, pauseLen = 10, resumeLen = 5, tag = "Story", startCheckPause = false},
        NarratorWarnFound = {narratorId = 201296, pauseLen = 10, resumeLen = 5, tag = "Story", startCheckPause = false},
        Q201207Trigger_ = {
            alias = "Q201207Trigger",
            script = "Actor/Gadget/Q201207Trigger",
            id = 70900002,
            point = sceneData:GetDummyPoint(3, "Q2012Heishanghuo01")
        }
    }
}
