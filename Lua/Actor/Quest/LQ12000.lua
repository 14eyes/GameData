require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest12000 = class("Quest12000", QuestActorProxy)
Quest12000.defaultAlias = "Quest12000"
local Q12000ClientConfig = require("Quest/Client/Q12000ClientConfig")

local subIDs = Q12000ClientConfig.SubIDs
local paimonData = Q12000ClientConfig.PaimonData
local xingQiuData = Q12000ClientConfig.XingQiuData
local chData = Q12000ClientConfig.CHData
local guardData01 = Q12000ClientConfig.GuardData01
local guardData02 = Q12000ClientConfig.GuardData02
local guardData03 = Q12000ClientConfig.GuardData03

function Quest12000:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["1200001"] = self.OnSubStart1200001
    self.subStartHandlers["1200002"] = self.OnSubStart1200002
    self.subStartHandlers["1200003"] = self.OnSubStart1200003
    self.subStartHandlers["1200004"] = self.OnSubStart1200004
    self.subStartHandlers["1200005"] = self.OnSubStart1200005
    self.subStartHandlers["1200006"] = self.OnSubStart1200006
    self.subStartHandlers["1200007"] = self.OnSubStart1200007
    self.subStartHandlers["1200008"] = self.OnSubStart1200008
    self.subStartHandlers["1200009"] = self.OnSubStart1200009
    self.subStartHandlers["1200010"] = self.OnSubStart1200010
    self.subStartHandlers["1200011"] = self.OnSubStart1200011
end

function Quest12000:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["1200001"] = self.OnSubFinish1200001
    self.subFinishHandlers["1200002"] = self.OnSubFinish1200002
    self.subFinishHandlers["1200003"] = self.OnSubFinish1200003
    self.subFinishHandlers["1200004"] = self.OnSubFinish1200004
    self.subFinishHandlers["1200005"] = self.OnSubFinish1200005
    self.subFinishHandlers["1200006"] = self.OnSubFinish1200006
    self.subFinishHandlers["1200007"] = self.OnSubFinish1200007
    self.subFinishHandlers["1200008"] = self.OnSubFinish1200008
    self.subFinishHandlers["1200009"] = self.OnSubFinish1200009
    self.subFinishHandlers["1200010"] = self.OnSubFinish1200010
    self.subFinishHandlers["1200011"] = self.OnSubFinish1200011
end

function Quest12000:PaimonVanish()
    print("paimon vanish")
    local questNpcActor = self:GetQuestNpcActor(paimonData.Alias)
    questNpcActor:AirModeOff()
    if questNpcActor ~= nil then
        questNpcActor:DestroyWithDisappear(false)
    end
end

function Quest12000:XingQiuDestroy()
    local questNpcActor = self:GetQuestNpcActor(xingQiuData.Alias)
    if questNpcActor ~= nil then
        questNpcActor:Destroy(false)
    end
end

function Quest12000:CHDestroy()
    local questNpcActor = self:GetQuestNpcActor(chData.Alias)
    if questNpcActor ~= nil then
        questNpcActor:Destroy(false)
    end
end

function Quest12000:Guard01Destroy()
    local questNpcActor = self:GetQuestNpcActor(guardData01.Alias)
    if questNpcActor ~= nil then
        questNpcActor:Destroy(false)
    end
end

function Quest12000:Guard02Destroy()
    local questNpcActor = self:GetQuestNpcActor(guardData02.Alias)
    if questNpcActor ~= nil then
        questNpcActor:Destroy(false)
    end
end

function Quest12000:Guard03Destroy()
    local questNpcActor = self:GetQuestNpcActor(guardData03.Alias)
    if questNpcActor ~= nil then
        questNpcActor:Destroy(false)
    end
end

function Quest12000:setbook()
    local tbl = {x = 1717.114, y = 247.7695, z = 610.8841}
    local v = {x = 116.42, y = -21.39999, z = -93}
    self:SpawnGadgetByIdWithPos(1200010, 70710060, 1, tbl, v)
    print("***********set book ***********")
end

function Quest12000:OnSubStart1200001(arg1)
    print("********1200001 start")
    self:CreateQuestNpc(arg1, xingQiuData.ID)
    actorMgr:CreateActorWithPos("Q1200001trigger", "Actor/Gadget/Q1200001Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q1200001trigger").pos, sceneData:GetDummyPoint(3, "Q1200001trigger").rot, true, false)
end

function Quest12000:OnSubFinish1200001(arg1)
    print("********1200001 finish")
    self:NarratorOnlyTaskLegacy(Q12000ClientConfig.NarratorData1, nil, "StoryCut")
end

function Quest12000:OnSubStart1200002(arg1)
    print("********1200002 start")
end

function Quest12000:OnSubFinish1200002(arg1) end

function Quest12000:OnSubStart1200003(arg1)
    print("********1200003 start")
    actorMgr:CreateActorWithPos("Q1200003trigger", "Actor/Gadget/Q1200003Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q1200003trigger").pos, sceneData:GetDummyPoint(3, "Q1200003trigger").rot, true, false)
end

function Quest12000:OnSubFinish1200003(arg1)
    print("********1200003 Finish")
    self:ActionSafeCall(self.PaimonVanish)
end

function Quest12000:OnSubStart1200004(arg1)
    print("********1200004 start")
    actorMgr:CreateActorWithPos("Q1200004Trigger", "Actor/Gadget/Q1200004Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q1200004Trigger").pos, sceneData:GetDummyPoint(3, "Q1200004Trigger").rot, true, false)
end

function Quest12000:OnSubFinish1200004(arg1)
    print("********1200004 Finish")
    self:SafeDestroyQuestNpc(xingQiuData.Alias, 3)
end

function Quest12000:OnSubStart1200005(arg1) end

function Quest12000:OnSubFinish1200005(arg1)
    self:ShowBlackScreen(0.3, 0.5, 0.5, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, xingQiuData.ID, 0)
        arg1_2:GetQuestNpcActor(xingQiuData.Alias):DoFreeStyle(1330)
        arg1_2:ActionSafeCall(arg1_2.CHDestroy)
        arg1_2:ActionSafeCall(arg1_2.PaimonVanish)
    end)
end

function Quest12000:OnSubStart1200006(arg1)
    self:NotifyTo("Npc2307", NpcUtil.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc2304", NpcUtil.NpcEventType.HIDESELF, true)
    self:CreateQuestNpc(arg1, xingQiuData.ID)
    self:GetQuestNpcActor(xingQiuData.Alias):DoFreeStyle(1330)
end

function Quest12000:OnSubFinish1200006(arg1)
    self:ActionSafeCall(self.XingQiuDestroy)
    self:ActionSafeCall(self.CHDestroy)
    self:ActionSafeCall(self.PaimonVanish)
    self:ActionSafeCall(self.Guard01Destroy)
    self:ActionSafeCall(self.Guard02Destroy)
    self:ActionSafeCall(self.Guard03Destroy)
end

function Quest12000:OnSubStart1200007(arg1) end
function Quest12000:OnSubFinish1200007(arg1) end
function Quest12000:OnSubStart1200008(arg1) end

function Quest12000:OnSubFinish1200008(arg1)
    self:ActionSafeCall(self.XingQiuDestroy)
    self:ActionSafeCall(self.CHDestroy)
    self:ActionSafeCall(self.PaimonVanish)
    self:ActionSafeCall(self.Guard01Destroy)
    self:ActionSafeCall(self.Guard02Destroy)
    self:ActionSafeCall(self.Guard03Destroy)
end

function Quest12000:OnSubStart1200011(arg1)
    print("********\230\136\152\230\150\151\229\164\177\232\180\165")
    local actor = actorMgr:GetActor(Q12000ClientConfig.ActorAlias)
    if actor ~= nil then
        actor:FinishQuest(false, nil)
    end
end

function Quest12000:OnSubFinish1200011(arg1)
    print("***************get quest success")
end

function Quest12000:OnSubStart1200009(arg1)
    actorMgr:CreateActorWithPos("Q1200011FailTrigger", "Actor/Gadget/Q1200011FailTrigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q1200006Born").pos, sceneData:GetDummyPoint(3, "Q1200006Born").rot, true, false)
    self:ActionSafeCall(self.XingQiuDestroy)
    self:ActionSafeCall(self.CHDestroy)
    self:ActionSafeCall(self.PaimonVanish)
    self:ActionSafeCall(self.Guard01Destroy)
    self:ActionSafeCall(self.Guard02Destroy)
    self:ActionSafeCall(self.Guard03Destroy)
end

function Quest12000:OnSubFinish1200009(arg1) end

function Quest12000:OnSubStart1200010(arg1)
    local entityCreateTask = curtainUtils.CreateEntityCreateTask({xingQiuData.Alias})
    local actor = actorMgr:GetActor(Q12000ClientConfig.ActorAlias)
    self:CallDelay(2, function(arg1_2)
        actor:TransmitPlayerByQuestId(1200010, 1, nil, function(arg1_2)
            arg1_2:ShowBlackScreen(0.5, 0.5, 0.5, function(arg1_2)
                arg1_2:CreateQuestNpc(arg1, xingQiuData.ID)
                arg1_2:RequestInteraction("Npc10045")
                print("SHOW BLACK SCREEN 12000")
            end, nil, entityCreateTask, "QUEST_Black_Q1200010")
        end)
    end)
end

function Quest12000:OnSubFinish1200010(arg1)
    self:ShowBlackScreen(0.5, 0.5, 0.5, function(arg1)
        arg1:ActionSafeCall(arg1.CHDestroy)
        arg1:ActionSafeCall(arg1.PaimonVanish)
        arg1:ActionSafeCall(arg1.XingQiuDestroy)
        arg1:NotifyTo("Npc2307", NpcUtil.NpcEventType.STARTDAILY, true)
        arg1:NotifyTo("Npc2304", NpcUtil.NpcEventType.STARTDAILY, true)
    end, nil, task, "QUEST_Black_Q1200010")
end

function Quest12000:Start() end
function Quest12000:OnDestroy() end
return Quest12000
