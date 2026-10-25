require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75669 = class("Quest75669", QuestActorProxy)
Quest75669.defaultAlias = "Quest75669"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest75669:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest75669:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7566901"] = self.OnSubStart7566901}
end

function Quest75669:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7566901"] = self.OnSubFinish7566901}
end

function Quest75669:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75669:Start()
    print("Start")
end

function Quest75669:OnDestroy()
    print("OnDestroy")
end

function Quest75669:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75669:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75669:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:DestroyNpcTrigger("Q7566901N1005Trigger")
    this:GetQuestNpcActor(npcs.Paimon.alias, 75669):DestroyWithDisappear(false, nil)
end

function Quest75669:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest75669:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest75669:OnSubStart7566901(arg1)
    print("OnSubStart7566901")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7566901, 0, 10, 0, npcs.Paimon.id)
end

function Quest75669:OnSubFinish7566901(arg1)
    print("OnSubFinish7566901")
    this:GetQuestNpcActor(npcs.Paimon.alias, 75669):DestroyWithDisappear(false, nil)
    this:ActionSafeCall(function(arg1)
        actorUtils.ShowContext("PhotoV6ActivityDetailPage", 0)
    end)
end

return Quest75669
