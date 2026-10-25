require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71145 = class("Quest71145", QuestActorProxy)
Quest71145.defaultAlias = "Quest71145"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest71145:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest71145:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7114501"] = self.OnSubStart7114501}
end

function Quest71145:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7114501"] = self.OnSubFinish7114501}
end

function Quest71145:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7114501"] = self.OnSubFailed7114501}
end

function Quest71145:Start()
    print("Start")
end

function Quest71145:OnDestroy()
    print("OnDestroy")
end

function Quest71145:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71145:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71145:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:SafeDestroyQuestNpc(npcs.Npc30601.alias, 3)
end

function Quest71145:OnSubStart7114501(arg1)
    print("OnSubStart7114501")
    this:CreateQuestNpc(arg1, npcs.Npc30601.id, 0, false, 0)
end

function Quest71145:OnSubFinish7114501(arg1)
    print("OnSubFinish7114501")
    this:SafeDestroyQuestNpc(npcs.Npc30601.alias, 3)
end

function Quest71145:OnSubFailed7114501(arg1)
    print("OnSubFailed7114501")
end

return Quest71145
