require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71114 = class("Quest71114", QuestActorProxy)
Quest71114.defaultAlias = "Quest71114"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest71114:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest71114:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7111401"] = self.OnSubStart7111401,
        ["7111402"] = self.OnSubStart7111402,
        ["7111403"] = self.OnSubStart7111403,
        ["7111406"] = self.OnSubStart7111406,
        ["7111404"] = self.OnSubStart7111404,
        ["7111405"] = self.OnSubStart7111405,
        ["7111407"] = self.OnSubStart7111407,
        ["7111408"] = self.OnSubStart7111408,
        ["7111409"] = self.OnSubStart7111409
    }
end

function Quest71114:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7111401"] = self.OnSubFinish7111401,
        ["7111402"] = self.OnSubFinish7111402,
        ["7111403"] = self.OnSubFinish7111403,
        ["7111406"] = self.OnSubFinish7111406,
        ["7111404"] = self.OnSubFinish7111404,
        ["7111405"] = self.OnSubFinish7111405,
        ["7111407"] = self.OnSubFinish7111407,
        ["7111408"] = self.OnSubFinish7111408,
        ["7111409"] = self.OnSubFinish7111409
    }
end

function Quest71114:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7111401"] = self.OnSubFailed7111401,
        ["7111402"] = self.OnSubFailed7111402,
        ["7111403"] = self.OnSubFailed7111403,
        ["7111406"] = self.OnSubFailed7111406,
        ["7111404"] = self.OnSubFailed7111404,
        ["7111405"] = self.OnSubFailed7111405,
        ["7111407"] = self.OnSubFailed7111407,
        ["7111408"] = self.OnSubFailed7111408,
        ["7111409"] = self.OnSubFailed7111409
    }
end

function Quest71114:Start()
    print("Start")
end

function Quest71114:OnDestroy()
    print("OnDestroy")
end

function Quest71114:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71114:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71114:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc2526.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13913.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13914.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13489.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13490.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13491.alias, 3)
    this:LightNotifyTo(npcs.Npc2526.alias, 0, true)
    this:ActorDestroy("Q7111404trigger")
    this:ActorDestroy("Q7111402trigger")
    this:ActorDestroy("Q7111406trigger")
    this:ActorDestroy("Q71114monsterlook")
    this:ActorDestroy("Q71114qiumen")
    this:ActorDestroy("Q7111408trigger")
    this:ActorDestroy("Q7111409trigger")
    this:ActorDestroy("Q7111407trigger")
    this:ActorDestroy("Q7111406monster2")
    this:ActorDestroy("Q7111405finishquest")
end

function Quest71114:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest71114:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:NotifyTo(arg1, arg2, arg3)
    end)
end

function Quest71114:OnSubStart7111401(arg1)
    print("OnSubStart7111401")
end

function Quest71114:OnSubFinish7111401(arg1)
    print("OnSubFinish7111401")
end

function Quest71114:OnSubFailed7111401(arg1)
    print("OnSubFailed7111401")
end

function Quest71114:OnSubStart7111402(arg1)
    print("OnSubStart7111402")
    this:CreateQuestNpc(arg1, npcs.Npc13913.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc2526.id, 0)
    this:GetQuestNpcActor(npcs.Npc2526.alias, 71114):DoFreeStyle(1190, true, nil, true, true, false, false)
end

function Quest71114:OnSubFinish7111402(arg1)
    print("OnSubFinish7111402")
    this:SafeDestroyQuestNpc(npcs.Npc13913.alias, 3)
end

function Quest71114:OnSubFailed7111402(arg1)
    print("OnSubFailed7111402")
end

function Quest71114:OnSubStart7111403(arg1)
    print("OnSubStart7111403")
    this:CreateQuestNpc(arg1, npcs.Npc13914.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc2526.id, 0)
    this:GetQuestNpcActor(npcs.Npc2526.alias, 71114):DoFreeStyle(1190, true, nil, true, true, false, false)
end

function Quest71114:OnSubFinish7111403(arg1)
    print("OnSubFinish7111403")
    this:SafeDestroyQuestNpc(npcs.Npc13914.alias, 3)
end

function Quest71114:OnSubFailed7111403(arg1)
    print("OnSubFailed7111403")
end

function Quest71114:OnSubStart7111406(arg1)
    print("OnSubStart7111406")
end

function Quest71114:OnSubFinish7111406(arg1)
    print("OnSubFinish7111406")
    this:ActionSafeCall(function(arg1)
        this:QuestNarratorTask(datas.Q7111401narrator, nil)
    end)
end

function Quest71114:OnSubFailed7111406(arg1)
    print("OnSubFailed7111406")
end

function Quest71114:OnSubStart7111404(arg1)
    print("OnSubStart7111404")
    this:GetQuestNpcActor(npcs.Npc2526.alias, 71114):DoFreeStyle(1190, true, nil, true, true, false, false)
end

function Quest71114:OnSubFinish7111404(arg1)
    print("OnSubFinish7111404")
    this:SafeDestroyQuestNpc(npcs.Npc2526.alias, 3)
    this:ActionSafeCall(function(arg1)
        if this:GetQuestGlobalVar(7111001) == 0 then
            this:QuestNarratorTask(datas.Q71114041narrator, nil)
        else
            this:QuestNarratorTask(datas.Q71114042narrator, nil)
        end
    end)
end

function Quest71114:OnSubFailed7111404(arg1)
    print("OnSubFailed7111404")
end

function Quest71114:OnSubStart7111405(arg1)
    print("OnSubStart7111405")
    this:CreateQuestNpc(arg1, npcs.Npc13489.id, 0)
    this:GetQuestNpcActor(npcs.Npc13489.alias, 71114):DoFreeStyle(4190, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc13490.id, 0)
    this:GetQuestNpcActor(npcs.Npc13490.alias, 71114):DoFreeStyle(4180, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc13491.id, 0)
    this:GetQuestNpcActor(npcs.Npc13491.alias, 71114):DoFreeStyle(1070, true, nil, true, true, false, false)
    this:DailyNpcSafeHideSelf(npcs.Npc2526.alias, 1, true)
    actorMgr:CreateActorWithPos("Q7111406monster2", "Actor/Gadget/Q7111406monster2", 70900002, 0, points.Q71114qiu.pos, points.Q71114qiu.rot, true, false, 3)
    actorMgr:CreateActorWithPos("Q71114monsterlook", "Actor/Gadget/Q71114monsterlook", 70900002, 0, points.Q7111407triggerpoint.pos, points.Q7111407triggerpoint.rot, true, false, 3)
end

function Quest71114:OnSubFinish7111405(arg1)
    print("OnSubFinish7111405")
    this:ClearNarratorTask()
    this:ActorDestroy("Q71114monsterlook")
end

function Quest71114:OnSubFailed7111405(arg1)
    print("OnSubFailed7111405")
end

function Quest71114:OnSubStart7111407(arg1)
    print("OnSubStart7111407")
    this:GetQuestNpcActor(npcs.Npc13489.alias, 71114):DoFreeStyle(4190, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc13490.alias, 71114):DoFreeStyle(4180, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc13491.alias, 71114):DoFreeStyle(1070, true, nil, true, true, false, false)
    this:DailyNpcSafeHideSelf(npcs.Npc2526.alias, 1, true)
    actorMgr:CreateActorWithPos("Q7111407trigger", "Actor/Gadget/Q7111407trigger", 70900002, 0, points.Q7111407triggerpoint.pos, points.Q7111407triggerpoint.rot, true, false, 3)
    actorMgr:CreateActorWithPos("Q71114qiumen", "Actor/Gadget/Q71114qiumen", 70900002, 0, points.Q71114qiu.pos, points.Q71114qiu.rot, true, false, 3)
    this:QuestNarratorTask(datas.Q7111406narrator2, nil)
end

function Quest71114:OnSubFinish7111407(arg1)
    print("OnSubFinish7111407")
    this:TransmitPlayerById(arg1, 1, nil, nil, nil)
    this:ClearNarratorTask()
    this:ActorDestroy("Q71114qiumen")
    this:ActorDestroy("Q7111407trigger")
end

function Quest71114:OnSubFailed7111407(arg1)
    print("OnSubFailed7111407")
end

function Quest71114:OnSubStart7111408(arg1)
    print("OnSubStart7111408")
    this:CreateQuestNpc(arg1, npcs.Npc13489.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13490.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13491.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc2526.id, 0)
    this:GetQuestNpcActor(npcs.Npc2526.alias, 71114):DoFreeStyle(1190, true, nil, true, true, false, false)
    actorMgr:CreateActorWithPos("Q7111408trigger", "Actor/Gadget/Q7111408trigger", 70900002, 0, points.Q7111408transmit.pos, points.Q7111408transmit.rot, true, false, 3)
end

function Quest71114:OnSubFinish7111408(arg1)
    print("OnSubFinish7111408")
end

function Quest71114:OnSubFailed7111408(arg1)
    print("OnSubFailed7111408")
end

function Quest71114:OnSubStart7111409(arg1)
    print("OnSubStart7111409")
    this:CreateQuestNpc(arg1, npcs.Npc13489.id, 0)
    this:GetQuestNpcActor(npcs.Npc13489.alias, 71114):DoFreeStyle(1120, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc13490.id, 0)
    this:GetQuestNpcActor(npcs.Npc13490.alias, 71114):DoFreeStyle(1170, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc13491.id, 0)
    this:GetQuestNpcActor(npcs.Npc13491.alias, 71114):DoFreeStyle(1230, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc2526.id, 0)
    this:GetQuestNpcActor(npcs.Npc2526.alias, 71114):DoFreeStyle(1120, true, nil, true, true, false, true)
    actorMgr:CreateActorWithPos("Q7111409trigger", "Actor/Gadget/Q7111409trigger", 70900002, 0, points.Q71111409triggerpoint.pos, points.Q71111409triggerpoint.rot, true, false, 3)
end

function Quest71114:OnSubFinish7111409(arg1)
    print("OnSubFinish7111409")
    this:SafeDestroyQuestNpc(npcs.Npc13489.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13490.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13491.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc2526.alias, 3)
end

function Quest71114:OnSubFailed7111409(arg1)
    print("OnSubFailed7111409")
end

return Quest71114
