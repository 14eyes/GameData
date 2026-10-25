require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76176 = class("Quest76176", QuestActorProxy)
Quest76176.defaultAlias = "Quest76176"
local clientData
local this
local mainID
local actorAlias
local npcs
local points

function Quest76176:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest76176:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7617601"] = self.OnSubStart7617601,
        ["7617602"] = self.OnSubStart7617602,
        ["7617603"] = self.OnSubStart7617603,
        ["7617604"] = self.OnSubStart7617604
    }
end

function Quest76176:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7617601"] = self.OnSubFinish7617601,
        ["7617602"] = self.OnSubFinish7617602,
        ["7617603"] = self.OnSubFinish7617603,
        ["7617604"] = self.OnSubFinish7617604
    }
end

function Quest76176:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7617603"] = self.OnSubFailed7617603}
end

function Quest76176:Start()
    print("Start")
end

function Quest76176:OnDestroy()
    print("OnDestroy")
end

function Quest76176:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76176:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76176:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest76176:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ActorDestroy("Q7617602Trigger", 76176)
    this:ActorDestroy("Q7617602Trigger", 76176)
    this:ActorDestroy("Q7617602Trigger", 76176)
    this:ActorDestroy("Q7617604Trigger", 76176)
end

function Quest76176:ActorDestroy(arg1, arg2)
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

function Quest76176:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest76176:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
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

function Quest76176:OnSubStart7617601(arg1)
    print("OnSubStart7617601")
    actorMgr:CreateActorWithPos("Q7617602Trigger", "Actor/Gadget/Q7617602Trigger", 70900002, 0, points._Q7617602TriggerPoint_.pos, points._Q7617602TriggerPoint_.rot, true, false, 102, nil, 0, 76176)
end

function Quest76176:OnSubFinish7617601(arg1)
    print("OnSubFinish7617601")
    this:TransmitPlayerUseCustomizedTplById(arg1, 1, 102)
end

function Quest76176:OnSubStart7617602(arg1)
    print("OnSubStart7617602")
    actorMgr:CreateActorWithPos("Q7617602Trigger", "Actor/Gadget/Q7617602Trigger", 70900002, 0, points._Q7617602TriggerPoint_.pos, points._Q7617602TriggerPoint_.rot, true, false, 102, nil, 0, 76176)
end

function Quest76176:OnSubFinish7617602(arg1)
    print("OnSubFinish7617602")
end

function Quest76176:OnSubStart7617603(arg1)
    print("OnSubStart7617603")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Npc22435.id, 0, 7617603, 60, true)
    actorMgr:CreateActorWithPos("Q7617602Trigger", "Actor/Gadget/Q7617602Trigger", 70900002, 0, points._Q7617602TriggerPoint_.pos, points._Q7617602TriggerPoint_.rot, true, false, 102, nil, 0, 76176)
end

function Quest76176:OnSubFinish7617603(arg1)
    print("OnSubFinish7617603")
    this:TransmitPlayerUseCustomizedTplById(arg1, 1, 104)
    this:NpcDestroyImmediately(102, npcs.Npc22435.alias)
end

function Quest76176:OnSubFailed7617603(arg1)
    print("OnSubFailed7617603")
    this:RecycleAllRes()
end

function Quest76176:OnSubStart7617604(arg1)
    print("OnSubStart7617604")
    actorMgr:CreateActorWithPos("Q7617604Trigger", "Actor/Gadget/Q7617604Trigger", 70900002, 0, points._Q7617604TriggerPoint_.pos, points._Q7617604TriggerPoint_.rot, true, false, 102, nil, 0, 76176)
end

function Quest76176:OnSubFinish7617604(arg1)
    print("OnSubFinish7617604")
end

return Quest76176
