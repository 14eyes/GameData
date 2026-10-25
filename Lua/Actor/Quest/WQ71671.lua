require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71671 = class("Quest71671", QuestActorProxy)
Quest71671.defaultAlias = "Quest71671"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest71671:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest71671:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7167101"] = self.OnSubStart7167101}
end

function Quest71671:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7167101"] = self.OnSubFinish7167101}
end

function Quest71671:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest71671:Start()
    print("Start")
end

function Quest71671:OnDestroy()
    print("OnDestroy")
end

function Quest71671:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71671:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71671:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest71671:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest71671:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest71671:OnSubStart7167101(arg1)
    print("OnSubStart7167101")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7167101, 0, 20, 2, npcs.Npc15517.id)
end

function Quest71671:OnSubFinish7167101(arg1)
    print("OnSubFinish7167101")
    this:SafeDestroyQuestNpc(npcs.Npc15517.alias, 3)
end

return Quest71671
