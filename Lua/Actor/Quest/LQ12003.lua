require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest12003 = class("Quest12003", QuestActorProxy)
Quest12003.defaultAlias = "Quest12003"
util.do_require("Quest/Share/Q12003ShareConfig")
local Q12003ClientConfig = require("Quest/Client/Q12003ClientConfig")

local paimonData = Q12003ClientConfig.PaimonData
local xingQiuData = Q12003ClientConfig.XingQiuData
local wlyData = Q12003ClientConfig.WlyData
local guardData01 = Q12003ClientConfig.GuardData01
local guardData02 = Q12003ClientConfig.GuardData02
local guardData03 = Q12003ClientConfig.GuardData03
local guardData04 = Q12003ClientConfig.GuardData04
local jiaDingData = Q12003ClientConfig.JiaDingData
local collectorsData = Q12003ClientConfig.CollectorsData

function Quest12003:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["1200301"] = self.OnSubStart1200301
    self.subStartHandlers["1200302"] = self.OnSubStart1200302
    self.subStartHandlers["1200303"] = self.OnSubStart1200303
    self.subStartHandlers["1200304"] = self.OnSubStart1200304
    self.subStartHandlers["1200305"] = self.OnSubStart1200305
    self.subStartHandlers["1200306"] = self.OnSubStart1200306
    self.subStartHandlers["1200307"] = self.OnSubStart1200307
    self.subStartHandlers["1200308"] = self.OnSubStart1200308
    self.subStartHandlers["1200309"] = self.OnSubStart1200309
    self.subStartHandlers["1200310"] = self.OnSubStart1200310
    self.subStartHandlers["1200311"] = self.OnSubStart1200311
end

function Quest12003:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["1200301"] = self.OnSubFinish1200301
    self.subFinishHandlers["1200302"] = self.OnSubFinish1200302
    self.subFinishHandlers["1200303"] = self.OnSubFinish1200303
    self.subFinishHandlers["1200304"] = self.OnSubFinish1200304
    self.subFinishHandlers["1200305"] = self.OnSubFinish1200305
    self.subFinishHandlers["1200306"] = self.OnSubFinish1200306
    self.subFinishHandlers["1200307"] = self.OnSubFinish1200307
    self.subFinishHandlers["1200308"] = self.OnSubFinish1200308
    self.subFinishHandlers["1200309"] = self.OnSubFinish1200309
    self.subFinishHandlers["1200310"] = self.OnSubFinish1200310
    self.subFinishHandlers["1200311"] = self.OnSubFinish1200311
end

function Quest12003:PaimonVanish()
    print("paimon vanish")
    local questNpcActor = self:GetQuestNpcActor(paimonData.Alias)
    questNpcActor:AirModeOff()
    if questNpcActor ~= nil then
        questNpcActor:DestroyWithDisappear(false)
    end
end

function Quest12003:XingQiuDestroy()
    local questNpcActor = self:GetQuestNpcActor(xingQiuData.Alias)
    questNpcActor:EnableHeadCtrl(true)
    if questNpcActor ~= nil then
        questNpcActor:Destroy(false)
    end
end

function Quest12003:WlyDestroy()
    local questNpcActor = self:GetQuestNpcActor(wlyData.Alias)
    questNpcActor:EnableHeadCtrl(true)
    if questNpcActor ~= nil then
        questNpcActor:Destroy(false)
    end
end

function Quest12003:CollectorsDestroy()
    local questNpcActor = self:GetQuestNpcActor(collectorsData.Alias)
    questNpcActor:EnableHeadCtrl(true)
    if questNpcActor ~= nil then
        questNpcActor:Destroy(false)
    end
end

function Quest12003:JiaDingDestroy()
    local questNpcActor = self:GetQuestNpcActor(jiaDingData.Alias)
    if questNpcActor ~= nil then
        questNpcActor:Destroy(false)
    end
end

function Quest12003:Guard01Destroy()
    local questNpcActor = self:GetQuestNpcActor(guardData01.Alias)
    questNpcActor:EnableHeadCtrl(true)
    if questNpcActor ~= nil then
        questNpcActor:Destroy(false)
    end
end

function Quest12003:Guard02Destroy()
    local questNpcActor = self:GetQuestNpcActor(guardData02.Alias)
    questNpcActor:EnableHeadCtrl(true)
    if questNpcActor ~= nil then
        questNpcActor:Destroy(false)
    end
end

function Quest12003:Guard03Destroy()
    local questNpcActor = self:GetQuestNpcActor(guardData03.Alias)
    questNpcActor:EnableHeadCtrl(true)
    if questNpcActor ~= nil then
        questNpcActor:Destroy(false)
    end
end

function Quest12003:InvokeOnInteraction(arg1)
    print("10200 Invoke : ")
    if arg1 == 1 then
        print("Invoke 1")
        self:ShowQuestPictureDialog(256)
    end
end

function Quest12003:OnSubStart1200301(arg1)
    print("********1200301 start")
end

function Quest12003:OnSubFinish1200301(arg1)
    self:ActionSafeCall(self.PaimonVanish)
end

function Quest12003:OnSubStart1200302(arg1)
    print("********1200302 start")
end

function Quest12003:OnSubFinish1200302(arg1)
    self:ActionSafeCall(self.XingQiuDestroy)
    self:ActionSafeCall(self.PaimonVanish)
    globalActor:UnSpawn("XQbook")
end

function Quest12003:OnSubStart1200303(arg1)
    print("********1200303 start")
    actorMgr:CreateActorWithPos("Q1200303Trigger", "Actor/Gadget/Q1200303Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q1200207Trigger").pos, sceneData:GetDummyPoint(3, "Q1200207Trigger").rot, true, false)
    self:CreateQuestNpc(arg1, xingQiuData.ID)
    self:GetQuestNpcActor(xingQiuData.Alias):DoFreeStyle(1220)
end

function Quest12003:OnSubFinish1200303(arg1)
    print("********1200303 Finish")
end

function Quest12003:OnSubStart1200304(arg1)
    print("********1200304 start")
    self:CreateQuestNpc(arg1, xingQiuData.ID)
    self:GetQuestNpcActor(xingQiuData.Alias):DoFreeStyle(1220)
end

function Quest12003:OnSubFinish1200304(arg1)
    print("********1200304 Finish")
    self:ActionSafeCall(self.XingQiuDestroy)
    self:ActionSafeCall(self.WlyDestroy)
    self:ActionSafeCall(self.Guard01Destroy)
    self:ActionSafeCall(self.Guard02Destroy)
    self:ActionSafeCall(self.Guard03Destroy)
    self:ActionSafeCall(self.PaimonVanish)
    self:ActionSafeCall(self.CollectorsDestroy)
end

function Quest12003:OnSubStart1200305(arg1)
    actorMgr:CreateActorWithPos("Q1200310FailTrigger", "Actor/Gadget/Q1200310FailTrigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q12003Battle").pos, sceneData:GetDummyPoint(3, "Q12003Battle").rot, true, false)
end

function Quest12003:OnSubFinish1200305(arg1)
    self:NarratorOnlyTaskLegacy(Q12003ClientConfig.NarratorData, nil, "StoryCut")
end

function Quest12003:OnSubStart1200307(arg1)
    actorMgr:CreateActorWithPos("Q1200311FailTrigger", "Actor/Gadget/Q1200311FailTrigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q12003Battle").pos, sceneData:GetDummyPoint(3, "Q12003Battle").rot, true, false)
end

function Quest12003:OnSubFinish1200307(arg1) end

function Quest12003:OnSubStart1200308(arg1)
    local entityCreateTask = curtainUtils.CreateEntityCreateTask({xingQiuData.Alias})
    local actor = actorMgr:GetActor(Q12003ClientConfig.ActorAlias)
    self:CallDelay(2, function(arg1_2)
        actor:TransmitPlayerByQuestId(1200308, 1, nil, function(arg1_2)
            arg1_2:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
                arg1_2:CreateQuestNpc(arg1, xingQiuData.ID)
                arg1_2:RequestInteraction("Npc10045")
                print("SHOW BLACK SCREEN 12000")
            end, nil, entityCreateTask, "QUEST_Black_Q1200010")
        end)
    end)
end

function Quest12003:OnSubFinish1200308(arg1)
    self:ActionSafeCall(self.XingQiuDestroy)
    self:ActionSafeCall(self.PaimonVanish)
    self:ActionSafeCall(self.JiaDingDestroy)
    self:ActionSafeCall(self.CollectorsDestroy)
    self:ActionSafeCall(self.WlyDestroy)
end

function Quest12003:OnSubStart1200309(arg1) end

function Quest12003:OnSubFinish1200309(arg1)
    self:ActionSafeCall(self.PaimonVanish)
end

function Quest12003:OnSubStart1200310(arg1)
    print("********\230\136\152\230\150\151\229\164\177\232\180\165")
    local actor = actorMgr:GetActor(Q12003ClientConfig.ActorAlias)
    if actor ~= nil then
        actor:FinishQuest(false, nil)
    end
end

function Quest12003:OnSubFinish1200310(arg1) end

function Quest12003:OnSubStart1200311(arg1)
    print("********\230\136\152\230\150\151\229\164\177\232\180\165")
    local actor = actorMgr:GetActor(Q12003ClientConfig.ActorAlias)
    if actor ~= nil then
        actor:FinishQuest(false, nil)
    end
end

function Quest12003:OnSubFinish1200311(arg1) end
function Quest12003:Start() end
function Quest12003:OnDestroy() end
return Quest12003
