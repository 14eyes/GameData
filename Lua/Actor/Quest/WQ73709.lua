require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73709 = class("Quest73709", QuestActorProxy)
Quest73709.defaultAlias = "Quest73709"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest73709:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest73709:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7370901"] = self.OnSubStart7370901}
end

function Quest73709:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7370901"] = self.OnSubFinish7370901}
end

function Quest73709:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73709:Start()
    print("Start")
end

function Quest73709:OnDestroy()
    print("OnDestroy")
end

function Quest73709:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73709:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73709:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:DestroyNpcTrigger("Q7370901N30969Trigger")
    this:SafeDestroyQuestNpc(npcs.Npc30969.alias, 3)
    this:RecycleAllRes()
end

function Quest73709:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest73709:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest73709:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest73709:OnSubStart7370901(arg1)
    print("OnSubStart7370901")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7370901, 0, 10, 1, npcs.Npc30969.id)
end

function Quest73709:OnSubFinish7370901(arg1)
    print("OnSubFinish7370901")
    this:NpcDestroyImmediately(3, npcs.Npc30969.alias)
    this:ActionSafeCall(function(arg1)
        this:ShowTutorialDialog(2563, nil)
    end)
end

return Quest73709
