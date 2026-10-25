require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76034 = class("Quest76034", QuestActorProxy)
Quest76034.defaultAlias = "Quest76034"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest76034:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest76034:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7603401"] = self.OnSubStart7603401, ["7603402"] = self.OnSubStart7603402}
end

function Quest76034:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7603401"] = self.OnSubFinish7603401, ["7603402"] = self.OnSubFinish7603402}
end

function Quest76034:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest76034:Start()
    print("Start")
end

function Quest76034:OnDestroy()
    print("OnDestroy")
end

function Quest76034:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76034:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76034:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest76034:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest76034:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest76034:OnSubStart7603401(arg1)
    print("OnSubStart7603401")
    this:NpcCreateWithNpcTrigger(npcs.Npc1318.id, 0, 5, 7603401)
end

function Quest76034:OnSubFinish7603401(arg1)
    print("OnSubFinish7603401")
end

function Quest76034:OnSubStart7603402(arg1)
    print("OnSubStart7603402")
end

function Quest76034:OnSubFinish7603402(arg1)
    print("OnSubFinish7603402")
    this:SafeDestroyQuestNpc(npcs.Npc1318.alias, 3)
end

return Quest76034
