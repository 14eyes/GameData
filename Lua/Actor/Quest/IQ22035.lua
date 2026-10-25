require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest22035 = class("Quest22035", QuestActorProxy)
Quest22035.defaultAlias = "Quest22035"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest22035:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest22035:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["2203501"] = self.OnSubStart2203501,
        ["2203502"] = self.OnSubStart2203502,
        ["2203503"] = self.OnSubStart2203503,
        ["2203508"] = self.OnSubStart2203508,
        ["2203504"] = self.OnSubStart2203504,
        ["2203505"] = self.OnSubStart2203505,
        ["2203509"] = self.OnSubStart2203509,
        ["2203506"] = self.OnSubStart2203506,
        ["2203507"] = self.OnSubStart2203507,
        ["2203510"] = self.OnSubStart2203510
    }
end

function Quest22035:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["2203501"] = self.OnSubFinish2203501,
        ["2203502"] = self.OnSubFinish2203502,
        ["2203503"] = self.OnSubFinish2203503,
        ["2203508"] = self.OnSubFinish2203508,
        ["2203504"] = self.OnSubFinish2203504,
        ["2203505"] = self.OnSubFinish2203505,
        ["2203509"] = self.OnSubFinish2203509,
        ["2203506"] = self.OnSubFinish2203506,
        ["2203507"] = self.OnSubFinish2203507,
        ["2203510"] = self.OnSubFinish2203510
    }
end

function Quest22035:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["2203501"] = self.OnSubFailed2203501,
        ["2203502"] = self.OnSubFailed2203502,
        ["2203503"] = self.OnSubFailed2203503,
        ["2203508"] = self.OnSubFailed2203508,
        ["2203504"] = self.OnSubFailed2203504,
        ["2203505"] = self.OnSubFailed2203505,
        ["2203509"] = self.OnSubFailed2203509,
        ["2203506"] = self.OnSubFailed2203506,
        ["2203507"] = self.OnSubFailed2203507,
        ["2203510"] = self.OnSubFailed2203510
    }
end

function Quest22035:Start()
    print("Start")
end

function Quest22035:OnDestroy()
    print("OnDestroy")
end

function Quest22035:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest22035:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest22035:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc3042Data.alias, 3)
end

function Quest22035:OnSubStart2203501(arg1)
    print("OnSubStart2203501")
    self:CreateQuestNpc(arg1, npcs.Npc3042Data.id, 1)
end

function Quest22035:OnSubFinish2203501(arg1)
    print("OnSubFinish2203501")
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1)
        arg1:DestroyQuestNpcActor(npcs.Npc3042Data.alias, 3)
        arg1:NotifyTo(npcs.Npc3042Data.alias, 1, true)
    end, nil, nil, "")
end

function Quest22035:OnSubFailed2203501(arg1)
    print("OnSubFailed2203501")
end

function Quest22035:OnSubStart2203502(arg1)
    print("OnSubStart2203502")
    self:NotifyTo(npcs.Npc3042Data.alias, 1, true)
end

function Quest22035:OnSubFinish2203502(arg1)
    print("OnSubFinish2203502")
    self:NarratorOnlyTaskByData(datas.Kaiche, nil, 22035)
end

function Quest22035:OnSubFailed2203502(arg1)
    print("OnSubFailed2203502")
end

function Quest22035:OnSubStart2203503(arg1)
    print("OnSubStart2203503")
end

function Quest22035:OnSubFinish2203503(arg1)
    print("OnSubFinish2203503")
end

function Quest22035:OnSubFailed2203503(arg1)
    print("OnSubFailed2203503")
end

function Quest22035:OnSubStart2203508(arg1)
    print("OnSubStart2203508")
    self:CallDelay(2, function(arg1_2)
        arg1_2:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
            arg1_2:CreateQuestNpc(arg1, npcs.Npc3042Data.id, 0)
            arg1_2:RequestInteraction(npcs.Npc3042Data.alias)
        end, nil, nil, "")
    end)
end

function Quest22035:OnSubFinish2203508(arg1)
    print("OnSubFinish2203508")
    self:ActionSafeCall(function(arg1)
        arg1:ShowBlackScreen(0.5, 1, 0.5, function(arg1)
            arg1:DestroyQuestNpcActor(npcs.Npc3042Data.alias, 3)
        end, nil, nil, "")
    end)
end

function Quest22035:OnSubFailed2203508(arg1)
    print("OnSubFailed2203508")
end

function Quest22035:OnSubStart2203504(arg1)
    print("OnSubStart2203504")
    self:NotifyTo(npcs.Npc3042Data.alias, 1, true)
end

function Quest22035:OnSubFinish2203504(arg1)
    print("OnSubFinish2203504")
    self:NarratorOnlyTaskByData(datas.Kaiche, nil, 22035)
end

function Quest22035:OnSubFailed2203504(arg1)
    print("OnSubFailed2203504")
end

function Quest22035:OnSubStart2203505(arg1)
    print("OnSubStart2203505")
end

function Quest22035:OnSubFinish2203505(arg1)
    print("OnSubFinish2203505")
end

function Quest22035:OnSubFailed2203505(arg1)
    print("OnSubFailed2203505")
end

function Quest22035:OnSubStart2203509(arg1)
    print("OnSubStart2203509")
    self:CallDelay(2, function(arg1_2)
        arg1_2:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
            arg1_2:CreateQuestNpc(arg1, npcs.Npc3042Data.id, 0)
            arg1_2:RequestInteraction(npcs.Npc3042Data.alias)
        end, nil, nil, "")
    end)
end

function Quest22035:OnSubFinish2203509(arg1)
    print("OnSubFinish2203509")
    self:ActionSafeCall(function(arg1)
        arg1:ShowBlackScreen(0.5, 1, 0.5, function(arg1)
            arg1:DestroyQuestNpcActor(npcs.Npc3042Data.alias, 3)
        end, nil, nil, "")
    end)
end

function Quest22035:OnSubFailed2203509(arg1)
    print("OnSubFailed2203509")
end

function Quest22035:OnSubStart2203506(arg1)
    print("OnSubStart2203506")
    self:NotifyTo(npcs.Npc3042Data.alias, 1, true)
end

function Quest22035:OnSubFinish2203506(arg1)
    print("OnSubFinish2203506")
    self:NarratorOnlyTaskByData(datas.Kaiche, nil, 22035)
end

function Quest22035:OnSubFailed2203506(arg1)
    print("OnSubFailed2203506")
end

function Quest22035:OnSubStart2203507(arg1)
    print("OnSubStart2203507")
end

function Quest22035:OnSubFinish2203507(arg1)
    print("OnSubFinish2203507")
end

function Quest22035:OnSubFailed2203507(arg1)
    print("OnSubFailed2203507")
end

function Quest22035:OnSubStart2203510(arg1)
    print("OnSubStart2203510")
    self:CallDelay(2, function(arg1_2)
        arg1_2:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
            arg1_2:CreateQuestNpc(arg1, npcs.Npc3042Data.id, 0)
            arg1_2:RequestInteraction(npcs.Npc3042Data.alias)
        end, nil, nil, "")
    end)
end

function Quest22035:OnSubFinish2203510(arg1)
    print("OnSubFinish2203510")
    self:ActionSafeCall(function(arg1)
        arg1:ShowBlackScreen(0.5, 1, 0.5, function(arg1)
            arg1:DestroyQuestNpcActor(npcs.Npc3042Data.alias, 3)
        end, nil, nil, "")
    end)
end

function Quest22035:OnSubFailed2203510(arg1)
    print("OnSubFailed2203510")
end

return Quest22035
