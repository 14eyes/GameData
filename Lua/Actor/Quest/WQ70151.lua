require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70151 = class("Quest70151", QuestActorProxy)
Quest70151.defaultAlias = "Quest70151"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest70151:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest70151:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7015101"] = self.OnSubStart7015101, ["7015102"] = self.OnSubStart7015102}
end

function Quest70151:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7015101"] = self.OnSubFinish7015101, ["7015102"] = self.OnSubFinish7015102}
end

function Quest70151:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7015102"] = self.OnSubFailed7015102}
end

function Quest70151:Start()
    print("Start")
end

function Quest70151:OnDestroy()
    print("OnDestroy")
end

function Quest70151:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70151:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70151:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest70151:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest70151:DestroyRepeatableNpcShowDisappearTriggerCommon(arg1, arg2)
    this:DestroyRepeatableNpcShowDisappearTrigger(arg2, arg1)
end

function Quest70151:CreateRepeatableNpcShowDisappearTriggerCommon(arg1, arg2, arg3, arg4, arg5, arg6)
    this:CreateRepeatableNpcShowDisappearTrigger(arg4, arg1, arg6, arg2, arg5, arg3)
end

function Quest70151:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest70151:OnSubStart7015101(arg1)
    print("OnSubStart7015101")
    this:CreateRepeatableNpcShowDisappearTriggerCommon(7015101, 0, 78, "Q7015101Trigger", 72, npcs.Npc17110.id)
end

function Quest70151:OnSubFinish7015101(arg1)
    print("OnSubFinish7015101")
    this:NpcDestroyImmediately(3, npcs.Npc17110.alias)
    this:DestroyRepeatableNpcShowDisappearTriggerCommon(true, "Q7015101Trigger")
end

function Quest70151:OnSubStart7015102(arg1)
    print("OnSubStart7015102")
end

function Quest70151:OnSubFinish7015102(arg1)
    print("OnSubFinish7015102")
end

function Quest70151:OnSubFailed7015102(arg1)
    print("OnSubFailed7015102")
    this:RecycleAllRes()
end

return Quest70151
