require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest11040 = class("Quest11040", QuestActorProxy)
Quest11040.defaultAlias = "Quest11040"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest11040:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest11040:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1104001"] = self.OnSubStart1104001,
        ["1104002"] = self.OnSubStart1104002,
        ["1104003"] = self.OnSubStart1104003,
        ["1104004"] = self.OnSubStart1104004
    }
end

function Quest11040:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1104001"] = self.OnSubFinish1104001,
        ["1104002"] = self.OnSubFinish1104002,
        ["1104003"] = self.OnSubFinish1104003,
        ["1104004"] = self.OnSubFinish1104004
    }
end

function Quest11040:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["1104001"] = self.OnSubFailed1104001,
        ["1104002"] = self.OnSubFailed1104002,
        ["1104003"] = self.OnSubFailed1104003,
        ["1104004"] = self.OnSubFailed1104004
    }
end

function Quest11040:Start()
    print("Start")
end

function Quest11040:OnDestroy()
    print("OnDestroy")
end

function Quest11040:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest11040:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest11040:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest11040:NarratorShatang()
    print("NarratorShatang")
    self:NarratorOnlyTaskByData(datas.NarratorShatang, nil, 11040)
end

function Quest11040:OnSubStart1104001(arg1)
    print("OnSubStart1104001")
    actorMgr:CreateActorWithPos(datas.Q1104001Trigger_.alias, datas.Q1104001Trigger_.script, datas.Q1104001Trigger_.id, 0, datas.Q1104001Trigger_.point.pos, datas.Q1104001Trigger_.point.rot, true, false, 3)
    self:ActionSafeCall(function(arg1)
        arg1:NotifyTo("Npc1587", 1, true)
    end)

    self:CreateQuestNpc(arg1, npcs.ShatangData.id, 1)
end

function Quest11040:OnSubFinish1104001(arg1)
    print("OnSubFinish1104001")
    self:RequestInteraction(npcs.ShatangData.alias)
end

function Quest11040:OnSubFailed1104001(arg1)
    print("OnSubFailed1104001")
end

function Quest11040:OnSubStart1104002(arg1)
    print("OnSubStart1104002")
    self:RequestInteraction(npcs.ShatangData.alias)
    self:NotifyTo("Npc1587", 1, true)
end

function Quest11040:OnSubFinish1104002(arg1)
    print("OnSubFinish1104002")
    self:ActionSafeCall(self.NarratorShatang)
    self:ActionSafeCall(function(arg1)
        local questNpcActor = arg1:GetQuestNpcActor("Paimon")
        if questNpcActor ~= nil then
            questNpcActor:DestroyWithDisappear(false)
        end
    end)
end

function Quest11040:OnSubFailed1104002(arg1)
    print("OnSubFailed1104002")
end

function Quest11040:OnSubStart1104003(arg1)
    print("OnSubStart1104003")
    actorMgr:CreateActorWithPos(datas.Q1104003Trigger_.alias, datas.Q1104003Trigger_.script, datas.Q1104003Trigger_.id, 0, datas.Q1104003Trigger_.point.pos, datas.Q1104003Trigger_.point.rot, true, false, 3)
    self:CreateQuestNpc(arg1, npcs.RosaliyaData.id, 1)
    self:ActionSafeCall(function(arg1)
        arg1:NotifyTo("Npc1587", 1, true)
    end)

    self:CallDelay(1, function(arg1)
        arg1:GetQuestNpcActor(npcs.RosaliyaData.alias):DoFreeStyle(1120)
    end)
end

function Quest11040:OnSubFinish1104003(arg1)
    print("OnSubFinish1104003")
    self:ActionSafeCall(function(arg1)
        arg1:NotifyTo("Npc1587", 0, true)
    end)

    self:SafeDestroyQuestNpc(npcs.ShatangData.alias, 3)
end

function Quest11040:OnSubFailed1104003(arg1)
    print("OnSubFailed1104003")
end

function Quest11040:OnSubStart1104004(arg1)
    print("OnSubStart1104004")
    self:RequestInteraction(npcs.RosaliyaData.alias)
end

function Quest11040:OnSubFinish1104004(arg1)
    print("OnSubFinish1104004")
    self:SafeDestroyQuestNpc("Barbara", 3)
    self:NarratorOnlyTaskByData(datas.NarratorRSLY, nil, 11040)
    self:ActionSafeCall(function(arg1)
        local questNpcActor = arg1:GetQuestNpcActor("Paimon")
        if questNpcActor ~= nil then
            questNpcActor:DestroyWithDisappear(false)
        end
    end)

    self:SafeDestroyQuestNpc(npcs.RosaliyaData.alias, 3)
end

function Quest11040:OnSubFailed1104004(arg1)
    print("OnSubFailed1104004")
end

return Quest11040
