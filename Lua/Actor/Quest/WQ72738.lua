require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72738 = class("Quest72738", QuestActorProxy)
Quest72738.defaultAlias = "Quest72738"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest72738:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest72738:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7273801"] = self.OnSubStart7273801}
end

function Quest72738:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7273801"] = self.OnSubFinish7273801}
end

function Quest72738:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest72738:Start()
    print("Start")
end

function Quest72738:OnDestroy()
    print("OnDestroy")
end

function Quest72738:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72738:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72738:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest72738:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest72738:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest72738:OnSubStart7273801(arg1)
    print("OnSubStart7273801")
    this:NpcCreateWithNpcTrigger(npcs.Npc1034.id, 0, 10, 7273801)
end

function Quest72738:OnSubFinish7273801(arg1)
    print("OnSubFinish7273801")
    this:SafeDestroyQuestNpc(npcs.Npc1034.alias, 3)
end

return Quest72738
