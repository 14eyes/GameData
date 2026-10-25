require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest77210 = class("Quest77210", QuestActorProxy)
Quest77210.defaultAlias = "Quest77210"
local clientData
local this
local mainID
local actorAlias
local npcs
local points

function Quest77210:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest77210:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7721005"] = self.OnSubStart7721005,
        ["7721003"] = self.OnSubStart7721003,
        ["7721004"] = self.OnSubStart7721004,
        ["7721001"] = self.OnSubStart7721001,
        ["7721006"] = self.OnSubStart7721006,
        ["7721007"] = self.OnSubStart7721007,
        ["7721008"] = self.OnSubStart7721008,
        ["7721009"] = self.OnSubStart7721009,
        ["7721002"] = self.OnSubStart7721002
    }
end

function Quest77210:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7721005"] = self.OnSubFinish7721005,
        ["7721003"] = self.OnSubFinish7721003,
        ["7721004"] = self.OnSubFinish7721004,
        ["7721001"] = self.OnSubFinish7721001,
        ["7721006"] = self.OnSubFinish7721006,
        ["7721007"] = self.OnSubFinish7721007,
        ["7721008"] = self.OnSubFinish7721008,
        ["7721009"] = self.OnSubFinish7721009,
        ["7721002"] = self.OnSubFinish7721002
    }
end

function Quest77210:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7721001"] = self.OnSubFailed7721001,
        ["7721006"] = self.OnSubFailed7721006,
        ["7721007"] = self.OnSubFailed7721007,
        ["7721008"] = self.OnSubFailed7721008,
        ["7721009"] = self.OnSubFailed7721009
    }
end

function Quest77210:Start()
    print("Start")
end

function Quest77210:OnDestroy()
    print("OnDestroy")
end

function Quest77210:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest77210:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest77210:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest77210:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ActorDestroy("Q7721003Trigger", 77210)
end

function Quest77210:ActorDestroy(arg1, arg2)
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

function Quest77210:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
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

function Quest77210:NpcDestroyWithAfterIntercall(arg1, arg2)
    this:AfterInterCall(function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end)
end

function Quest77210:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest77210:OnSubStart7721005(arg1)
    print("OnSubStart7721005")
end

function Quest77210:OnSubFinish7721005(arg1)
    print("OnSubFinish7721005")
    this:SetNavigationByMainId(77210, true)
end

function Quest77210:OnSubStart7721003(arg1)
    print("OnSubStart7721003")
    actorMgr:CreateActorWithPos("Q7721003Trigger", "Actor/Gadget/Q7721003Trigger", 70900002, 0, points.Q7721003Trigger.pos, points.Q7721003Trigger.rot, true, false, 3, nil, 0, 77210)
end

function Quest77210:OnSubFinish7721003(arg1)
    print("OnSubFinish7721003")
    this:TransmitPlayerById(arg1, 1, nil, nil, nil)
end

function Quest77210:OnSubStart7721004(arg1)
    print("OnSubStart7721004")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7721004, 0, 20, 0, npcs.Npc22734.id)
end

function Quest77210:OnSubFinish7721004(arg1)
    print("OnSubFinish7721004")
    this:NpcDestroyWithAfterIntercall(3, npcs.Npc22734.alias)
end

function Quest77210:OnSubStart7721001(arg1)
    print("OnSubStart7721001")
end

function Quest77210:OnSubFinish7721001(arg1)
    print("OnSubFinish7721001")
    this:TransmitPlayerById(arg1, 1, nil, nil, nil)
end

function Quest77210:OnSubFailed7721001(arg1)
    print("OnSubFailed7721001")
    this:RecycleAllRes()
end

function Quest77210:OnSubStart7721006(arg1)
    print("OnSubStart7721006")
end

function Quest77210:OnSubFinish7721006(arg1)
    print("OnSubFinish7721006")
end

function Quest77210:OnSubFailed7721006(arg1)
    print("OnSubFailed7721006")
    this:RecycleAllRes()
end

function Quest77210:OnSubStart7721007(arg1)
    print("OnSubStart7721007")
end

function Quest77210:OnSubFinish7721007(arg1)
    print("OnSubFinish7721007")
end

function Quest77210:OnSubFailed7721007(arg1)
    print("OnSubFailed7721007")
    this:RecycleAllRes()
end

function Quest77210:OnSubStart7721008(arg1)
    print("OnSubStart7721008")
end

function Quest77210:OnSubFinish7721008(arg1)
    print("OnSubFinish7721008")
end

function Quest77210:OnSubFailed7721008(arg1)
    print("OnSubFailed7721008")
    this:RecycleAllRes()
end

function Quest77210:OnSubStart7721009(arg1)
    print("OnSubStart7721009")
end

function Quest77210:OnSubFinish7721009(arg1)
    print("OnSubFinish7721009")
end

function Quest77210:OnSubFailed7721009(arg1)
    print("OnSubFailed7721009")
    this:RecycleAllRes()
end

function Quest77210:OnSubStart7721002(arg1)
    print("OnSubStart7721002")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(0, npcs.Npc22734.id, 0, 7721002, 20, true)
end

function Quest77210:OnSubFinish7721002(arg1)
    print("OnSubFinish7721002")
    this:NpcDestroyWithAfterIntercall(3, npcs.Npc22734.alias)
end

return Quest77210
