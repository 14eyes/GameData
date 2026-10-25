require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76500 = class("Quest76500", QuestActorProxy)
Quest76500.defaultAlias = "Quest76500"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest76500:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest76500:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7650001"] = self.OnSubStart7650001}
end

function Quest76500:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7650001"] = self.OnSubFinish7650001}
end

function Quest76500:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest76500:Start()
    print("Start")
end

function Quest76500:OnDestroy()
    print("OnDestroy")
end

function Quest76500:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76500:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76500:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:DestroyNpcTrigger("Q7650001N1005Trigger")
    this:ActionSafeCall(function(arg1)
        this:GetQuestNpcActor(npcs.Paimon.alias, 76500):DestroyWithDisappear(false, nil)
    end)
end

function Quest76500:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest76500:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest76500:OnSubStart7650001(arg1)
    print("OnSubStart7650001")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7650001, 0, 3, 1, npcs.Paimon.id)
end

function Quest76500:OnSubFinish7650001(arg1)
    print("OnSubFinish7650001")
    this:SafeDestroyQuestNpc(npcs.Paimon.alias, 3)
    this:GetQuestNpcActor(npcs.Paimon.alias, 76500):DestroyWithDisappear(false, nil)
    this:ActionSafeCall(function(arg1)
        actorUtils.ShowContext("PhotoV7ActivityDetailPage", 0)
    end)
end

return Quest76500
