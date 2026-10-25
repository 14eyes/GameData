require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest1025 = class("Quest1025", QuestActorProxy)
Quest1025.defaultAlias = "Quest1025"
local clientData
local subIDs
local paimonData
local gongziData
local keqingData
local nvshiData
local ningguangData
local ganyuData
local zhongliData
local bdrData
local xiaoData
local pllData
local xian2Data
local xian3Data
local xian1Data
local army1Data
local changchangData
local lgData
local lsData
local djData
local wbzData
local yingerData
local shitouData
local qyjData
local questOrphanNpcPlaceList
local DailyNPCManager = require("Actor/DailyNPCManager")

function Quest1025:OnDataLoaded()
    clientData = self.clientData
    subIDs = clientData.SubIDs
    paimonData = clientData.PaimonData
    gongziData = clientData.GongziData
    keqingData = clientData.KeqingData
    nvshiData = clientData.NvshiData
    ningguangData = clientData.NingguangData
    ganyuData = clientData.GanyuData
    zhongliData = clientData.ZhongliData
    bdrData = clientData.BDRData
    xiaoData = clientData.XiaoData
    pllData = clientData.PllData
    xian1Data = clientData.Xian1Data
    xian2Data = clientData.Xian2Data
    xian3Data = clientData.Xian3Data
    army1Data = clientData.Army1Data
    changchangData = clientData.ChangchangData
    lgData = clientData.LGData
    lsData = clientData.LSData
    djData = clientData.DJData
    wbzData = clientData.WBZData
    yingerData = clientData.YingerData
    shitouData = clientData.ShitouData
    qyjData = clientData.QYJData
    questOrphanNpcPlaceList = clientData.QuestOrphanNpcPlaceList
end

function Quest1025:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["102501"] = self.OnSubStart102501
    self.subStartHandlers["102502"] = self.OnSubStart102502
    self.subStartHandlers["102503"] = self.OnSubStart102503
    self.subStartHandlers["102504"] = self.OnSubStart102504
    self.subStartHandlers["102505"] = self.OnSubStart102505
    self.subStartHandlers["102506"] = self.OnSubStart102506
    self.subStartHandlers["102507"] = self.OnSubStart102507
    self.subStartHandlers["102508"] = self.OnSubStart102508
    self.subStartHandlers["102509"] = self.OnSubStart102509
    self.subStartHandlers["102510"] = self.OnSubStart102510
    self.subStartHandlers["102511"] = self.OnSubStart102511
    self.subStartHandlers["102512"] = self.OnSubStart102512
    self.subStartHandlers["102513"] = self.OnSubStart102513
    self.subStartHandlers["102514"] = self.OnSubStart102514
    self.subStartHandlers["102515"] = self.OnSubStart102515
    self.subStartHandlers["102516"] = self.OnSubStart102516
    self.subStartHandlers["102517"] = self.OnSubStart102517
    self.subStartHandlers["102518"] = self.OnSubStart102518
    self.subStartHandlers["102519"] = self.OnSubStart102519
    self.subStartHandlers["102520"] = self.OnSubStart102520
    self.subStartHandlers["102521"] = self.OnSubStart102521
end

function Quest1025:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["102501"] = self.OnSubFinish102501
    self.subFinishHandlers["102502"] = self.OnSubFinish102502
    self.subFinishHandlers["102503"] = self.OnSubFinish102503
    self.subFinishHandlers["102504"] = self.OnSubFinish102504
    self.subFinishHandlers["102505"] = self.OnSubFinish102505
    self.subFinishHandlers["102506"] = self.OnSubFinish102506
    self.subFinishHandlers["102507"] = self.OnSubFinish102507
    self.subFinishHandlers["102508"] = self.OnSubFinish102508
    self.subFinishHandlers["102509"] = self.OnSubFinish102509
    self.subFinishHandlers["102510"] = self.OnSubFinish102510
    self.subFinishHandlers["102511"] = self.OnSubFinish102511
    self.subFinishHandlers["102512"] = self.OnSubFinish102512
    self.subFinishHandlers["102513"] = self.OnSubFinish102513
    self.subFinishHandlers["102514"] = self.OnSubFinish102514
    self.subFinishHandlers["102515"] = self.OnSubFinish102515
    self.subFinishHandlers["102516"] = self.OnSubFinish102516
    self.subFinishHandlers["102517"] = self.OnSubFinish102517
    self.subFinishHandlers["102518"] = self.OnSubFinish102518
    self.subFinishHandlers["102519"] = self.OnSubFinish102519
    self.subFinishHandlers["102520"] = self.OnSubFinish102520
    self.subFinishHandlers["102521"] = self.OnSubFinish102521
end

function Quest1025:PaimonVanish()
    print("paimon vanish")
    local questNpcActor = self:GetQuestNpcActor(paimonData.Alias)
    if questNpcActor ~= nil then
        questNpcActor:DestroyWithDisappear(false)
    end
end

function Quest1025:BDRDestroy()
    if self:GetQuestNpcActor(bdrData.Alias) ~= nil then
        self:DestroyQuestNpcActorByAlias(bdrData.Alias, false)
    end
end

function Quest1025:keqingVanish()
    local questNpcActor = self:GetQuestNpcActor(keqingData.Alias)
    if questNpcActor ~= nil then
        questNpcActor:Destroy(false)
    end
end

function Quest1025:XiaoVanish()
    local questNpcActor = self:GetQuestNpcActor(xiaoData.Alias)
    if questNpcActor ~= nil then
        questNpcActor:Destroy(false)
    end
end

function Quest1025:PllVanish()
    local questNpcActor = self:GetQuestNpcActor(pllData.Alias)
    if questNpcActor ~= nil then
        questNpcActor:Destroy(false)
    end
end

function Quest1025:GanyuVanish()
    local questNpcActor = self:GetQuestNpcActor(ganyuData.Alias)
    if questNpcActor ~= nil then
        questNpcActor:Destroy(false)
    end
end

function Quest1025:NingguangVanish()
    local questNpcActor = self:GetQuestNpcActor(ningguangData.Alias)
    if questNpcActor ~= nil then
        questNpcActor:Destroy(false)
    end
end

function Quest1025:Xian1Vanish()
    local questNpcActor = self:GetQuestNpcActor(xian1Data.Alias)
    if questNpcActor ~= nil then
        questNpcActor:Destroy(false)
    end
end

function Quest1025:Xian2Vanish()
    local questNpcActor = self:GetQuestNpcActor(xian2Data.Alias)
    if questNpcActor ~= nil then
        questNpcActor:Destroy(false)
    end
end

function Quest1025:Xian3Vanish()
    local questNpcActor = self:GetQuestNpcActor(xian3Data.Alias)
    if questNpcActor ~= nil then
        questNpcActor:Destroy(false)
    end
end

function Quest1025:Army1Vanish()
    local questNpcActor = self:GetQuestNpcActor(army1Data.Alias)
    if questNpcActor ~= nil then
        questNpcActor:Destroy(false)
    end
end

function Quest1025:ChangchangVanish()
    local questNpcActor = self:GetQuestNpcActor(changchangData.Alias)
    if questNpcActor ~= nil then
        questNpcActor:Destroy(false)
    end
end

function Quest1025:ZhongliVanish()
    local questNpcActor = self:GetQuestNpcActor(zhongliData.Alias)
    if questNpcActor ~= nil then
        questNpcActor:Destroy(false)
    end
end

function Quest1025:GongziVanish()
    local questNpcActor = self:GetQuestNpcActor(gongziData.Alias)
    if questNpcActor ~= nil then
        questNpcActor:Destroy(false)
    end
end

function Quest1025:NVshiVanish()
    local questNpcActor = self:GetQuestNpcActor(nvshiData.Alias)
    if questNpcActor ~= nil then
        questNpcActor:Destroy(false)
    end
end

function Quest1025:QYJVanish()
    local questNpcActor = self:GetQuestNpcActor(qyjData.Alias)
    if questNpcActor ~= nil then
        questNpcActor:Destroy(false)
    end
end

function Quest1025:ShitouVanish()
    local questNpcActor = self:GetQuestNpcActor(shitouData.Alias)
    if questNpcActor ~= nil then
        questNpcActor:Destroy(false)
    end
end

function Quest1025:YingerVanish()
    local questNpcActor = self:GetQuestNpcActor(yingerData.Alias)
    if questNpcActor ~= nil then
        questNpcActor:Destroy(false)
    end
end

function Quest1025:InvokeOnInteraction(arg1)
    print("1014 Invoke : ")
    if arg1 == 1 then
        self:ActionSafeCall(self.PaimonVanish)
    end

    if arg1 == 2 then
        self:SpawnGadgetById(102502, 70710203)
        print("1014 Invoke : 2")
    end

    if arg1 == 3 then
        print("1014 Invoke : 3")
        globalActor:UnSpawn("Gnosis")
    end
end

function Quest1025:PlayAwakeCutscene()
    self:PlayCutsceneIndex(10250601, self.On102506CutsceneFinish, nil, nil, true)
end

function Quest1025:On102506CutsceneFinish()
    print("35104 Finish : Tutorial1")
    local actor = actorMgr:GetActor(clientData.ActorAlias)
    if actor ~= nil then
        actor:FinishQuest(false, nil)
    end
end

function Quest1025:OnSubStart102501(arg1)
    print("102501 start:...")
    local entityCreateTask = curtainUtils.CreateEntityCreateTask({paimonData.Alias})
    local actor = actorMgr:GetActor(clientData.ActorAlias)
    self:CallDelay(2, function(arg1)
        actor:TransmitPlayerByQuestId(102501, 1)
    end)
end

function Quest1025:OnSubStart102503(arg1)
    print("OnFinished 102501")
    self:CreateQuestNpc(arg1, djData.ID)
    self:CreateQuestNpc(arg1, wbzData.ID)
    self:NotifyTo("Npc2055", NpcUtil.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc2038", NpcUtil.NpcEventType.HIDESELF, true)
end

function Quest1025:OnSubStart102504(arg1)
    print("OnFinished 102501")
    self:CreateQuestNpc(arg1, lgData.ID)
    self:CreateQuestNpc(arg1, lsData.ID)
    self:NotifyTo("Npc2035", NpcUtil.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc2034", NpcUtil.NpcEventType.HIDESELF, true)
end

function Quest1025:OnSubStart102516(arg1)
    print("OnFinished 102501")
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, paimonData.ID)
        arg1_2:RequestInteraction("Paimon")
        print("SHOW BLACK SCREEN 12000")
    end, nil, task, "QUEST_Black_Q1200010")
end

function Quest1025:OnSubStart102515(arg1)
    print("OnFinished 102501")
    self:CreateQuestNpc(arg1, bdrData.ID)
    self:NotifyTo("Npc2084", NpcUtil.NpcEventType.HIDESELF, true)
end

function Quest1025:OnSubStart102502(arg1)
    print("OnFinished 102501")
    self:CreateQuestNpc(arg1, paimonData.ID)
    self:RequestInteraction("Paimon")
    self:NotifyTo("Npc2144", NpcUtil.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc2067", NpcUtil.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc2145", NpcUtil.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc2144", NpcUtil.NpcEventType.HIDESELF, true)
end

function Quest1025:OnSubStart102505(arg1)
    print("OnFinished 102501")
    self:CreateQuestNpc(arg1, qyjData.ID)
    self:NotifyTo("Npc2071", NpcUtil.NpcEventType.HIDESELF, true)
    actorMgr:CreateActorWithPos("Q102505Trigger", "Actor/Gadget/Q102505Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q102505QYJ").pos, sceneData:GetDummyPoint(3, "Q102505QYJ").rot, true, false)
end

function Quest1025:OnSubStart102506(arg1)
    print("OnFinished 102501")
    self:CreateQuestNpc(arg1, yingerData.ID)
    self:CreateQuestNpc(arg1, shitouData.ID)
    self:CreateQuestNpc(arg1, pllData.ID)
    self:CreateQuestNpc(arg1, ganyuData.ID)
    self:CreateQuestNpc(arg1, ningguangData.ID)
    self:CreateQuestNpc(arg1, keqingData.ID)
    self:NotifyTo("Npc2083", NpcUtil.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc2054", NpcUtil.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc2093", NpcUtil.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc2014", NpcUtil.NpcEventType.HIDESELF, true)
    actorMgr:CreateActorWithPos("Q102506Trigger", "Actor/Gadget/Q102506Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q102506Trigger").pos, sceneData:GetDummyPoint(3, "Q102506Trigger").rot, true, false)
end

function Quest1025:OnSubStart102510(arg1)
    print("OnFinished 102501")
    self:CreateQuestNpc(arg1, zhongliData.ID)
end

function Quest1025:OnSubStart102513(arg1)
    print("OnFinished 102501")
    self:NotifyTo("Npc2014", NpcUtil.NpcEventType.HIDESELF, true)
    self:CreateQuestNpc(arg1, zhongliData.ID)
    self:CreateQuestNpc(arg1, yingerData.ID)
    self:CreateQuestNpc(arg1, shitouData.ID)
    self:CreateQuestNpc(arg1, pllData.ID)
    self:CreateQuestNpc(arg1, ganyuData.ID)
    self:CreateQuestNpc(arg1, ningguangData.ID)
    self:CreateQuestNpc(arg1, keqingData.ID)
end

function Quest1025:OnSubFinish102516(arg1)
    print("OnFinished 102501")
    self:ActionSafeCall(self.PaimonVanish)
    self:ActionSafeCall(self.keqingVanish)
    self:ActionSafeCall(self.XiaoVanish)
    self:ActionSafeCall(self.PllVanish)
    self:ActionSafeCall(self.GanyuVanish)
    self:ActionSafeCall(self.NingguangVanish)
    self:ActionSafeCall(self.Xian1Vanish)
    self:ActionSafeCall(self.Xian2Vanish)
    self:ActionSafeCall(self.Xian3Vanish)
    self:ActionSafeCall(self.Army1Vanish)
    self:ActionSafeCall(self.ChangchangVanish)
    self:CallDelay(2.5, function(arg1)
        arg1:NarratorOnlyTaskByData(clientData.NarratorData1, nil)
    end)
end

function Quest1025:OnSubFinish102502(arg1)
    print("OnFinished 102501")
    self:ActionSafeCall(self.BDRDestroy)
    self:NotifyTo("Npc2084", NpcUtil.NpcEventType.STARTDAILY, true)
    self:ActionSafeCall(self.PaimonVanish)
    self:ActionSafeCall(self.GongziVanish)
    self:ActionSafeCall(self.NVshiVanish)
end

function Quest1025:OnSubFinish102515(arg1)
    print("OnFinished 102501")
    self:ActionSafeCall(self.PaimonVanish)
end

function Quest1025:OnSubFinish102505(arg1)
    print("OnFinished 102501")
    self:ActionSafeCall(self.QYJVanish)
    self:ActionSafeCall(self.PaimonVanish)
    self:NotifyTo("Npc2055", NpcUtil.NpcEventType.STARTDAILY, true)
    self:NotifyTo("Npc2038", NpcUtil.NpcEventType.STARTDAILY, true)
    self:NotifyTo("Npc2035", NpcUtil.NpcEventType.STARTDAILY, true)
    self:NotifyTo("Npc2034", NpcUtil.NpcEventType.STARTDAILY, true)
end

function Quest1025:OnSubFinish102506(arg1)
    print("OnFinished 102501")
    self:ActionSafeCall(self.PaimonVanish)
end

function Quest1025:OnSubFinish102510(arg1)
    print("OnFinished 102501")
    self:ActionSafeCall(self.PaimonVanish)
    self:ActionSafeCall(self.keqingVanish)
    self:ActionSafeCall(self.ShitouVanish)
    self:ActionSafeCall(self.PllVanish)
    self:ActionSafeCall(self.GanyuVanish)
    self:ActionSafeCall(self.NingguangVanish)
    self:ActionSafeCall(self.YingerVanish)
    self:NotifyTo("Npc2083", NpcUtil.NpcEventType.STARTDAILY, true)
    self:NotifyTo("Npc2054", NpcUtil.NpcEventType.STARTDAILY, true)
    self:NotifyTo("Npc2093", NpcUtil.NpcEventType.STARTDAILY, true)
    self:NotifyTo("Npc2071", NpcUtil.NpcEventType.STARTDAILY, true)
    self:NotifyTo("Npc2014", NpcUtil.NpcEventType.STARTDAILY, true)
end

function Quest1025:OnSubFinish102517(arg1)
    print("OnFinished 102501")
    self:ShowBlackScreen(1.5, 4, 0.5, function(arg1)
        arg1:TransmitPlayerByQuestId(102517, 1)
        arg1:CallDelay(2.5, function(arg1)
            arg1:NarratorOnlyTaskByData(clientData.NarratorData2, nil)
        end)
    end, nil, nil, "QUEST_Message_Q102502")

    self:NotifyTo("Npc2144", NpcUtil.NpcEventType.STARTDAILY, true)
    self:NotifyTo("Npc2067", NpcUtil.NpcEventType.STARTDAILY, true)
    self:NotifyTo("Npc2145", NpcUtil.NpcEventType.STARTDAILY, true)
    self:NotifyTo("Npc2144", NpcUtil.NpcEventType.STARTDAILY, true)
end

function Quest1025:OnSubFinish102521(arg1)
    print("******OnFinish 102521")
end

function Quest1025:Start() end
function Quest1025:OnDestroy() end
return Quest1025
