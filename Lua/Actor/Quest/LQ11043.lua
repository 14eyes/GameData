require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest11043 = class("Quest11043", QuestActorProxy)
Quest11043.defaultAlias = "Quest11043"
local n = 0
local v = 0
q11043Cfg = require("Quest/Client/Q11043ClientConfig")
local mainID = q11043Cfg.MainID
local actorAlias = q11043Cfg.ActorAlias
local subIDs = q11043Cfg.SubIDs
local npcs = q11043Cfg.Npcs
local gadgets = q11043Cfg.Gadgets
local datas = q11043Cfg.Datas

function Quest11043:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1104301"] = self.OnSubStart1104301,
        ["1104302"] = self.OnSubStart1104302,
        ["1104303"] = self.OnSubStart1104303,
        ["1104304"] = self.OnSubStart1104304,
        ["1104305"] = self.OnSubStart1104305
    }
end

function Quest11043:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1104301"] = self.OnSubFinish1104301,
        ["1104302"] = self.OnSubFinish1104302,
        ["1104303"] = self.OnSubFinish1104303,
        ["1104304"] = self.OnSubFinish1104304
    }
end

function Quest11043:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["1104301"] = self.OnSubFailed1104301,
        ["1104302"] = self.OnSubFailed1104302,
        ["1104303"] = self.OnSubFailed1104303
    }
end

function Quest11043:Start()
    print("Start")
end

function Quest11043:OnDestroy()
    print("OnDestroy")
end

function Quest11043:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest11043:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest11043:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest11043:Narrator01()
    print("Narrator01")
    if n == 0 then
        self:NarratorOnlyTaskByData(datas.NarratorWithId)
        n = 1
    end
end

function Quest11043:Narrator02()
    print("Narrator02")
    if v == 0 then
        self:NarratorOnlyTaskByData(datas.NarratorWithId02)
        v = 1
    end
end

function Quest11043:StartCount()
    local n = 3
    self:CountDownUIStart(n, 10, 3)
    self:CallDelay(n + 4, self.CountDown)
end

function Quest11043:CountDown()
    local actor = actorMgr:GetActor(q11043Cfg.ActorAlias)
    if actor ~= nil then
        print("FlyingTest fail")
        actor:FinishQuestID(false, 1104305)
    end
end

function Quest11043:OnSubStart1104301(arg1)
    print("OnSubStart1104301")
    actorMgr:CreateActorWithPos(datas.Q1104301Trigger_.alias, datas.Q1104301Trigger_.script, datas.Q1104301Trigger_.id, 0, datas.Q1104301Trigger_.point.pos, datas.Q1104301Trigger_.point.rot, true, false, 3)
end

function Quest11043:OnSubFinish1104301(arg1)
    print("OnSubFinish1104301")
    self:SafeDestroyQuestNpc(npcs.Npc1018Data.alias, 3)
    self:ActionSafeCall(function(arg1)
        local questNpcActor = arg1:GetQuestNpcActor("Paimon")
        if questNpcActor ~= nil then
            questNpcActor:DestroyWithDisappear(false)
        end
    end)
end

function Quest11043:OnSubFailed1104301(arg1)
    print("OnSubFailed1104301")
end

function Quest11043:OnSubStart1104302(arg1)
    print("OnSubStart1104302")
    self:Narrator01()
    self:CallDelay(15, self.Narrator02)
end

function Quest11043:OnSubFinish1104302(arg1)
    print("OnSubFinish1104302")
end

function Quest11043:OnSubFailed1104302(arg1)
    print("OnSubFailed1104302")
    self:CallDelay(1, function(arg1)
        arg1:TransmitPlayerByQuestId(1104302, 1)
    end)
end

function Quest11043:OnSubStart1104303(arg1)
    print("OnSubStart1104303")
    self:CreateQuestNpc(arg1, npcs.Npc1018Data.id, 1)
end

function Quest11043:OnSubFinish1104303(arg1)
    print("OnSubFinish1104303")
    self:SafeDestroyQuestNpc(npcs.Npc1018Data.alias, 3)
    self:ActionSafeCall(function(arg1)
        local questNpcActor = arg1:GetQuestNpcActor("Paimon")
        if questNpcActor ~= nil then
            questNpcActor:DestroyWithDisappear(false)
        end
    end)
end

function Quest11043:OnSubFailed1104303(arg1)
    print("OnSubFailed1104303")
end

function Quest11043:OnSubStart1104304(arg1)
    print("OnSubStart1104304")
    self:CreateQuestNpc(arg1, npcs.Npc1018Data.id, 1)
end

function Quest11043:OnSubFinish1104304(arg1)
    print("OnSubFinish1104304")
    self:CallDelay(2.5, function(arg1)
        arg1:SafeDestroyQuestNpc(npcs.Npc1018Data.alias, 3)
    end)

    self:ActionSafeCall(function(arg1)
        local questNpcActor = arg1:GetQuestNpcActor("Paimon")
        if questNpcActor ~= nil then
            questNpcActor:DestroyWithDisappear(false)
        end
    end)
end

function Quest11043:OnSubStart1104305(arg1)
    print("OnSubStart1104305")
    self:CallDelay(1, function(arg1)
        arg1:EnterSceneLookCamera(sceneData:GetDummyPoint(3, "AlbedoFlyMark").pos, 2.5, 2, true, true)
    end)

    globalActor:EnablePlayerInput(false)
    self:CallDelay(3, function()
        globalActor:EnablePlayerInput(true)
    end)

    self:ActionSafeCall(self.CountDown)
end

function Quest11043:OnSubFinish1104305(arg1)
    print("OnSubFinish1104305")
    self:CountDownUITerminate()
end

return Quest11043
