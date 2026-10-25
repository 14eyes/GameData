require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73328 = class("Quest73328", QuestActorProxy)
Quest73328.defaultAlias = "Quest73328"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs

function Quest73328:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest73328:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7332801"] = self.OnSubStart7332801}
end

function Quest73328:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7332801"] = self.OnSubFinish7332801}
end

function Quest73328:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73328:Start()
    print("Start")
end

function Quest73328:OnDestroy()
    print("OnDestroy")
end

function Quest73328:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73328:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73328:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73328:OnSubStart7332801(arg1)
    print("OnSubStart7332801")
    this:CreateQuestNpc(arg1, npcs.Npc20723Data.id, 1)
    this:GetQuestNpcActor(npcs.Npc20723Data.alias):DoFreeStyle(1230, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc20724Data.id, 2)
    this:GetQuestNpcActor(npcs.Npc20724Data.alias):DoFreeStyle(4, true, nil, true, true, false, false)
end

function Quest73328:OnSubFinish7332801(arg1)
    print("OnSubFinish7332801")
end

return Quest73328
