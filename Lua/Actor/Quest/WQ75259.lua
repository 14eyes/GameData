require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75259 = class("Quest75259", QuestActorProxy)
Quest75259.defaultAlias = "Quest75259"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest75259:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest75259:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7525901"] = self.OnSubStart7525901}
end

function Quest75259:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7525901"] = self.OnSubFinish7525901}
end

function Quest75259:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75259:Start()
    print("Start")
end

function Quest75259:OnDestroy()
    print("OnDestroy")
end

function Quest75259:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75259:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75259:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest75259:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest75259:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest75259:NpcDestroyWithBlackscreen(arg1, arg2)
    globalActor:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "", false, true)
end

function Quest75259:OnSubStart7525901(arg1)
    print("OnSubStart7525901")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7525901, 0, 20, 1, npcs.Npc21982.id)
end

function Quest75259:OnSubFinish7525901(arg1)
    print("OnSubFinish7525901")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc21982.alias)
end

return Quest75259
