require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest22015 = class("Quest22015", QuestActorProxy)
Quest22015.defaultAlias = "Quest22015"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest22015:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest22015:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["2201501"] = self.OnSubStart2201501,
        ["2201502"] = self.OnSubStart2201502,
        ["2201503"] = self.OnSubStart2201503,
        ["2201504"] = self.OnSubStart2201504,
        ["2201505"] = self.OnSubStart2201505
    }
end

function Quest22015:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["2201501"] = self.OnSubFinish2201501,
        ["2201502"] = self.OnSubFinish2201502,
        ["2201503"] = self.OnSubFinish2201503,
        ["2201504"] = self.OnSubFinish2201504,
        ["2201505"] = self.OnSubFinish2201505
    }
end

function Quest22015:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["2201501"] = self.OnSubFailed2201501,
        ["2201502"] = self.OnSubFailed2201502,
        ["2201503"] = self.OnSubFailed2201503,
        ["2201504"] = self.OnSubFailed2201504,
        ["2201505"] = self.OnSubFailed2201505
    }
end

function Quest22015:Start()
    print("Start")
end

function Quest22015:OnDestroy()
    print("OnDestroy")
end

function Quest22015:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest22015:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest22015:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc3041Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc3042Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc3046Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc3047Data.alias, 3)
end

function Quest22015:OnSubStart2201501(arg1)
    print("OnSubStart2201501")
    self:CreateQuestNpc(arg1, npcs.Npc3041Data.id, 1)
    self:NotifyTo(npcs.Npc3042Data.alias, 1, true)
end

function Quest22015:OnSubFinish2201501(arg1)
    print("OnSubFinish2201501")
end

function Quest22015:OnSubFailed2201501(arg1)
    print("OnSubFailed2201501")
end

function Quest22015:OnSubStart2201502(arg1)
    print("OnSubStart2201502")
    self:CreateQuestNpc(arg1, npcs.Npc3042Data.id, 0)
    self:GetQuestNpcActor(npcs.Npc3042Data.alias):DoFreeStyle(4180, true, nil, true, true, false)
    self:GetQuestNpcActor(npcs.Npc3041Data.alias):DoFreeStateTrigger()
end

function Quest22015:OnSubFinish2201502(arg1)
    print("OnSubFinish2201502")
    self:NarratorOnlyTaskLegacy(datas.Kaiche2, nil, "", 22015)
end

function Quest22015:OnSubFailed2201502(arg1)
    print("OnSubFailed2201502")
end

function Quest22015:OnSubStart2201503(arg1)
    print("OnSubStart2201503")
end

function Quest22015:OnSubFinish2201503(arg1)
    print("OnSubFinish2201503")
    self:NarratorOnlyTaskLegacy(datas.Kaiche, nil, "", 22015)
end

function Quest22015:OnSubFailed2201503(arg1)
    print("OnSubFailed2201503")
end

function Quest22015:OnSubStart2201504(arg1)
    print("OnSubStart2201504")
    self:GetQuestNpcActor(npcs.Npc3042Data.alias):DoFreeStateTrigger()
end

function Quest22015:OnSubFinish2201504(arg1)
    print("OnSubFinish2201504")
    self:ActionSafeCall(function(arg1)
        arg1:DestroyQuestNpcActor(npcs.Npc3042Data.alias, 3)
        arg1:DestroyQuestNpcActor(npcs.Npc3046Data.alias, 3)
        arg1:DestroyQuestNpcActor(npcs.Npc3047Data.alias, 3)
    end)
end

function Quest22015:OnSubFailed2201504(arg1)
    print("OnSubFailed2201504")
end

function Quest22015:OnSubStart2201505(arg1)
    print("OnSubStart2201505")
    self:ActionSafeCall(function(arg1)
        arg1:NotifyTo(npcs.Npc3042Data.alias, 1, true)
    end)
end

function Quest22015:OnSubFinish2201505(arg1)
    print("OnSubFinish2201505")
    self:ActionSafeCall(function(arg1)
        arg1:DestroyQuestNpcActor(npcs.Npc3042Data.alias, 3)
        arg1:DestroyQuestNpcActor(npcs.Npc3041Data.alias, 3)
        arg1:DestroyQuestNpcActor(npcs.Npc3046Data.alias, 3)
        arg1:DestroyQuestNpcActor(npcs.Npc3047Data.alias, 3)
    end)
end

function Quest22015:OnSubFailed2201505(arg1)
    print("OnSubFailed2201505")
end

return Quest22015
