require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70690 = class("Quest70690", QuestActorProxy)
Quest70690.defaultAlias = "Quest70690"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest70690:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest70690:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7069001"] = self.OnSubStart7069001}
end

function Quest70690:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7069001"] = self.OnSubFinish7069001}
end

function Quest70690:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest70690:Start()
    print("Start")
end

function Quest70690:OnDestroy()
    print("OnDestroy")
end

function Quest70690:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70690:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70690:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest70690:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ActorDestroy("Q7069001Trigger")
end

function Quest70690:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest70690:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:NotifyTo(arg1, arg3, arg2)
    end)
end

function Quest70690:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest70690:NpcDestroyWithAfterIntercall(arg1, arg2)
    this:AfterInterCall(function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end)
end

function Quest70690:OnSubStart7069001(arg1)
    print("OnSubStart7069001")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7069001, 0, 60, 1, npcs.Lisa.id)
    this:DailyNpcSafeHideSelf(npcs.Npc1565.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc1642.alias, true, 1)
end

function Quest70690:OnSubFinish7069001(arg1)
    print("OnSubFinish7069001")
    this:NpcDestroyWithAfterIntercall(1004, npcs.Lisa.alias)
    this:LightNotifyTo(npcs.Npc1565.alias, 0, true)
    this:LightNotifyTo(npcs.Npc1642.alias, 0, true)
    this:ActionSafeCall(function(arg1)
        this:ShowTutorialDialog(2471, nil)
    end)
end

return Quest70690
