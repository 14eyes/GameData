require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest77005 = class("Quest77005", QuestActorProxy)
Quest77005.defaultAlias = "Quest77005"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest77005:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest77005:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7700501"] = self.OnSubStart7700501, ["7700502"] = self.OnSubStart7700502}
end

function Quest77005:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7700501"] = self.OnSubFinish7700501, ["7700502"] = self.OnSubFinish7700502}
end

function Quest77005:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest77005:Start()
    print("Start")
end

function Quest77005:OnDestroy()
    print("OnDestroy")
end

function Quest77005:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest77005:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest77005:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest77005:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ActorDestroy("Q7700501Trigger", 77005)
end

function Quest77005:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1 then
        this:ActorDestroy("Q7700501Trigger", 77005)
    end
end

function Quest77005:ActorDestroy(arg1, arg2)
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

function Quest77005:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
    local n = 0.5
    if not arg6 then
        if not needLightUp then
            goto lbl_8
        end
    end

    n = 0
    ::lbl_8::
    this:CreateQuestNpcWithTriggerBlackEx("Q" .. arg4 .. "N" .. arg2 .. "Trigger", arg4, arg2, arg3, arg5, n, arg1, 0.5, 2)
end

function Quest77005:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest77005:OnSubStart7700501(arg1)
    print("OnSubStart7700501")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Npc17094.id, 0, 7700501, 15, true)
    actorMgr:CreateActorWithPos("Q7700501Trigger", "Actor/Gadget/Q7700501Trigger", 70900002, 0, points._Q7700501TriggerPoint_.pos, points._Q7700501TriggerPoint_.rot, true, false, 1159, nil, 0, 77005)
end

function Quest77005:OnSubFinish7700501(arg1)
    print("OnSubFinish7700501")
    this:NpcDestroyImmediately(1159, npcs.Npc17094.alias)
    this:ActorDestroy("Q7700501Trigger", 77005)
end

function Quest77005:OnSubStart7700502(arg1)
    print("OnSubStart7700502")
    actorUtils.FinishQuestWithParam({false}, {7700502})
end

function Quest77005:OnSubFinish7700502(arg1)
    print("OnSubFinish7700502")
    this:LevelReadySafeCall(function(arg1)
        actorUtils.ShowContext("OdetteQuestEntry")
    end)
end

return Quest77005
