require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75080 = class("Quest75080", QuestActorProxy)
Quest75080.defaultAlias = "Quest75080"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest75080:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest75080:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7508001"] = self.OnSubStart7508001, ["7508002"] = self.OnSubStart7508002}
end

function Quest75080:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7508001"] = self.OnSubFinish7508001, ["7508002"] = self.OnSubFinish7508002}
end

function Quest75080:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75080:Start()
    print("Start")
end

function Quest75080:OnDestroy()
    print("OnDestroy")
end

function Quest75080:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75080:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75080:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:SafeDestroyQuestNpc(npcs.Npc21567.alias, 3)
end

function Quest75080:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest75080:OnSubStart7508001(arg1)
    print("OnSubStart7508001")
end

function Quest75080:OnSubFinish7508001(arg1)
    print("OnSubFinish7508001")
end

function Quest75080:OnSubStart7508002(arg1)
    print("OnSubStart7508002")
    this:NpcCreateWithNpcTrigger(npcs.Npc21567.id, 0, 25, 7508002)
end

function Quest75080:OnSubFinish7508002(arg1)
    print("OnSubFinish7508002")
    this:SafeDestroyQuestNpc(npcs.Npc21567.alias, 3)
end

return Quest75080
