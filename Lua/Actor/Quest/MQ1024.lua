require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest1024 = class("Quest1024", QuestActorProxy)
Quest1024.defaultAlias = "Quest1024"
local clientData
local subIDs
local paimonData
local gongziData
local keqingData
local nvshiData
local ningguangData
local ganyuData
local zhongliData
local xiaoData
local pllData
local xian2Data
local xian3Data
local xian1Data
local army1Data
local army2Data
local army3Data
local DailyNPCManager = require("Actor/DailyNPCManager")

function Quest1024:OnDataLoaded()
    clientData = self.clientData
    subIDs = clientData.SubIDs
    paimonData = clientData.PaimonData
    gongziData = clientData.GongziData
    keqingData = clientData.KeqingData
    nvshiData = clientData.NvshiData
    ningguangData = clientData.NingguangData
    ganyuData = clientData.GanyuData
    zhongliData = clientData.ZhongliData
    xiaoData = clientData.XiaoData
    pllData = clientData.PllData
    xian1Data = clientData.Xian1Data
    xian2Data = clientData.Xian2Data
    xian3Data = clientData.Xian3Data
    army1Data = clientData.Army1Data
    army2Data = clientData.Army2Data
    army3Data = clientData.Army3Data
end

function Quest1024:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["102401"] = self.OnSubStart102401
    self.subStartHandlers["102402"] = self.OnSubStart102402
    self.subStartHandlers["102403"] = self.OnSubStart102403
    self.subStartHandlers["102404"] = self.OnSubStart102404
    self.subStartHandlers["102405"] = self.OnSubStart102405
    self.subStartHandlers["102406"] = self.OnSubStart102406
    self.subStartHandlers["102407"] = self.OnSubStart102407
    self.subStartHandlers["102408"] = self.OnSubStart102408
    self.subStartHandlers["102409"] = self.OnSubStart102409
    self.subStartHandlers["102410"] = self.OnSubStart102410
    self.subStartHandlers["102411"] = self.OnSubStart102411
    self.subStartHandlers["102412"] = self.OnSubStart102412
    self.subStartHandlers["102413"] = self.OnSubStart102413
    self.subStartHandlers["102414"] = self.OnSubStart102414
end

function Quest1024:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["102401"] = self.OnSubFinish102401
    self.subFinishHandlers["102402"] = self.OnSubFinish102402
    self.subFinishHandlers["102403"] = self.OnSubFinish102403
    self.subFinishHandlers["102404"] = self.OnSubFinish102404
    self.subFinishHandlers["102405"] = self.OnSubFinish102405
    self.subFinishHandlers["102406"] = self.OnSubFinish102406
    self.subFinishHandlers["102407"] = self.OnSubFinish102407
    self.subFinishHandlers["102408"] = self.OnSubFinish102408
    self.subFinishHandlers["102409"] = self.OnSubFinish102409
    self.subFinishHandlers["102410"] = self.OnSubFinish102410
    self.subFinishHandlers["102411"] = self.OnSubFinish102411
    self.subFinishHandlers["102412"] = self.OnSubFinish102412
    self.subFinishHandlers["102413"] = self.OnSubFinish102413
    self.subFinishHandlers["102414"] = self.OnSubFinish102414
end

function Quest1024:PaimonVanish()
    print("paimon vanish")
    local questNpcActor = self:GetQuestNpcActor(paimonData.Alias)
    if questNpcActor ~= nil then
        questNpcActor:DestroyWithDisappear(false)
    end
end

function Quest1024:InvokeOnInteraction(arg1)
    print("1014 Invoke : ")
end

function Quest1024:PlayAwakeCutscene1()
    self:PlayCutsceneIndex(10240301, self.On102403CutsceneFinish, nil, nil, true)
end

function Quest1024:On102403CutsceneFinish()
    print("35104 Finish : Tutorial1")
    local actor = actorMgr:GetActor(clientData.ActorAlias)
    if actor ~= nil then
        actor:FinishQuest(false, nil)
    end
end

function Quest1024:PlayAwakeCutscene2()
    self:PlayCutsceneIndex(10240501, self.On102405CutsceneFinish, nil, nil, true)
end

function Quest1024:On102405CutsceneFinish()
    print("35104 Finish : Tutorial1")
    local actor = actorMgr:GetActor(clientData.ActorAlias)
    if actor ~= nil then
        actor:FinishQuest(false, nil)
    end
end

function Quest1024:keqingVanish()
    local questNpcActor = self:GetQuestNpcActor(keqingData.Alias)
    if questNpcActor ~= nil then
        questNpcActor:Destroy(false)
    end
end

function Quest1024:XiaoVanish()
    local questNpcActor = self:GetQuestNpcActor(xiaoData.Alias)
    print("XiaoVanish")
    if questNpcActor ~= nil then
        questNpcActor:Destroy(false)
    end
end

function Quest1024:PllVanish()
    local questNpcActor = self:GetQuestNpcActor(pllData.Alias)
    if questNpcActor ~= nil then
        questNpcActor:Destroy(false)
    end
end

function Quest1024:GanyuVanish()
    local questNpcActor = self:GetQuestNpcActor(ganyuData.Alias)
    if questNpcActor ~= nil then
        questNpcActor:Destroy(false)
    end
end

function Quest1024:NingguangVanish()
    local questNpcActor = self:GetQuestNpcActor(ningguangData.Alias)
    if questNpcActor ~= nil then
        questNpcActor:Destroy(false)
    end
end

function Quest1024:Xian1Vanish()
    local questNpcActor = self:GetQuestNpcActor(xian1Data.Alias)
    if questNpcActor ~= nil then
        questNpcActor:Destroy(false)
    end
end

function Quest1024:Xian2Vanish()
    local questNpcActor = self:GetQuestNpcActor(xian2Data.Alias)
    if questNpcActor ~= nil then
        questNpcActor:Destroy(false)
    end
end

function Quest1024:Xian3Vanish()
    local questNpcActor = self:GetQuestNpcActor(xian3Data.Alias)
    if questNpcActor ~= nil then
        questNpcActor:Destroy(false)
    end
end

function Quest1024:Army1Vanish()
    local questNpcActor = self:GetQuestNpcActor(army1Data.Alias)
    if questNpcActor ~= nil then
        questNpcActor:Destroy(false)
    end
end

function Quest1024:Army2Vanish()
    local questNpcActor = self:GetQuestNpcActor(army2Data.Alias)
    if questNpcActor ~= nil then
        questNpcActor:Destroy(false)
    end
end

function Quest1024:Army3Vanish()
    local questNpcActor = self:GetQuestNpcActor(army3Data.Alias)
    if questNpcActor ~= nil then
        questNpcActor:Destroy(false)
    end
end

function Quest1024:OnSubStart102401(arg1)
    print("102401 start:...")
    globalActor:PlayerEnterDungeon(185, 102)
end

function Quest1024:OnSubStart102402(arg1)
    print("OnFinished 102401")
    local entityCreateTask = curtainUtils.CreateEntityCreateTask({paimonData.Alias})
    self:CallDelay(0, function(arg1_2)
        arg1_2:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
            arg1_2:CreateQuestNpc(arg1, paimonData.ID)
            arg1_2:RequestInteraction("Paimon")
            print("SHOW BLACK SCREEN 12000")
        end, nil, entityCreateTask, "QUEST_Black_Q1200010")
    end)
end

function Quest1024:OnSubStart102403(arg1)
    print("102401 start:...")
end

function Quest1024:OnSubStart102404(arg1)
    print("102401 start:...")
    self:CreateQuestNpc(arg1, ningguangData.ID)
    self:GetQuestNpcActor(ningguangData.Alias):DoFreeStyle(1350)
end

function Quest1024:OnSubStart102405(arg1)
    print("102401 start:...")
    self:PlayAwakeCutscene2()
end

function Quest1024:OnSubFinish102401(arg1)
    print("OnFinished 102403trans")
end

function Quest1024:OnSubFinish102402(arg1)
    print("OnFinished 102401")
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
    self:ActionSafeCall(self.Army2Vanish)
    self:ActionSafeCall(self.Army3Vanish)
    self:TransmitPlayerByQuestId(102402, 1)
end

function Quest1024:OnSubFinish102403(arg1)
    print("OnFinished 102403trans")
end

function Quest1024:OnSubFinish102404(arg1)
    print("OnFinished 102401")
    self:ActionSafeCall(self.NingguangVanish)
end

function Quest1024:OnSubFinish102405(arg1)
    print("OnFinished 102401")
    self:ShowBlackScreen(0, 3.5, 0)
end

function Quest1024:Start() end
function Quest1024:OnDestroy() end
return Quest1024
