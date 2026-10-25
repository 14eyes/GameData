require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest480 = class("Quest480", QuestActorProxy)
Quest480.defaultAlias = "Quest480"
q480Cfg = require("Quest/Client/Q480ClientConfig")
local subIDs = q480Cfg.SubIDs
local amborData = q480Cfg.AmborData
local windData = q480Cfg.WindData

function Quest480:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["48005"] = self.OnSubStart48005
    self.subStartHandlers["48001"] = self.OnSubStart48001
    self.subStartHandlers["48002"] = self.OnSubStart48002
    self.subStartHandlers["48006"] = self.OnSubStart48006
    self.subStartHandlers["48003"] = self.OnSubStart48003
    self.subStartHandlers["48004"] = self.OnSubStart48004
end

function Quest480:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["48001"] = self.OnSubFinish48001
    self.subFinishHandlers["48002"] = self.OnSubFinish48002
    self.subFinishHandlers["48003"] = self.OnSubFinish48003
    self.subFinishHandlers["48004"] = self.OnSubFinish48004
end

function Quest480:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
    self.subFailedHandlers["48002"] = self.OnSubFailed48002
end

function Quest480:StartCount()
    local n = 60
    self:CountDownUIStart(n, 10, 3)
    self:CallDelay(n + 4, self.CountDown)
end

function Quest480:CountDown()
    local actor = actorMgr:GetActor(q480Cfg.ActorAlias)
    if actor ~= nil then
        print("FlyingTest fail")
        actor:FinishQuestID(true, 48002)
    end
end

function Quest480:OnSubStart48005(arg1)
    print("48005 start:...")
    actorMgr:CreateActorWithPos("Q480Trigger", "Actor/Gadget/Q480Trigger", 70900002, 0, amborData.bornPos, amborData.bornDir, true, false)
end

function Quest480:OnSubStart48001(arg1)
    print("48001 start:...")
    globalActor:ChangeWeather("BigWorld/Weather_ClearSky")
    self:CreateQuestNpc(arg1, amborData.AmborID)
end

function Quest480:OnSubStart48002(arg1)
    print("48002 start:...")
    globalActor:ChangeWeather("BigWorld/Weather_ClearSky")
    local tbl = {x = 0, y = 0, z = 0}
    windData.Pos1.y = sceneData:GetDummyPoint(3, "Q48002Wind101").pos.y + 1.5
    windData.Pos2.x = 1883.17
    windData.Pos2.y = 233.1
    windData.Pos2.z = -1274.9
    windData.Pos4.x = 1864.07
    windData.Pos4.y = 242.7
    windData.Pos4.z = -1268.39
end

function Quest480:OnSubStart48006(arg1)
    print("OnFinished 48006")
    self:ActionSafeCall(function(arg1)
        arg1:CountDownUIStart(0, 0, 3)
        arg1:CallDelay(3, function()
            actorUtils.FinishQuestID(false, 48006)
        end)
    end)
end

function Quest480:OnSubStart48003(arg1)
    print("48003 start:...")
    self:CountDownUITerminate()
    self:CountNumUITerminate()
    self:CreateQuestNpc(arg1, amborData.AmborID)
end

function Quest480:OnSubStart48004(arg1)
    print("48004 start:...")
    self:CountDownUITerminate()
    self:CreateQuestNpc(arg1, amborData.AmborID)
end

function Quest480:OnSubFinish48001(arg1)
    print("OnFinished 48001")
    self:ActionSafeCall(function(arg1)
        local questNpcActor = arg1:GetQuestNpcActor(amborData.Ambor)
        if questNpcActor ~= nil then
            questNpcActor:Destroy(false)
        end

        local v = arg1:GetQuestNpcActor("Paimon")
        if v ~= nil then
            v:DestroyWithDisappear(false)
        end
    end)
end

function Quest480:OnSubFinish48002(arg1)
    print("OnFinished 48002")
end

function Quest480:OnSubFailed48002(arg1)
    print("OnFailed 48002")
    self:CallDelay(2, function(arg1)
        arg1:TransmitPlayerByQuestId(48002, 1)
    end)
end

function Quest480:OnSubFinish48003(arg1)
    print("OnFinished 48003")
    self:ActionSafeCall(self.DestroyNPC)
end

function Quest480:OnSubFinish48004(arg1)
    print("OnFinished 48004")
    self:ActionSafeCall(self.DestroyNPC)
    self:ActionSafeCall(function(arg1)
        arg1:CallDelay(1.5, function(arg1)
            arg1:NarratorOnlyTaskLegacy(q480Cfg.FinishNarrator, nil, "Tag")
        end)
    end)

    for i = 1, #q480Cfg.Flyline8 do
        self:UnSpawn("Acc8" .. tostring(i))
    end
end

function Quest480:DestroyNPC(arg1)
    print("OnFinished 48004")
    self:ShowBlackScreen(0.5, 1.0, 0.5, function(arg1)
        local questNpcActor = arg1:GetQuestNpcActor(amborData.Ambor)
        if questNpcActor ~= nil then
            questNpcActor:Destroy(false)
        end

        local v = arg1:GetQuestNpcActor("Paimon")
        if v ~= nil then
            v:DestroyWithDisappear(false)
        end
    end)
end

function Quest480:Start() end
function Quest480:OnDestroy() end
return Quest480
