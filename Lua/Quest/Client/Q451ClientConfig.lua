local Q451ClientConfig = {
    MainID = 451,
    ActorAlias = "451",
    SubIDs = {
        q45109 = 45109,
        q45101 = 45101,
        q45102 = 45102,
        q45107 = 45107,
        q45103 = 45103,
        q45104 = 45104,
        q45107 = 45108,
        q45105 = 45105,
        q45106 = 45106
    },
    RazorData = {
        Alias = "Razor",
        Script = "Actor/Npc/TempNPC",
        ID = 1011,
        BornPos = sceneData:GetDummyPoint(3, "Q451Razor").pos,
        BornDir = sceneData:GetDummyPoint(3, "Q451Razor").rot,
        LeavePos = sceneData:GetDummyPoint(3, "Q451RazorLeave").pos,
        LeaveDir = sceneData:GetDummyPoint(3, "Q451RazorLeave").rot
    },
    PaimonData = {
        Alias = "Paimon",
        Script = "Actor/Quest/Q352/Paimon",
        ID = 1005,
        BornPos = sceneData:GetDummyPoint(3, "Q451WolfRunStart").pos,
        BornDir = sceneData:GetDummyPoint(3, "Q451WolfRunStart").rot,
        EndPos = sceneData:GetDummyPoint(3, "Q451PaimonEnd").pos,
        EndDir = sceneData:GetDummyPoint(3, "Q451PaimonEnd").rot
    },
    NarratorFlow1 = {
        {dialogID = 4510001, audioEvtName = "", duration = 3},
        {dialogID = 4510002, audioEvtName = "", duration = 3},
        {dialogID = 4510003, audioEvtName = "", duration = 4}
    },
    NarratorFlow2 = {
        {dialogID = 4510801, audioEvtName = "", duration = 4},
        {dialogID = 4510802, audioEvtName = "", duration = 3},
        {dialogID = 4510803, audioEvtName = "", duration = 5},
        {dialogID = 4510804, audioEvtName = "", duration = 6}
    }
}

local csCfg = {
    type = CutsceneType.TIME_LINE_PREFAB,
    canSkip = true,
    castListPath = "Cs_CastList_Q451",
    resPath = "ART/Cutscene/CutScene_RZLQ001_RzArrived_Convert",
    startPosType = CutsceneInitPosType.FREE
}

local startOffset = {}
local n = 0
local v = 0
startOffset[1] = 0
startOffset[2] = n
startOffset[3] = v
csCfg.startOffset = startOffset
csCfg.keepCamera = true
csCfg.syncLoad = true
csCfg.fadeInDuration = 0.5
csCfg.fadeOutDuration = 1.5
Q451ClientConfig.CsCfg = csCfg
return Q451ClientConfig
