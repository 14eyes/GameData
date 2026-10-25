require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest22034 = class("Quest22034", QuestActorProxy)
Quest22034.defaultAlias = "Quest22034"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest22034:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest22034:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["2203401"] = self.OnSubStart2203401,
        ["2203402"] = self.OnSubStart2203402,
        ["2203403"] = self.OnSubStart2203403,
        ["2203408"] = self.OnSubStart2203408,
        ["2203404"] = self.OnSubStart2203404,
        ["2203405"] = self.OnSubStart2203405,
        ["2203409"] = self.OnSubStart2203409,
        ["2203406"] = self.OnSubStart2203406,
        ["2203407"] = self.OnSubStart2203407,
        ["2203410"] = self.OnSubStart2203410
    }
end

function Quest22034:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["2203401"] = self.OnSubFinish2203401,
        ["2203402"] = self.OnSubFinish2203402,
        ["2203403"] = self.OnSubFinish2203403,
        ["2203408"] = self.OnSubFinish2203408,
        ["2203404"] = self.OnSubFinish2203404,
        ["2203405"] = self.OnSubFinish2203405,
        ["2203409"] = self.OnSubFinish2203409,
        ["2203406"] = self.OnSubFinish2203406,
        ["2203407"] = self.OnSubFinish2203407,
        ["2203410"] = self.OnSubFinish2203410
    }
end

function Quest22034:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["2203401"] = self.OnSubFailed2203401,
        ["2203402"] = self.OnSubFailed2203402,
        ["2203403"] = self.OnSubFailed2203403,
        ["2203408"] = self.OnSubFailed2203408,
        ["2203404"] = self.OnSubFailed2203404,
        ["2203405"] = self.OnSubFailed2203405,
        ["2203409"] = self.OnSubFailed2203409,
        ["2203406"] = self.OnSubFailed2203406,
        ["2203407"] = self.OnSubFailed2203407,
        ["2203410"] = self.OnSubFailed2203410
    }
end

function Quest22034:Start()
    print("Start")
end

function Quest22034:OnDestroy()
    print("OnDestroy")
end

function Quest22034:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest22034:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest22034:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc3042Data.alias, 3)
end

function Quest22034:OnSubStart2203401(arg1)
    print("OnSubStart2203401")
    self:CreateQuestNpc(arg1, npcs.Npc3042Data.id, 1)
end

function Quest22034:OnSubFinish2203401(arg1)
    print("OnSubFinish2203401")
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1)
        arg1:DestroyQuestNpcActor(npcs.Npc3042Data.alias, 3)
        arg1:NotifyTo(npcs.Npc3042Data.alias, 1, true)
    end, nil, nil, "")
end

function Quest22034:OnSubFailed2203401(arg1)
    print("OnSubFailed2203401")
end

function Quest22034:OnSubStart2203402(arg1)
    print("OnSubStart2203402")
    self:NotifyTo(npcs.Npc3042Data.alias, 1, true)
end

function Quest22034:OnSubFinish2203402(arg1)
    print("OnSubFinish2203402")
end

function Quest22034:OnSubFailed2203402(arg1)
    print("OnSubFailed2203402")
end

function Quest22034:OnSubStart2203403(arg1)
    print("OnSubStart2203403")
    self:NarratorOnlyTaskByData(datas.kaiche, nil, 22034)
end

function Quest22034:OnSubFinish2203403(arg1)
    print("OnSubFinish2203403")
end

function Quest22034:OnSubFailed2203403(arg1)
    print("OnSubFailed2203403")
end

function Quest22034:OnSubStart2203408(arg1)
    print("OnSubStart2203408")
    self:CallDelay(2, function(arg1_2)
        arg1_2:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
            arg1_2:CreateQuestNpc(arg1, npcs.Npc3042Data.id, 0)
            arg1_2:RequestInteraction(npcs.Npc3042Data.alias)
        end, nil, nil, "")
    end)
end

function Quest22034:OnSubFinish2203408(arg1)
    print("OnSubFinish2203408")
    self:ActionSafeCall(function(arg1)
        arg1:ShowBlackScreen(0.5, 1, 0.5, function(arg1)
            arg1:DestroyQuestNpcActor(npcs.Npc3042Data.alias, 3)
        end, nil, nil, "")
    end)
end

function Quest22034:OnSubFailed2203408(arg1)
    print("OnSubFailed2203408")
end

function Quest22034:OnSubStart2203404(arg1)
    print("OnSubStart2203404")
    self:NotifyTo(npcs.Npc3042Data.alias, 1, true)
end

function Quest22034:OnSubFinish2203404(arg1)
    print("OnSubFinish2203404")
end

function Quest22034:OnSubFailed2203404(arg1)
    print("OnSubFailed2203404")
end

function Quest22034:OnSubStart2203405(arg1)
    print("OnSubStart2203405")
    self:NarratorOnlyTaskByData(datas.kaiche, nil, 22034)
end

function Quest22034:OnSubFinish2203405(arg1)
    print("OnSubFinish2203405")
end

function Quest22034:OnSubFailed2203405(arg1)
    print("OnSubFailed2203405")
end

function Quest22034:OnSubStart2203409(arg1)
    print("OnSubStart2203409")
    self:CallDelay(2, function(arg1_2)
        arg1_2:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
            arg1_2:CreateQuestNpc(arg1, npcs.Npc3042Data.id, 0)
            arg1_2:RequestInteraction(npcs.Npc3042Data.alias)
        end, nil, nil, "")
    end)
end

function Quest22034:OnSubFinish2203409(arg1)
    print("OnSubFinish2203409")
    self:ActionSafeCall(function(arg1)
        arg1:ShowBlackScreen(0.5, 1, 0.5, function(arg1)
            arg1:DestroyQuestNpcActor(npcs.Npc3042Data.alias, 3)
        end, nil, nil, "")
    end)
end

function Quest22034:OnSubFailed2203409(arg1)
    print("OnSubFailed2203409")
end

function Quest22034:OnSubStart2203406(arg1)
    print("OnSubStart2203406")
    self:NotifyTo(npcs.Npc3042Data.alias, 1, true)
end

function Quest22034:OnSubFinish2203406(arg1)
    print("OnSubFinish2203406")
end

function Quest22034:OnSubFailed2203406(arg1)
    print("OnSubFailed2203406")
end

function Quest22034:OnSubStart2203407(arg1)
    print("OnSubStart2203407")
    self:NarratorOnlyTaskByData(datas.kaiche, nil, 22034)
end

function Quest22034:OnSubFinish2203407(arg1)
    print("OnSubFinish2203407")
end

function Quest22034:OnSubFailed2203407(arg1)
    print("OnSubFailed2203407")
end

function Quest22034:OnSubStart2203410(arg1)
    print("OnSubStart2203410")
    self:CallDelay(2, function(arg1_2)
        arg1_2:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
            arg1_2:CreateQuestNpc(arg1, npcs.Npc3042Data.id, 0)
            arg1_2:RequestInteraction(npcs.Npc3042Data.alias)
        end, nil, nil, "")
    end)
end

function Quest22034:OnSubFinish2203410(arg1)
    print("OnSubFinish2203410")
    self:ActionSafeCall(function(arg1)
        arg1:ShowBlackScreen(0.5, 1, 0.5, function(arg1)
            arg1:DestroyQuestNpcActor(npcs.Npc3042Data.alias, 3)
        end, nil, nil, "")
    end)
end

function Quest22034:OnSubFailed2203410(arg1)
    print("OnSubFailed2203410")
end

return Quest22034
