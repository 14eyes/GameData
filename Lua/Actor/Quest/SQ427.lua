require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest427 = class("Quest427", QuestActorProxy)
Quest427.defaultAlias = "Quest427"
q427Cfg = require("Quest/Client/Q427ClientConfig")
local subIDs = q427Cfg.SubIDs
local amborData = q427Cfg.AmborData
local soldier1Data = q427Cfg.Soldier1Data
local soldier2Data = q427Cfg.Soldier2Data
local windData = q427Cfg.WindData

function Quest427:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["42709"] = self.OnSubStart42709
    self.subStartHandlers["42701"] = self.OnSubStart42701
    self.subStartHandlers["42702"] = self.OnSubStart42702
    self.subStartHandlers["42710"] = self.OnSubStart42710
    self.subStartHandlers["42703"] = self.OnSubStart42703
    self.subStartHandlers["42704"] = self.OnSubStart42704
    self.subStartHandlers["42705"] = self.OnSubStart42705
    self.subStartHandlers["42711"] = self.OnSubStart42711
    self.subStartHandlers["42706"] = self.OnSubStart42706
    self.subStartHandlers["42707"] = self.OnSubStart42707
    self.subStartHandlers["42708"] = self.OnSubStart42708
end

function Quest427:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["42701"] = self.OnSubFinish42701
    self.subFinishHandlers["42702"] = self.OnSubFinish42702
    self.subFinishHandlers["42703"] = self.OnSubFinish42703
    self.subFinishHandlers["42704"] = self.OnSubFinish42704
    self.subFinishHandlers["42705"] = self.OnSubFinish42705
    self.subFinishHandlers["42706"] = self.OnSubFinish42706
    self.subFinishHandlers["42707"] = self.OnSubFinish42707
    self.subFinishHandlers["42708"] = self.OnSubFinish42708
    self.subFinishHandlers["42710"] = self.OnSubFinish42710
end

function Quest427:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
    self.subFailedHandlers["42702"] = self.OnSubFailed42702
    self.subFailedHandlers["42705"] = self.OnSubFailed42705
end

function Quest427:StartCount()
    local n = 60
    self:CountDownUIStart(n, 10, 3)
    self:CallDelay(n + 4, self.CountDown)
end

function Quest427:CountDown()
    local actor = actorMgr:GetActor(q427Cfg.ActorAlias)
    if actor ~= nil then
        print("FlyingTest fail")
        actor:FinishQuestID(true, 42702)
    end
end

function Quest427:StartCount2()
    local n = 60
    self:CountDownUIStart(n, 10, 3)
    self:CallDelay(n + 4, self.CountDown2)
end

function Quest427:CountDown2()
    local actor = actorMgr:GetActor(q427Cfg.ActorAlias)
    if actor ~= nil then
        print("FlyingTest fail02")
        actor:FinishQuestID(true, 42705)
    end
end

function Quest427:OnSubStart42709(arg1)
    print("42709 start:...")
    actorMgr:CreateActorWithPos("Q42709Trigger", "Actor/Gadget/Q42709Trigger", 70900002, 0, amborData.bornPos, amborData.bornDir, true, false)
end

function Quest427:OnSubStart42701(arg1)
    print("42701 start:...")
    self:CreateQuestNpc(arg1, amborData.AmborID, 1)
end

function Quest427:OnSubStart42702(arg1)
    print("42702 start:...")
    local tbl = {x = 0, y = 0, z = 0}
end

function Quest427:OnSubStart42710(arg1)
    print("OnStart 42710")
    self:ActionSafeCall(function(arg1)
        arg1:CountDownUIStart(0, 0, 3)
        arg1:CallDelay(3, function()
            actorUtils.FinishQuestID(false, 42710)
        end)
    end)
end

function Quest427:OnSubStart42703(arg1)
    print("42703 start:...")
    self:CountDownUITerminate()
    self:UnCallFunc(self.CountDown)
    self:CountNumUITerminate()
    self:ForceFlushRemove()
    self:CreateQuestNpc(arg1, amborData.AmborID, 1)
end

function Quest427:AdvanceQuest()
    local actor = actorMgr:GetActor(q427Cfg.ActorAlias)
    if actor ~= nil then
        actor:FinishQuest(false, nil)
    end
end

function Quest427:OnSubStart42704(arg1)
    print("42704 start:...")
    self:CreateQuestNpc(arg1, amborData.AmborID)
end

function Quest427:OnSubStart42705(arg1)
    print("42705 start:...")
    local tbl = {x = 0, y = 0, z = 0}
end

function Quest427:OnSubStart42711(arg1)
    print("OnStart 42711")
    self:ActionSafeCall(function(arg1)
        arg1:CountDownUIStart(0, 0, 3)
        arg1:CallDelay(3, function()
            actorUtils.FinishQuestID(false, 42711)
        end)
    end)
end

function Quest427:OnSubStart42706(arg1)
    print("42706 start:...")
    self:CountDownUITerminate()
    self:UnCallFunc(self.CountDown)
    self:CountNumUITerminate()
    self:ForceFlushRemove()
    self:CreateQuestNpc(arg1, amborData.AmborID)
end

function Quest427:OnSubStart42707(arg1)
    print("42707 start:...")
    self:CountDownUITerminate()
    self:UnCallFunc(self.CountDown)
    self:ForceFlushRemove()
    actorMgr:CreateActorWithPos("Q427Trigger", "Actor/Gadget/Q427Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q427Land").pos, sceneData:GetDummyPoint(3, "Q427Land").rot, true, false)
end

function Quest427:OnSubStart42708(arg1)
    print("42708 start:...")
    self:ShowBlackScreen(0.5, 1.0, 0.5, self.CreateSoldier)
end

function Quest427:CreateSoldier()
    self:CreateQuestNpcById(42708, soldier2Data.SoldierID)
    local actor = actorMgr:GetActor(q427Cfg.ActorAlias)
    self:CreateQuestNpc(actor, amborData.AmborID)
    print("Soldier Born")
    self:RequestInteraction(soldier2Data.Soldier)
end

function Quest427:Interaction()
    self:RequestInteraction(soldier2Data.Soldier)
    print("Black Callback NOW")
end

function Quest427:OnSubFinish42701(arg1)
    print("OnFinished 42701")
    self:ActionSafeCall(function(arg1)
        local questNpcActor = arg1:GetQuestNpcActor(amborData.Ambor)
        arg1:CallDelay(1.5, function(arg1)
            questNpcActor:Destroy(false)
        end)

        arg1:EnterSceneLookCamera(sceneData:GetDummyPoint(3, "Q42701Look").pos, 2, 3, true)
    end)
end

function Quest427:OnSubFinish42702(arg1)
    print("OnFinished 42702")
    self:UnCallFunc(self.CountDown)
    self:CountDownUITerminate()
end

function Quest427:OnSubFinish42703(arg1)
    print("OnFinished 42703")
    self:ActionSafeCall(function(arg1)
        local questNpcActor = arg1:GetQuestNpcActor(amborData.Ambor)
        arg1:CallDelay(3, function(arg1)
            questNpcActor:Destroy(false)
        end)

        arg1:CallDelay(2, function(arg1)
            arg1:EnterSceneLookCamera(sceneData:GetDummyPoint(3, "Q42701Look").pos, 1, 3, true)
        end)
    end)
end

function Quest427:OnSubFinish42704(arg1)
    print("OnFinished 42704")
    local windData = q427Cfg.WindData
    self:UnSpawn(windData.Wind1, 3)
    self:UnSpawn(windData.Wind2, 3)
    self:UnSpawn(windData.Wind3, 3)
    self:UnSpawn(windData.Wind4, 3)
    self:ActionSafeCall(function(arg1)
        local questNpcActor = arg1:GetQuestNpcActor(amborData.Ambor)
        if questNpcActor ~= nil then
            arg1:CallDelay(1, function(arg1)
                questNpcActor:Destroy(false)
            end)
        end

        arg1:EnterSceneLookCamera(sceneData:GetDummyPoint(3, "Md_Fly_301").pos, 4.5, 3, true, true)
    end)
end

function Quest427:OnSubFinish42705(arg1)
    print("OnFinished 42705")
    self:UnCallFunc(self.CountDown)
    self:CountDownUITerminate()
    self:CallDelay(0.5, function(arg1)
        arg1:NarratorOnlyTaskByData(q427Cfg.ArrNarratorWithList, nil)
    end)
end

function Quest427:OnSubFinish42706(arg1)
    print("OnFinished 42706")
    self:ActionSafeCall(function(arg1)
        local questNpcActor = arg1:GetQuestNpcActor(amborData.Ambor)
        if questNpcActor ~= nil then
            arg1:CallDelay(1, function(arg1)
                questNpcActor:Destroy(false)
            end)
        end

        arg1:EnterSceneLookCamera(sceneData:GetDummyPoint(3, "Md_Fly_301").pos, 4.5, 3, true, true)
    end)
end

function Quest427:OnSubFinish42707(arg1)
    print("OnFinished 42707")
end

function Quest427:OnSubFinish42708(arg1)
    print("OnFinished 42708")
    self:ActionSafeCall(function(arg1)
        local questNpcActor = arg1:GetQuestNpcActor(amborData.Ambor)
        if questNpcActor ~= nil then
            questNpcActor:Destroy(false)
        end

        local v = arg1:GetQuestNpcActor("Paimon")
        if v ~= nil then
            v:DestroyWithDisappear(false)
        end

        local questNpcActor2 = arg1:GetQuestNpcActor(soldier2Data.Soldier)
        if questNpcActor2 ~= nil then
            questNpcActor2:Destroy(false)
        end
    end)
end

function Quest427:OnSubFinish42710(arg1)
    print("OnFinished 42710")
end

function Quest427:InvokeOnInteraction(arg1)
    if arg1 == 1 then
        local questNpcActor = self:GetQuestNpcActor(amborData.Ambor)
        if questNpcActor ~= nil then
            questNpcActor:ClearFollowTask()
            questNpcActor:WalkToTask(amborData.appearPos, function(arg1, arg2)
                arg1:Standby()
                arg1:TurnTo(M.Euler2DirXZ(amborData.appearDir))
            end)
        end
    end
end

function Quest427:OnSubFailed42702(arg1)
    print("OnFailed 42702")
    self:CallDelay(2, function(arg1)
        arg1:TransmitPlayerByQuestId(42702, 1)
    end)
end

function Quest427:OnSubFailed42705(arg1)
    print("OnFailed 42705")
    self:CallDelay(2, function(arg1)
        arg1:TransmitPlayerByQuestId(42705, 1)
    end)
end

function Quest427:Start() end
function Quest427:OnDestroy() end
return Quest427
