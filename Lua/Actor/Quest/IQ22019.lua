require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest22019 = class("Quest22019", QuestActorProxy)
Quest22019.defaultAlias = "Quest22019"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest22019:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest22019:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["2201901"] = self.OnSubStart2201901,
        ["2201902"] = self.OnSubStart2201902,
        ["2201903"] = self.OnSubStart2201903,
        ["2201904"] = self.OnSubStart2201904,
        ["2201905"] = self.OnSubStart2201905,
        ["2201906"] = self.OnSubStart2201906
    }
end

function Quest22019:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["2201901"] = self.OnSubFinish2201901,
        ["2201902"] = self.OnSubFinish2201902,
        ["2201903"] = self.OnSubFinish2201903,
        ["2201904"] = self.OnSubFinish2201904,
        ["2201905"] = self.OnSubFinish2201905,
        ["2201906"] = self.OnSubFinish2201906
    }
end

function Quest22019:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["2201901"] = self.OnSubFailed2201901,
        ["2201902"] = self.OnSubFailed2201902,
        ["2201903"] = self.OnSubFailed2201903,
        ["2201904"] = self.OnSubFailed2201904,
        ["2201905"] = self.OnSubFailed2201905,
        ["2201906"] = self.OnSubFailed2201906
    }
end

function Quest22019:Start()
    print("Start")
end

function Quest22019:OnDestroy()
    print("OnDestroy")
end

function Quest22019:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest22019:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest22019:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest22019:OnSubStart2201901(arg1)
    print("OnSubStart2201901")
    self:CreateQuestNpc(arg1, npcs.Npc3042Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc3046Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc3047Data.id, 3)
    self:CreateQuestNpc(arg1, npcs.Npc3041Data.id, 4)
    actorMgr:CreateActorWithPos("Q22019Trigger1", "Actor/Gadget/Q22019Trigger1", 70900002, 0, sceneData:GetDummyPoint(3, "Q22015_shanhu").pos, sceneData:GetDummyPoint(3, "Q22015_shanhu").rot, true, false, 3)
end

function Quest22019:OnSubFinish2201901(arg1)
    print("OnSubFinish2201901")
    self:ActionSafeCall(function(arg1)
        arg1:DestroyQuestNpcActor(npcs.Npc3042Data.alias, 3)
        arg1:DestroyQuestNpcActor(npcs.Npc3046Data.alias, 3)
        arg1:DestroyQuestNpcActor(npcs.Npc3047Data.alias, 3)
        arg1:NotifyTo(npcs.Npc3042Data.alias, 1, true)
        arg1:NotifyTo(npcs.Npc3046Data.alias, 1, true)
        arg1:NotifyTo(npcs.Npc3047Data.alias, 1, true)
    end)
end

function Quest22019:OnSubFailed2201901(arg1)
    print("OnSubFailed2201901")
end

function Quest22019:OnSubStart2201902(arg1)
    print("OnSubStart2201902")
    self:CreateQuestNpc(arg1, npcs.Npc10339Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc10340Data.id, 3)
    self:CreateQuestNpc(arg1, npcs.Npc12108Data.id, 0)
    self:ActionSafeCall(function(arg1)
        arg1:NotifyTo(npcs.Npc3042Data.alias, 1, true)
    end)

    self:NotifyTo(npcs.Npc3046Data.alias, 1, true)
    self:NotifyTo(npcs.Npc3047Data.alias, 1, true)
end

function Quest22019:OnSubFinish2201902(arg1)
    print("OnSubFinish2201902")
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1)
        arg1:CreateQuestNpcById(2201903, npcs.Npc3042Data.id, 0)
        arg1:RequestInteraction(npcs.Npc3042Data.alias)
    end, nil, nil, "")
end

function Quest22019:OnSubFailed2201902(arg1)
    print("OnSubFailed2201902")
end

function Quest22019:OnSubStart2201903(arg1)
    print("OnSubStart2201903")
end

function Quest22019:OnSubFinish2201903(arg1)
    print("OnSubFinish2201903")
    self:ActionSafeCall(function(arg1)
        arg1:DestroyQuestNpcActor(npcs.Npc3042Data.alias, 3)
        arg1:DestroyQuestNpcActor(npcs.Npc3046Data.alias, 3)
        arg1:DestroyQuestNpcActor(npcs.Npc3047Data.alias, 3)
        arg1:DestroyQuestNpcActor(npcs.Npc10339Data.alias, 3)
        arg1:DestroyQuestNpcActor(npcs.Npc10340Data.alias, 3)
        arg1:DestroyQuestNpcActor(npcs.Npc12108Data.alias, 3)
    end)
end

function Quest22019:OnSubFailed2201903(arg1)
    print("OnSubFailed2201903")
end

function Quest22019:OnSubStart2201904(arg1)
    print("OnSubStart2201904")
    self:ActionSafeCall(function(arg1)
        arg1:NotifyTo(npcs.Npc3042Data.alias, 1, true)
    end)
end

function Quest22019:OnSubFinish2201904(arg1)
    print("OnSubFinish2201904")
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1)
        arg1:CreateQuestNpcById(2201905, npcs.Npc3042Data.id, 0)
        arg1:RequestInteraction(npcs.Npc3042Data.alias)
    end, nil, nil, "")
end

function Quest22019:OnSubFailed2201904(arg1)
    print("OnSubFailed2201904")
end

function Quest22019:OnSubStart2201905(arg1)
    print("OnSubStart2201905")
end

function Quest22019:OnSubFinish2201905(arg1)
    print("OnSubFinish2201905")
    self:ActionSafeCall(function(arg1)
        arg1:DestroyQuestNpcActor(npcs.Npc3042Data.alias, 3)
        arg1:DestroyQuestNpcActor(npcs.Npc3046Data.alias, 3)
        arg1:DestroyQuestNpcActor(npcs.Npc3047Data.alias, 3)
        arg1:NotifyTo(npcs.Npc3042Data.alias, 1, true)
        arg1:DestroyQuestNpcActor(npcs.Npc12108Data.alias, 3)
    end)
end

function Quest22019:OnSubFailed2201905(arg1)
    print("OnSubFailed2201905")
end

function Quest22019:OnSubStart2201906(arg1)
    print("OnSubStart2201906")
    self:ActionSafeCall(function(arg1)
        arg1:NotifyTo(npcs.Npc3042Data.alias, 1, true)
    end)
end

function Quest22019:OnSubFinish2201906(arg1)
    print("OnSubFinish2201906")
    self:ActionSafeCall(function(arg1)
        arg1:DestroyQuestNpcActor(npcs.Npc3042Data.alias, 3)
        arg1:DestroyQuestNpcActor(npcs.Npc3041Data.alias, 3)
    end)
end

function Quest22019:OnSubFailed2201906(arg1)
    print("OnSubFailed2201906")
end

return Quest22019
