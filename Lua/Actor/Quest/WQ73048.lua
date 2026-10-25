require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73048 = class("Quest73048", QuestActorProxy)
Quest73048.defaultAlias = "Quest73048"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest73048:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest73048:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7304801"] = self.OnSubStart7304801}
end

function Quest73048:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7304801"] = self.OnSubFinish7304801}
end

function Quest73048:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73048:Start()
    print("Start")
end

function Quest73048:OnDestroy()
    print("OnDestroy")
end

function Quest73048:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73048:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73048:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73048:NpcDestroyWithDither(arg1, arg2)
    self:GetQuestNpcActor(arg1):DestroyWithDither(false, 1)
    self:CallDelay(1, function(arg1_2)
        arg1_2:DestroyQuestNpcActor(arg1, arg2)
    end)
end

function Quest73048:OnSubStart7304801(arg1)
    print("OnSubStart7304801")
    self:CreateQuestNpc(arg1, npcs.Npc20711Data.id, 1)
end

function Quest73048:OnSubFinish7304801(arg1)
    print("OnSubFinish7304801")
    self:NpcDestroyWithDither(npcs.Npc20711Data.alias, 3)
end

return Quest73048
