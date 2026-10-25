require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest77006 = class("Quest77006", QuestActorProxy)
Quest77006.defaultAlias = "Quest77006"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest77006:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest77006:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7700601"] = self.OnSubStart7700601, ["7700602"] = self.OnSubStart7700602}
end

function Quest77006:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7700601"] = self.OnSubFinish7700601, ["7700602"] = self.OnSubFinish7700602}
end

function Quest77006:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest77006:Start()
    print("Start")
end

function Quest77006:OnDestroy()
    print("OnDestroy")
end

function Quest77006:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest77006:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest77006:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest77006:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ActorDestroy("Q7700601Trigger", 77006)
end

function Quest77006:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1 then
        this:ActorDestroy("Q7700601Trigger", 77006)
    end
end

function Quest77006:ActorDestroy(arg1, arg2)
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

function Quest77006:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
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

function Quest77006:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest77006:OnSubStart7700601(arg1)
    print("OnSubStart7700601")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Npc17094.id, 0, 7700601, 15, true)
    actorMgr:CreateActorWithPos("Q7700601Trigger", "Actor/Gadget/Q7700601Trigger", 70900002, 0, points._Q7700601TriggerPoint_.pos, points._Q7700601TriggerPoint_.rot, true, false, 1159, nil, 0, 77006)
end

function Quest77006:OnSubFinish7700601(arg1)
    print("OnSubFinish7700601")
    this:NpcDestroyImmediately(1159, npcs.Npc17094.alias)
    this:ActorDestroy("Q7700601Trigger", 77006)
end

function Quest77006:OnSubStart7700602(arg1)
    print("OnSubStart7700602")
    actorUtils.FinishQuestWithParam({false}, {7700602})
end

function Quest77006:OnSubFinish7700602(arg1)
    print("OnSubFinish7700602")
    this:LevelReadySafeCall(function(arg1)
        actorUtils.ShowContext("OdetteQuestEntry")
    end)
end

return Quest77006
