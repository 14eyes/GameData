require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74689 = class("Quest74689", QuestActorProxy)
Quest74689.defaultAlias = "Quest74689"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest74689:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest74689:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7468901"] = self.OnSubStart7468901}
end

function Quest74689:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7468901"] = self.OnSubFinish7468901}
end

function Quest74689:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74689:Start()
    print("Start")
end

function Quest74689:OnDestroy()
    print("OnDestroy")
end

function Quest74689:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74689:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74689:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:SafeDestroyQuestNpc(npcs.Npc30920.alias, 3)
    this:DestroyNpcTrigger("Q7468901N30920Trigger")
end

function Quest74689:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest74689:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest74689:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest74689:OnSubStart7468901(arg1)
    print("OnSubStart7468901")
    this:NpcCreateWithNpcTrigger(npcs.Npc30920.id, 0, 10, 7468901)
end

function Quest74689:OnSubFinish7468901(arg1)
    print("OnSubFinish7468901")
    this:NpcDestroyImmediately(3, npcs.Npc30920.alias)
    this:ActionSafeCall(function(arg1)
        actorUtils.ShowContext("TimeStopPhotoMainPage", 0)
    end)
end

return Quest74689
