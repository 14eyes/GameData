local Q1000ClientConfig = {MainID = 1000, ActorAlias = "1000"}
local subIDs = {}
local n = 100001
local v = 100002
local n2 = 100003
local n3 = 100004
local n4 = 100005
local n5 = 100006
local n6 = 100007
local n7 = 100021
local n8 = 100022
local n9 = 100023
local n10 = 100024
local n11 = 100025
local n12 = 100026
local n13 = 100008
local n14 = 100015
local n15 = 100009
local n16 = 100010
local n17 = 100011
local n18 = 100012
local n19 = 100013
local n20 = 100014
subIDs[1] = 100000
subIDs[2] = n
subIDs[3] = v
subIDs[4] = n2
subIDs[5] = n3
subIDs[6] = n4
subIDs[7] = n5
subIDs[8] = n6
subIDs[9] = n7
subIDs[10] = n8
subIDs[11] = n9
subIDs[12] = n10
subIDs[13] = n11
subIDs[14] = n12
subIDs[15] = n13
subIDs[16] = n14
subIDs[17] = n15
subIDs[18] = n16
subIDs[19] = n17
subIDs[20] = n18
subIDs[21] = n19
subIDs[22] = n20
Q1000ClientConfig.SubIDs = subIDs

local qingXianCfg = {
    type = CutsceneType.TIME_LINE_PREFAB,
    canSkip = true,
    castListPath = "Cs_CastList_Q1000Gongzi",
    resPath = "ART/Cutscene/Cs_LYAQ002_QingXian_Convert",
    startPosType = CutsceneInitPosType.FREE
}

local startOffset = {}
local n21 = 0
local n22 = 0
startOffset[1] = 0
startOffset[2] = n21
startOffset[3] = n22
qingXianCfg.startOffset = startOffset
qingXianCfg.keepCamera = false
Q1000ClientConfig.QingXianCfg = qingXianCfg

local gongziDebutCfg = {
    type = CutsceneType.TIME_LINE_PREFAB,
    canSkip = true,
    castListPath = "Cs_CastList_Q1000Gongzi",
    resPath = "ART/Cutscene/Cs_LYAQ003_GongziDebut_Convert",
    startPosType = CutsceneInitPosType.FREE
}

local tbl = {}
local n23 = 0
local n24 = 0
tbl[1] = 0
tbl[2] = n23
tbl[3] = n24
gongziDebutCfg.startOffset = tbl
gongziDebutCfg.keepCamera = false
Q1000ClientConfig.GongziDebutCfg = gongziDebutCfg
Q1000ClientConfig.AwareReminder = {{dialogID = 10001240, audioEvtName = "", duration = 2}}
Q1000ClientConfig.DiscoverReminder = {{dialogID = 10001241, audioEvtName = "", duration = 1}}
Q1000ClientConfig.NarratorFlow01 = {{dialogID = 10000701, audioEvtName = "", duration = 6}}

Q1000ClientConfig.NarratorFlow = {
    {dialogID = 10001521, audioEvtName = "", duration = 4},
    {dialogID = 10001522, audioEvtName = "", duration = 6.8},
    {dialogID = 10001523, audioEvtName = "", duration = 3.8}
}

Q1000ClientConfig.SneakWarning = {{dialogID = 10001051, audioEvtName = "", duration = 2}}

Q1000ClientConfig.PaimonData = {
    Paimon = "Paimon",
    PaimonScript = "Actor/Quest/Q352/Paimon",
    PaimonID = 1005,
    bornPos1 = sceneData:GetDummyPoint(3, "Q100000Paimon").pos,
    bornDir1 = sceneData:GetDummyPoint(3, "Q100000Paimon").rot
}

Q1000ClientConfig.GongziData = {Alias = "Npc10200", ID = 10200}
Q1000ClientConfig.YixianData = {Alias = "Npc201801", ID = 201801}
Q1000ClientConfig.YizhuData = {Alias = "Npc200701", ID = 200701}
Q1000ClientConfig.BolaiData = {Alias = "Npc201301", ID = 201301}
Q1000ClientConfig.AweiData = {Alias = "Npc200801", ID = 200801}
Q1000ClientConfig.XingxiData = {Alias = "Npc202001", ID = 202001}
Q1000ClientConfig.DeangongData = {Alias = "Npc200901", ID = 200901}
Q1000ClientConfig.ChaboshiData = {Alias = "Npc201001", ID = 201001}
Q1000ClientConfig.FaneryeData = {Alias = "Npc201101", ID = 201101}
Q1000ClientConfig.JifangData = {Alias = "Npc162501", ID = 162501}
Q1000ClientConfig.XiaoanData = {Alias = "Npc201201", ID = 201201}
Q1000ClientConfig.JiangzhouData = {Alias = "Npc202601", ID = 202601}
Q1000ClientConfig.GuanhaiData = {Alias = "Npc203601", ID = 203601}
Q1000ClientConfig.HuihuiData = {Alias = "Npc202101", ID = 202101}
Q1000ClientConfig.LicaiData = {Alias = "Npc202201", ID = 202201}
Q1000ClientConfig.LinlangData = {Alias = "Npc202301", ID = 202301}
Q1000ClientConfig.XiuhuaData = {Alias = "Npc209101", ID = 209101}
Q1000ClientConfig.ChangchangData = {Alias = "Npc202501", ID = 202501}
Q1000ClientConfig.IvanData = {Alias = "Npc207201", ID = 207201}
Q1000ClientConfig.ChangshunData = {Alias = "Npc209001", ID = 209001}
Q1000ClientConfig.NingguangData = {Alias = "Npc10211", ID = 10211}
Q1000ClientConfig.Maid1Data = {Alias = "Npc2002901", ID = 2002901}
Q1000ClientConfig.Maid2Data = {Alias = "Npc2003001", ID = 2003001}

Q1000ClientConfig.SneakAI1Data = {
    alias = "SneakAI1",
    metaPath = "Actor/Npc/YJTSneakAI",
    configID = 10061,
    dataIndex = 1,
    bornPos = sceneData:GetDummyPoint(3, "Q1000Guard01").pos,
    bornDir = sceneData:GetDummyPoint(3, "Q1000Guard01").rot,
    PatrolPosNum = 2,
    PatrolPos = {sceneData:GetDummyPoint(3, "Q1000Guard01").pos, sceneData:GetDummyPoint(3, "Q1000Guard0101").pos},
    PatrolDir = {sceneData:GetDummyPoint(3, "Q1000Guard01").rot, sceneData:GetDummyPoint(3, "Q1000Guard0101").rot},
    PatrolNext = 1
}

Q1000ClientConfig.SneakAI2Data = {
    alias = "SneakAI2",
    metaPath = "Actor/Npc/YJTSneakAI",
    configID = 10062,
    dataIndex = 2,
    bornPos = sceneData:GetDummyPoint(3, "Q1000Guard02").pos,
    bornDir = sceneData:GetDummyPoint(3, "Q1000Guard02").rot,
    PatrolPosNum = 2,
    PatrolPos = {sceneData:GetDummyPoint(3, "Q1000Guard02").pos, sceneData:GetDummyPoint(3, "Q1000Guard0201").pos},
    PatrolDir = {sceneData:GetDummyPoint(3, "Q1000Guard02").rot, sceneData:GetDummyPoint(3, "Q1000Guard0201").rot},
    PatrolNext = 1
}

Q1000ClientConfig.SneakAI3Data = {
    alias = "SneakAI3",
    metaPath = "Actor/Npc/YJTSneakAI",
    configID = 10063,
    dataIndex = 3,
    bornPos = sceneData:GetDummyPoint(3, "Q1000Guard03").pos,
    bornDir = sceneData:GetDummyPoint(3, "Q1000Guard03").rot,
    PatrolPosNum = 1,
    PatrolPos = {sceneData:GetDummyPoint(3, "Q1000Guard03").pos},
    PatrolDir = {sceneData:GetDummyPoint(3, "Q1000Guard03").rot},
    PatrolNext = 1
}

Q1000ClientConfig.SneakAI4Data = {
    alias = "SneakAI4",
    metaPath = "Actor/Npc/YJTSneakAI",
    configID = 10064,
    dataIndex = 4,
    bornPos = sceneData:GetDummyPoint(3, "Q1000Guard0401").pos,
    bornDir = sceneData:GetDummyPoint(3, "Q1000Guard0401").rot,
    PatrolPosNum = 4,
    PatrolPos = {
        sceneData:GetDummyPoint(3, "Q1000Guard0401").pos,
        sceneData:GetDummyPoint(3, "Q1000Guard04").pos,
        sceneData:GetDummyPoint(3, "Q1000Guard0402").pos,
        sceneData:GetDummyPoint(3, "Q1000Guard04").pos
    },
    PatrolDir = {
        sceneData:GetDummyPoint(3, "Q1000Guard0401").rot,
        sceneData:GetDummyPoint(3, "Q1000Guard04").rot,
        sceneData:GetDummyPoint(3, "Q1000Guard0402").rot,
        sceneData:GetDummyPoint(3, "Q1000Guard04").rot
    },
    PatrolNext = 1
}

Q1000ClientConfig.SneakAI7Data = {
    alias = "SneakAI7",
    metaPath = "Actor/Npc/YJTSneakAI",
    configID = 10067,
    dataIndex = 7,
    bornPos = sceneData:GetDummyPoint(3, "Q1000Guard07").pos,
    bornDir = sceneData:GetDummyPoint(3, "Q1000Guard07").rot,
    PatrolPosNum = 1,
    PatrolPos = {sceneData:GetDummyPoint(3, "Q1000Guard07").pos},
    PatrolDir = {sceneData:GetDummyPoint(3, "Q1000Guard07").rot},
    PatrolNext = 1
}

Q1000ClientConfig.SneakAI8Data = {
    alias = "SneakAI8",
    metaPath = "Actor/Npc/YJTSneakAI",
    configID = 10068,
    dataIndex = 8,
    bornPos = sceneData:GetDummyPoint(3, "Q1000Guard08").pos,
    bornDir = sceneData:GetDummyPoint(3, "Q1000Guard08").rot,
    PatrolPosNum = 1,
    PatrolPos = {sceneData:GetDummyPoint(3, "Q1000Guard08").pos},
    PatrolDir = {sceneData:GetDummyPoint(3, "Q1000Guard08").rot},
    PatrolNext = 1
}

Q1000ClientConfig.SneakAI10Data = {
    alias = "SneakAI10",
    metaPath = "Actor/Npc/YJTSneakAI",
    configID = 10070,
    dataIndex = 10,
    bornPos = sceneData:GetDummyPoint(3, "Q1000Guard10").pos,
    bornDir = sceneData:GetDummyPoint(3, "Q1000Guard10").rot,
    PatrolPosNum = 1,
    PatrolPos = {sceneData:GetDummyPoint(3, "Q1000Guard10").pos},
    PatrolDir = {sceneData:GetDummyPoint(3, "Q1000Guard10").rot},
    PatrolNext = 1
}

Q1000ClientConfig.SneakAI11Data = {
    alias = "SneakAI11",
    metaPath = "Actor/Npc/YJTSneakAI",
    configID = 10071,
    dataIndex = 11,
    bornPos = sceneData:GetDummyPoint(3, "Q1000Guard11").pos,
    bornDir = sceneData:GetDummyPoint(3, "Q1000Guard11").rot,
    PatrolPosNum = 1,
    PatrolPos = {sceneData:GetDummyPoint(3, "Q1000Guard11").pos},
    PatrolDir = {sceneData:GetDummyPoint(3, "Q1000Guard11").rot},
    PatrolNext = 1
}

Q1000ClientConfig.SneakAI12Data = {
    alias = "SneakAI12",
    metaPath = "Actor/Npc/YJTSneakAI",
    configID = 10072,
    dataIndex = 12,
    bornPos = sceneData:GetDummyPoint(3, "Q1000Guard12").pos,
    bornDir = sceneData:GetDummyPoint(3, "Q1000Guard12").rot,
    PatrolPosNum = 1,
    PatrolPos = {sceneData:GetDummyPoint(3, "Q1000Guard12").pos},
    PatrolDir = {sceneData:GetDummyPoint(3, "Q1000Guard12").rot},
    PatrolNext = 1
}

Q1000ClientConfig.SneakAI13Data = {
    alias = "SneakAI13",
    metaPath = "Actor/Npc/YJTSneakAI",
    configID = 10073,
    dataIndex = 13,
    bornPos = sceneData:GetDummyPoint(3, "Q1000Guard13").pos,
    bornDir = sceneData:GetDummyPoint(3, "Q1000Guard13").rot,
    PatrolPosNum = 1,
    PatrolPos = {sceneData:GetDummyPoint(3, "Q1000Guard13").pos},
    PatrolDir = {sceneData:GetDummyPoint(3, "Q1000Guard13").rot},
    PatrolNext = 1
}

Q1000ClientConfig.SneakAI14Data = {
    alias = "SneakAI14",
    metaPath = "Actor/Npc/YJTSneakAI",
    configID = 10074,
    dataIndex = 14,
    bornPos = sceneData:GetDummyPoint(3, "Q1000Guard14").pos,
    bornDir = sceneData:GetDummyPoint(3, "Q1000Guard14").rot,
    PatrolPosNum = 1,
    PatrolPos = {sceneData:GetDummyPoint(3, "Q1000Guard14").pos},
    PatrolDir = {sceneData:GetDummyPoint(3, "Q1000Guard14").rot},
    PatrolNext = 1
}

Q1000ClientConfig.SneakAI15Data = {
    alias = "SneakAI15",
    metaPath = "Actor/Npc/YJTSneakAI",
    configID = 10075,
    dataIndex = 15,
    bornPos = sceneData:GetDummyPoint(3, "Q1000Guard15").pos,
    bornDir = sceneData:GetDummyPoint(3, "Q1000Guard15").rot,
    PatrolPosNum = 1,
    PatrolPos = {sceneData:GetDummyPoint(3, "Q1000Guard15").pos},
    PatrolDir = {sceneData:GetDummyPoint(3, "Q1000Guard15").rot},
    PatrolNext = 1
}

Q1000ClientConfig.SneakAI16Data = {
    alias = "SneakAI16",
    metaPath = "Actor/Npc/YJTSneakAI",
    configID = 10076,
    dataIndex = 16,
    bornPos = sceneData:GetDummyPoint(3, "Q1000Guard16").pos,
    bornDir = sceneData:GetDummyPoint(3, "Q1000Guard16").rot,
    PatrolPosNum = 2,
    PatrolPos = {sceneData:GetDummyPoint(3, "Q1000Guard16").pos, sceneData:GetDummyPoint(3, "Q1000Guard1601").pos},
    PatrolDir = {sceneData:GetDummyPoint(3, "Q1000Guard16").rot, sceneData:GetDummyPoint(3, "Q1000Guard1601").rot},
    PatrolNext = 1
}

Q1000ClientConfig.SneakAI17Data = {
    alias = "SneakAI17",
    metaPath = "Actor/Npc/YJTSneakAI",
    configID = 10077,
    dataIndex = 17,
    bornPos = sceneData:GetDummyPoint(3, "Q1000Guard17").pos,
    bornDir = sceneData:GetDummyPoint(3, "Q1000Guard17").rot,
    PatrolPosNum = 1,
    PatrolPos = {sceneData:GetDummyPoint(3, "Q1000Guard17").pos},
    PatrolDir = {sceneData:GetDummyPoint(3, "Q1000Guard17").rot},
    PatrolNext = 1
}

Q1000ClientConfig.SneakAI31Data = {
    alias = "SneakAI31",
    metaPath = "Actor/Npc/YJTSneakAI",
    configID = 10078,
    dataIndex = 31,
    bornPos = sceneData:GetDummyPoint(3, "Q1000Guard31").pos,
    bornDir = sceneData:GetDummyPoint(3, "Q1000Guard31").rot,
    PatrolPosNum = 1,
    PatrolPos = {sceneData:GetDummyPoint(3, "Q1000Guard31").pos},
    PatrolDir = {sceneData:GetDummyPoint(3, "Q1000Guard31").rot},
    PatrolNext = 1
}

Q1000ClientConfig.SneakAI32Data = {
    alias = "SneakAI32",
    metaPath = "Actor/Npc/YJTSneakAI",
    configID = 10079,
    dataIndex = 32,
    bornPos = sceneData:GetDummyPoint(3, "Q1000Guard32").pos,
    bornDir = sceneData:GetDummyPoint(3, "Q1000Guard32").rot,
    PatrolPosNum = 1,
    PatrolPos = {sceneData:GetDummyPoint(3, "Q1000Guard32").pos},
    PatrolDir = {sceneData:GetDummyPoint(3, "Q1000Guard32").rot},
    PatrolNext = 1
}

Q1000ClientConfig.SneakAI33Data = {
    alias = "SneakAI33",
    metaPath = "Actor/Npc/YJTSneakAI",
    configID = 10080,
    dataIndex = 33,
    bornPos = sceneData:GetDummyPoint(3, "Q1000Guard33").pos,
    bornDir = sceneData:GetDummyPoint(3, "Q1000Guard33").rot,
    PatrolPosNum = 1,
    PatrolPos = {sceneData:GetDummyPoint(3, "Q1000Guard33").pos},
    PatrolDir = {sceneData:GetDummyPoint(3, "Q1000Guard33").rot},
    PatrolNext = 1
}

Q1000ClientConfig.SneakAI34Data = {
    alias = "SneakAI34",
    metaPath = "Actor/Npc/YJTSneakAI",
    configID = 10081,
    dataIndex = 34,
    bornPos = sceneData:GetDummyPoint(3, "Q1000Guard34").pos,
    bornDir = sceneData:GetDummyPoint(3, "Q1000Guard34").rot,
    PatrolPosNum = 1,
    PatrolPos = {sceneData:GetDummyPoint(3, "Q1000Guard34").pos},
    PatrolDir = {sceneData:GetDummyPoint(3, "Q1000Guard34").rot},
    PatrolNext = 1
}

Q1000ClientConfig.SneakAI35Data = {
    alias = "SneakAI35",
    metaPath = "Actor/Npc/YJTSneakAI",
    configID = 10082,
    dataIndex = 35,
    bornPos = sceneData:GetDummyPoint(3, "Q1000Guard35").pos,
    bornDir = sceneData:GetDummyPoint(3, "Q1000Guard35").rot,
    PatrolPosNum = 1,
    PatrolPos = {sceneData:GetDummyPoint(3, "Q1000Guard35").pos},
    PatrolDir = {sceneData:GetDummyPoint(3, "Q1000Guard35").rot},
    PatrolNext = 1
}

Q1000ClientConfig.SneakAI36Data = {
    alias = "SneakAI36",
    metaPath = "Actor/Npc/YJTSneakAI",
    configID = 10083,
    dataIndex = 36,
    bornPos = sceneData:GetDummyPoint(3, "Q1000Guard36").pos,
    bornDir = sceneData:GetDummyPoint(3, "Q1000Guard36").rot,
    PatrolPosNum = 1,
    PatrolPos = {sceneData:GetDummyPoint(3, "Q1000Guard36").pos},
    PatrolDir = {sceneData:GetDummyPoint(3, "Q1000Guard36").rot},
    PatrolNext = 1
}

return Q1000ClientConfig
