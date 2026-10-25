require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest19186 = class("Quest19186", QuestActorProxy)
Quest19186.defaultAlias = "Quest19186"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs

function Quest19186:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest19186:OnSubStartHandlerBuild()
    self.subStartHandlers = {["1918601"] = self.OnSubStart1918601}
end

function Quest19186:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["1918601"] = self.OnSubFinish1918601}
end

function Quest19186:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest19186:Start()
    print("Start")
end

function Quest19186:OnDestroy()
    print("OnDestroy")
end

function Quest19186:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest19186:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest19186:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest19186:OnSubStart1918601(arg1)
    print("OnSubStart1918601")
    this:RequestCoopInteractionFromSubStartPoint(108301, 1918601)
    this:CreateQuestNpc(arg1, npcs.Npc518Data.id, 0)
end

function Quest19186:OnSubFinish1918601(arg1)
    print("OnSubFinish1918601")
    this:SafeDestroyQuestNpc(npcs.Npc518Data.alias, 3)
end

return Quest19186
