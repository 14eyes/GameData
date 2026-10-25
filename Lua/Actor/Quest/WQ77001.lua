require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest77001 = class("Quest77001", QuestActorProxy)
Quest77001.defaultAlias = "Quest77001"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest77001:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest77001:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7700101"] = self.OnSubStart7700101, ["7700102"] = self.OnSubStart7700102}
end

function Quest77001:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7700101"] = self.OnSubFinish7700101, ["7700102"] = self.OnSubFinish7700102}
end

function Quest77001:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest77001:Start()
    print("Start")
end

function Quest77001:OnDestroy()
    print("OnDestroy")
end

function Quest77001:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest77001:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest77001:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest77001:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ActorDestroy("Q7700101Trigger", 77001)
end

function Quest77001:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1 then
        this:ActorDestroy("Q7700101Trigger", 77001)
    end
end

function Quest77001:ActorDestroy(arg1, arg2)
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

function Quest77001:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
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

function Quest77001:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest77001:OnSubStart7700101(arg1)
    print("OnSubStart7700101")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Npc17094.id, 0, 7700101, 20, true)
    actorMgr:CreateActorWithPos("Q7700101Trigger", "Actor/Gadget/Q7700101Trigger", 70900002, 0, points._Q7700101TriggerPoint_.pos, points._Q7700101TriggerPoint_.rot, true, false, 1159, nil, 0, 77001)
end

function Quest77001:OnSubFinish7700101(arg1)
    print("OnSubFinish7700101")
    this:NpcDestroyImmediately(1159, npcs.Npc17094.alias)
    this:ActorDestroy("Q7700101Trigger", 77001)
end

function Quest77001:OnSubStart7700102(arg1)
    print("OnSubStart7700102")
    actorUtils.FinishQuestWithParam({false}, {7700102})
end

function Quest77001:OnSubFinish7700102(arg1)
    print("OnSubFinish7700102")
    this:LevelReadySafeCall(function(arg1)
        actorUtils.ShowContext("OdetteQuestEntry")
    end)
end

return Quest77001
