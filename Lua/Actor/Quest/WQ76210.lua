require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76210 = class("Quest76210", QuestActorProxy)
Quest76210.defaultAlias = "Quest76210"
local clientData
local this
local mainID
local actorAlias
local npcs
local points

function Quest76210:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest76210:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7621001"] = self.OnSubStart7621001,
        ["7621009"] = self.OnSubStart7621009,
        ["7621011"] = self.OnSubStart7621011,
        ["7621010"] = self.OnSubStart7621010,
        ["7621002"] = self.OnSubStart7621002,
        ["7621007"] = self.OnSubStart7621007,
        ["7621008"] = self.OnSubStart7621008,
        ["7621003"] = self.OnSubStart7621003,
        ["7621005"] = self.OnSubStart7621005,
        ["7621006"] = self.OnSubStart7621006,
        ["7621004"] = self.OnSubStart7621004
    }
end

function Quest76210:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7621001"] = self.OnSubFinish7621001,
        ["7621009"] = self.OnSubFinish7621009,
        ["7621011"] = self.OnSubFinish7621011,
        ["7621010"] = self.OnSubFinish7621010,
        ["7621002"] = self.OnSubFinish7621002,
        ["7621007"] = self.OnSubFinish7621007,
        ["7621008"] = self.OnSubFinish7621008,
        ["7621003"] = self.OnSubFinish7621003,
        ["7621005"] = self.OnSubFinish7621005,
        ["7621006"] = self.OnSubFinish7621006,
        ["7621004"] = self.OnSubFinish7621004
    }
end

function Quest76210:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7621010"] = self.OnSubFailed7621010,
        ["7621008"] = self.OnSubFailed7621008,
        ["7621003"] = self.OnSubFailed7621003,
        ["7621006"] = self.OnSubFailed7621006
    }
end

function Quest76210:Start()
    print("Start")
end

function Quest76210:OnDestroy()
    print("OnDestroy")
end

function Quest76210:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76210:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76210:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest76210:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ActorDestroy("Q7621007Trigger", nil)
    this:ActorDestroy("Q7621004Trigger_1", 76210)
end

function Quest76210:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 7621001 then
        this:SetQuestVarByMainId(0, 1)
    elseif arg1 == 7621002 then
        this:SetQuestVarByMainId(0, 2)
    end
end

function Quest76210:ActorDestroy(arg1, arg2)
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

function Quest76210:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest76210:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest76210:OnSubStart7621001(arg1)
    print("OnSubStart7621001")
end

function Quest76210:OnSubFinish7621001(arg1)
    print("OnSubFinish7621001")
end

function Quest76210:OnSubStart7621009(arg1)
    print("OnSubStart7621009")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7621009, 0, 50, 0, npcs.Npc22411.id)
end

function Quest76210:OnSubFinish7621009(arg1)
    print("OnSubFinish7621009")
end

function Quest76210:OnSubStart7621011(arg1)
    print("OnSubStart7621011")
end

function Quest76210:OnSubFinish7621011(arg1)
    print("OnSubFinish7621011")
end

function Quest76210:OnSubStart7621010(arg1)
    print("OnSubStart7621010")
end

function Quest76210:OnSubFinish7621010(arg1)
    print("OnSubFinish7621010")
end

function Quest76210:OnSubFailed7621010(arg1)
    print("OnSubFailed7621010")
    this:RecycleAllRes()
end

function Quest76210:OnSubStart7621002(arg1)
    print("OnSubStart7621002")
end

function Quest76210:OnSubFinish7621002(arg1)
    print("OnSubFinish7621002")
    this:NpcDestroyImmediately(103, npcs.Npc22411.alias)
end

function Quest76210:OnSubStart7621007(arg1)
    print("OnSubStart7621007")
    this:CreateQuestNpc(arg1, npcs.Npc22411.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Q7621007Trigger", "Actor/Gadget/Q7621007Trigger", 70900002, 0, points._Q7621007TriggerPoint_.pos, points._Q7621007TriggerPoint_.rot, true, false, 103, nil, 0, 76210)
end

function Quest76210:OnSubFinish7621007(arg1)
    print("OnSubFinish7621007")
end

function Quest76210:OnSubStart7621008(arg1)
    print("OnSubStart7621008")
end

function Quest76210:OnSubFinish7621008(arg1)
    print("OnSubFinish7621008")
end

function Quest76210:OnSubFailed7621008(arg1)
    print("OnSubFailed7621008")
    this:RecycleAllRes()
end

function Quest76210:OnSubStart7621003(arg1)
    print("OnSubStart7621003")
end

function Quest76210:OnSubFinish7621003(arg1)
    print("OnSubFinish7621003")
    this:NpcDestroyImmediately(103, npcs.Npc22411.alias)
end

function Quest76210:OnSubFailed7621003(arg1)
    print("OnSubFailed7621003")
    this:RecycleAllRes()
end

function Quest76210:OnSubStart7621005(arg1)
    print("OnSubStart7621005")
    this:CreateQuestNpc(arg1, npcs.Npc22411.id, 0, false, 0)
end

function Quest76210:OnSubFinish7621005(arg1)
    print("OnSubFinish7621005")
    this:NpcDestroyImmediately(103, npcs.Npc22411.alias)
end

function Quest76210:OnSubStart7621006(arg1)
    print("OnSubStart7621006")
end

function Quest76210:OnSubFinish7621006(arg1)
    print("OnSubFinish7621006")
end

function Quest76210:OnSubFailed7621006(arg1)
    print("OnSubFailed7621006")
    this:RecycleAllRes()
end

function Quest76210:OnSubStart7621004(arg1)
    print("OnSubStart7621004")
    this:CreateQuestNpc(arg1, npcs.Npc22411.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Q7621004Trigger_1", "Actor/Gadget/Q7621004Trigger_1", 70900002, 0, points._Q7621004Trigger_1Point_.pos, points._Q7621004Trigger_1Point_.rot, true, false, 103, nil, 0, 76210)
end

function Quest76210:OnSubFinish7621004(arg1)
    print("OnSubFinish7621004")
    this:NpcDestroyImmediately(103, npcs.Npc22411.alias)
end

return Quest76210
