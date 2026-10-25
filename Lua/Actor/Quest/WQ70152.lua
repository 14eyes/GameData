require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70152 = class("Quest70152", QuestActorProxy)
Quest70152.defaultAlias = "Quest70152"
local clientData
local this
local mainID
local actorAlias
local npcs
local points

function Quest70152:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest70152:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7015201"] = self.OnSubStart7015201, ["7015202"] = self.OnSubStart7015202}
end

function Quest70152:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7015201"] = self.OnSubFinish7015201, ["7015202"] = self.OnSubFinish7015202}
end

function Quest70152:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7015202"] = self.OnSubFailed7015202}
end

function Quest70152:Start()
    print("Start")
end

function Quest70152:OnDestroy()
    print("OnDestroy")
end

function Quest70152:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70152:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70152:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest70152:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ActorDestroy("Q7015202Tigger", 70152)
end

function Quest70152:ActorDestroy(arg1, arg2)
    if arg2 == nil or arg2 == 0 then
        local actor = actorMgr:GetActor(arg1)
        if actor ~= nil then
            actor:DestroySelf()
            return
        end
    else
        local str = arg1 .. tostring(arg2)
        local actor = actorMgr:GetActor(str)
        if actor ~= nil then
            actor:DestroySelf()
            return
        end
    end
end

function Quest70152:DestroyRepeatableNpcShowDisappearTriggerCommon(arg1, arg2)
    this:DestroyRepeatableNpcShowDisappearTrigger(arg2, arg1)
end

function Quest70152:CreateRepeatableNpcShowDisappearTriggerCommon(arg1, arg2, arg3, arg4, arg5, arg6)
    this:CreateRepeatableNpcShowDisappearTrigger(arg4, arg1, arg6, arg2, arg5, arg3)
end

function Quest70152:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest70152:OnSubStart7015201(arg1)
    print("OnSubStart7015201")
    this:CreateRepeatableNpcShowDisappearTriggerCommon(7015201, 0, 55, "Q7015201Trigger", 50, npcs.Npc22854.id)
end

function Quest70152:OnSubFinish7015201(arg1)
    print("OnSubFinish7015201")
    this:NpcDestroyImmediately(3, npcs.Npc22854.alias)
    this:DestroyRepeatableNpcShowDisappearTriggerCommon(true, "Q7015201Trigger")
end

function Quest70152:OnSubStart7015202(arg1)
    print("OnSubStart7015202")
    actorMgr:CreateActorWithPos("Q7015202Tigger", "Actor/Gadget/Q7015202Tigger", 70900002, 0, points._Q7015202TiggerPoint_.pos, points._Q7015202TiggerPoint_.rot, true, false, 3, nil, 0, 70152)
end

function Quest70152:OnSubFinish7015202(arg1)
    print("OnSubFinish7015202")
end

function Quest70152:OnSubFailed7015202(arg1)
    print("OnSubFailed7015202")
    this:RecycleAllRes()
end

return Quest70152
