require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40214 = class("Quest40214", QuestActorProxy)
Quest40214.defaultAlias = "Quest40214"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest40214:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest40214:OnSubStartHandlerBuild()
    self.subStartHandlers = {["4021401"] = self.OnSubStart4021401}
end

function Quest40214:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["4021401"] = self.OnSubFinish4021401}
end

function Quest40214:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest40214:Start()
    print("Start")
end

function Quest40214:OnDestroy()
    print("OnDestroy")
end

function Quest40214:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest40214:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest40214:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:SafeDestroyQuestNpc(npcs.Npc7016.alias, 3)
end

function Quest40214:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest40214:OnSubStart4021401(arg1)
    print("OnSubStart4021401")
    this:CreateQuestNpc(arg1, npcs.Npc7016.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc7016.alias, 40214):DoFreeStyle(1190, true, nil, true, true, false, false)
end

function Quest40214:OnSubFinish4021401(arg1)
    print("OnSubFinish4021401")
    this:SafeDestroyQuestNpc(npcs.Npc7016.alias, 3)
end

return Quest40214
