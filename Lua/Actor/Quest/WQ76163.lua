require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76163 = class("Quest76163", QuestActorProxy)
Quest76163.defaultAlias = "Quest76163"
local clientData
local this
local mainID
local actorAlias
local npcs
local points

function Quest76163:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest76163:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7616301"] = self.OnSubStart7616301,
        ["7616302"] = self.OnSubStart7616302,
        ["7616306"] = self.OnSubStart7616306,
        ["7616307"] = self.OnSubStart7616307,
        ["7616303"] = self.OnSubStart7616303,
        ["7616304"] = self.OnSubStart7616304,
        ["7616305"] = self.OnSubStart7616305
    }
end

function Quest76163:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7616301"] = self.OnSubFinish7616301,
        ["7616302"] = self.OnSubFinish7616302,
        ["7616306"] = self.OnSubFinish7616306,
        ["7616307"] = self.OnSubFinish7616307,
        ["7616303"] = self.OnSubFinish7616303,
        ["7616304"] = self.OnSubFinish7616304,
        ["7616305"] = self.OnSubFinish7616305
    }
end

function Quest76163:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7616304"] = self.OnSubFailed7616304}
end

function Quest76163:Start()
    print("Start")
end

function Quest76163:OnDestroy()
    print("OnDestroy")
end

function Quest76163:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76163:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76163:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest76163:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ActorDestroy("Q7616305Trigger", nil)
    this:ActorDestroy("Q7616303Trigger", nil)
    this:ActorDestroy("Q7616304Trigger", 76163)
    this:ActorDestroy("Q7616307Trigger", nil)
end

function Quest76163:ActorDestroy(arg1, arg2)
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

function Quest76163:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
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

function Quest76163:OnSubStart7616301(arg1)
    print("OnSubStart7616301")
end

function Quest76163:OnSubFinish7616301(arg1)
    print("OnSubFinish7616301")
end

function Quest76163:OnSubStart7616302(arg1)
    print("OnSubStart7616302")
end

function Quest76163:OnSubFinish7616302(arg1)
    print("OnSubFinish7616302")
end

function Quest76163:OnSubStart7616306(arg1)
    print("OnSubStart7616306")
    this:PlayCutsceneIndex(7616306, function(arg1)
        actorUtils.FinishQuestWithParam({false}, {7616306})
    end, nil, nil, false)
end

function Quest76163:OnSubFinish7616306(arg1)
    print("OnSubFinish7616306")
end

function Quest76163:OnSubStart7616307(arg1)
    print("OnSubStart7616307")
    actorMgr:CreateActorWithPos("Q7616307Trigger", "Actor/Gadget/Q7616307Trigger", 70900002, 0, points._Q7616307TriggerPoint_.pos, points._Q7616307TriggerPoint_.rot, true, false, 102, nil, 0, 0)
end

function Quest76163:OnSubFinish7616307(arg1)
    print("OnSubFinish7616307")
    this:TransmitPlayerUseCustomizedTplById(arg1, 1, 102)
end

function Quest76163:OnSubStart7616303(arg1)
    print("OnSubStart7616303")
    actorMgr:CreateActorWithPos("Q7616303Trigger", "Actor/Gadget/Q7616303Trigger", 70900002, 0, points._Q7616303TriggerPoint_.pos, points._Q7616303TriggerPoint_.rot, true, false, 102, nil, 0, 0)
end

function Quest76163:OnSubFinish7616303(arg1)
    print("OnSubFinish7616303")
end

function Quest76163:OnSubStart7616304(arg1)
    print("OnSubStart7616304")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(0, npcs.Npc22506.id, 0, 7616304, 30, true)
    actorMgr:CreateActorWithPos("Q7616304Trigger", "Actor/Gadget/Q7616304Trigger", 70900002, 0, points._Q7616304TriggerPoint_.pos, points._Q7616304TriggerPoint_.rot, true, false, 102, nil, 0, 76163)
end

function Quest76163:OnSubFinish7616304(arg1)
    print("OnSubFinish7616304")
    this:SafeDestroyQuestNpc(npcs.Npc22506.alias, 102)
    this:TransmitPlayerUseCustomizedTplById(arg1, 1, 104)
end

function Quest76163:OnSubFailed7616304(arg1)
    print("OnSubFailed7616304")
    this:RecycleAllRes()
end

function Quest76163:OnSubStart7616305(arg1)
    print("OnSubStart7616305")
    actorMgr:CreateActorWithPos("Q7616305Trigger", "Actor/Gadget/Q7616305Trigger", 70900002, 0, points._Q7616305TriggerPoint_.pos, points._Q7616305TriggerPoint_.rot, true, false, 102, nil, 0, 0)
end

function Quest76163:OnSubFinish7616305(arg1)
    print("OnSubFinish7616305")
end

return Quest76163
