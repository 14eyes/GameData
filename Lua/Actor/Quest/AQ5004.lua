require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest5004 = class("Quest5004", QuestActorProxy)
Quest5004.defaultAlias = "Quest5004"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest5004:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest5004:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["500401"] = self.OnSubStart500401,
        ["500402"] = self.OnSubStart500402,
        ["500403"] = self.OnSubStart500403,
        ["500404"] = self.OnSubStart500404,
        ["500406"] = self.OnSubStart500406,
        ["500407"] = self.OnSubStart500407,
        ["500405"] = self.OnSubStart500405,
        ["500408"] = self.OnSubStart500408,
        ["500411"] = self.OnSubStart500411,
        ["500413"] = self.OnSubStart500413,
        ["500409"] = self.OnSubStart500409,
        ["500410"] = self.OnSubStart500410,
        ["500412"] = self.OnSubStart500412
    }
end

function Quest5004:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["500401"] = self.OnSubFinish500401,
        ["500402"] = self.OnSubFinish500402,
        ["500403"] = self.OnSubFinish500403,
        ["500404"] = self.OnSubFinish500404,
        ["500406"] = self.OnSubFinish500406,
        ["500407"] = self.OnSubFinish500407,
        ["500405"] = self.OnSubFinish500405,
        ["500408"] = self.OnSubFinish500408,
        ["500411"] = self.OnSubFinish500411,
        ["500413"] = self.OnSubFinish500413,
        ["500409"] = self.OnSubFinish500409,
        ["500410"] = self.OnSubFinish500410,
        ["500412"] = self.OnSubFinish500412
    }
end

function Quest5004:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["500408"] = self.OnSubFailed500408, ["500409"] = self.OnSubFailed500409}
end

function Quest5004:Start()
    print("Start")
end

function Quest5004:OnDestroy()
    print("OnDestroy")
end

function Quest5004:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest5004:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest5004:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest5004:InvokeOnAbility(arg1)
    print("InvokeOnAbility")
end

function Quest5004:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1 then
        actorUtils.FinishQuestID(false, 500405)
    elseif arg1 == 2 then
        actorUtils.FinishQuestID(false, 500410)
    end
end

function Quest5004:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
    local n = 0.5
    if arg6 then
        n = 0
    end

    this:CreateQuestNpcWithTriggerBlackEx("Q" .. arg4 .. "N" .. arg2 .. "Trigger", arg4, arg2, arg3, arg5, n, arg1, 0.5, 2)
end

function Quest5004:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:NotifyTo(arg1, arg3, arg2)
    end)
end

function Quest5004:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest5004:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest5004:NpcCreateWithActionSafeCall(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg3, arg2, arg1)
    end)
end

function Quest5004:OnSubStart500401(arg1)
    print("OnSubStart500401")
    this:CreateQuestNpc(arg1, npcs.Npc6100.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Finish500401", "Actor/Gadget/Finish500401", 70900002, 0, points.Finish500401.pos, points.Finish500401.rot, true, false, 3)
    actorMgr:CreateActorWithPos("Narrator500401", "Actor/Gadget/Narrator500401", 70900002, 0, points.Narrator500401.pos, points.Narrator500401.rot, true, false, 3)
    this:GetQuestNpcActor(npcs.Npc6100.alias, 5004):DoFreeStyle(1120, true, nil, true, true, true, false)
    actorMgr:CreateActorWithPos("Q500401TriggerPosui", "Actor/Gadget/Q500401TriggerPosui", 70900002, 0, points._Q500401TriggerPosuiPoint_.pos, points._Q500401TriggerPosuiPoint_.rot, true, false, 3)
end

function Quest5004:OnSubFinish500401(arg1)
    print("OnSubFinish500401")
    this:ActorDestroy("Narrator500401")
end

function Quest5004:OnSubStart500402(arg1)
    print("OnSubStart500402")
    this:NpcCreateWithNpcTrigger(npcs.Npc6100.id, 0, 10, 500402)
    this:GetQuestNpcActor(npcs.Npc6100.alias, 5004):DoFreeStyle(1120, true, nil, true, true, true, false)
    actorMgr:CreateActorWithPos("Q500401TriggerPosui", "Actor/Gadget/Q500401TriggerPosui", 70900002, 0, points._Q500401TriggerPosuiPoint_.pos, points._Q500401TriggerPosuiPoint_.rot, true, false, 3)
end

function Quest5004:OnSubFinish500402(arg1)
    print("OnSubFinish500402")
    this:SafeDestroyQuestNpc(npcs.Npc6100.alias, 3)
end

function Quest5004:OnSubStart500403(arg1)
    print("OnSubStart500403")
    this:NpcCreateWithNpcTrigger(npcs.Npc14139.id, 0, 8, 500403)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc6100.id, arg1)
    this:ActionSafeCall(function(arg1)
        this:GetQuestNpcActor(npcs.Npc6100.alias, 5004):DoFreeStyle(1230, true, nil, true, true, false, true)
        this:GetQuestNpcActor(npcs.Npc14139.alias, 5004):DoFreeStyle(1283, true, nil, true, true, false, true)
        this:GetQuestNpcActor(npcs.Npc14139.alias, 5004):DisableInteeHeadCtrl(true)
        actorMgr:CreateActorWithPos("Q500401TriggerPosui", "Actor/Gadget/Q500401TriggerPosui", 70900002, 0, points._Q500401TriggerPosuiPoint_.pos, points._Q500401TriggerPosuiPoint_.rot, true, false, 3)
    end)
end

function Quest5004:OnSubFinish500403(arg1)
    print("OnSubFinish500403")
    this:SafeDestroyQuestNpc(npcs.Npc14139.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc6100.alias, 3)
    this:GetQuestNpcActor(npcs.Npc14139.alias, 5004):DisableInteeHeadCtrl(false)
    this:ActorDestroy("Q500401TriggerPosui")
end

function Quest5004:OnSubStart500404(arg1)
    print("OnSubStart500404")
    this:CreateQuestNpc(arg1, npcs.Npc6109.id, 0, false, 0)
    this:DailyNpcSafeHideSelf(npcs.Npc6100.alias, true, 1)
    this:CreateQuestNpc(arg1, npcs.Npc14158.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc6109.alias, 5004):DoFreeStyle(4010, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc14158.alias, 5004):DoFreeStyle(1320, true, nil, true, true, false, true)
    this:CreateLocalGadget(74001004, "1", {x = -2103.39, y = 230.676, z = 8430.432}, {x = 23.324, y = 38.601, z = 268.382}, 3, nil, nil, true, 0, true)
    this:CreateLocalGadget(74001005, "2", {x = -2100.16, y = 230.931, z = 8418.718}, {x = 305.605, y = 0.644, z = 290.465}, 3, nil, nil, true, 0, true)
    this:CreateLocalGadget(74001005, "3", {x = -2100.21, y = 230.819, z = 8418.436}, {x = 274.23, y = 318.434, z = 74.81}, 3, nil, nil, true, 0, true)
    this:CreateLocalGadget(74001017, "7", {x = -2100.19, y = 230.087, z = 8418.561}, {x = 0, y = 332.725, z = 0}, 3, nil, nil, true, 0, true)
end

function Quest5004:OnSubFinish500404(arg1)
    print("OnSubFinish500404")
    this:SafeDestroyQuestNpc(npcs.Npc6109.alias, 3)
    this:RemoveLocalGadget(74001017, "7")
end

function Quest5004:OnSubStart500406(arg1)
    print("OnSubStart500406")
    this:DailyNpcSafeHideSelf(npcs.Npc6100.alias, true, 1)
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc6109.id, 0, false, 0)
        this:GetQuestNpcActor(npcs.Npc6109.alias, 5004):DoFreeStyle(1230, true, nil, true, true, false, true)
        this:GetQuestNpcActor(npcs.Npc14158.alias, 5004):DoFreeStyle(1320, true, nil, true, true, false, true)
        this:CreateLocalGadget(74001004, "1", {x = -2103.39, y = 230.676, z = 8430.432}, {x = 23.324, y = 38.601, z = 268.382}, 3, nil, nil, true, 0, true)
        this:GetQuestNpcActor(npcs.Npc14158.alias, 5004):DisableInteeHeadCtrl(true)
    end)
end

function Quest5004:OnSubFinish500406(arg1)
    print("OnSubFinish500406")
    this:SafeDestroyQuestNpc(npcs.Npc14158.alias, 3)
    this:GetQuestNpcActor(npcs.Npc14158.alias, 5004):DisableInteeHeadCtrl(false)
end

function Quest5004:OnSubStart500407(arg1)
    print("OnSubStart500407")
    this:NpcCreateWithNpcTrigger(npcs.Npc14139.id, 0, 10, 500407)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc14158.id, arg1)
    this:DailyNpcSafeHideSelf(npcs.Npc6100.alias, true, 1)
    this:CreateQuestNpc(arg1, npcs.Npc6109.id, 0, false, 0)
    this:ActionSafeCall(function(arg1)
        this:GetQuestNpcActor(npcs.Npc14158.alias, 5004):DoFreeStyle(1190, true, nil, true, true, false, true)
        this:GetQuestNpcActor(npcs.Npc14139.alias, 5004):DoFreeStyle(1190, true, nil, true, true, false, false)
        this:GetQuestNpcActor(npcs.Npc6109.alias, 5004):DoFreeStyle(1230, true, nil, true, true, false, true)
    end)
end

function Quest5004:OnSubFinish500407(arg1)
    print("OnSubFinish500407")
    this:SafeDestroyQuestNpc(npcs.Npc14158.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc6109.alias, 3)
    this:NatsaurusVehicleOff()
end

function Quest5004:OnSubStart500405(arg1)
    print("OnSubStart500405")
end

function Quest5004:OnSubFinish500405(arg1)
    print("OnSubFinish500405")
end

function Quest5004:OnSubStart500408(arg1)
    print("OnSubStart500408")
    this:DailyNpcSafeHideSelf(npcs.Npc6100.alias, true, 1)
    this:QuestLimitRegionTask(500408, 3, nil, {x = -2276.5, y = 271.71, z = 8618.96}, {x = 0, y = 0, z = 0}, 0.3, 23.5, 30, 0.2, "QUEST_Message_Q300790", "QUEST_Message_Q300791", "", nil, nil, nil)
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc14139.id, 0, false, 0)
        this:GetQuestNpcActor(npcs.Npc14139.alias, 5004):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc14139.alias, 5004):DoFreeStyle(4451, true, nil, true, true, true, true)
        this:BanAvatarFreeStyle()
    end)
end

function Quest5004:OnSubFinish500408(arg1)
    print("OnSubFinish500408")
    this:ResumeAvatarFreeStyle()
end

function Quest5004:OnSubFailed500408(arg1)
    print("OnSubFailed500408")
    this:ClearQuestLimitRegionTask()
    this:ClearSpeechBubbleTask()
    this:RemoveIndexedEffect("1")
    this:ResumeAvatarFreeStyle()
end

function Quest5004:OnSubStart500411(arg1)
    print("OnSubStart500411")
end

function Quest5004:OnSubFinish500411(arg1)
    print("OnSubFinish500411")
    this:PlayIndexedEffect("1", "Eff_SceneObj_QuestChar_01_Abyss", {x = -2271.672, y = 271.657, z = 8620.059}, nil, {x = 0.8, y = 0.8, z = 0.8})
    this:CreateSpeechBubbleTask(npcs.Npc14139.id, 50049911, 0, false, 0, 0, true, true)
end

function Quest5004:OnSubStart500413(arg1)
    print("OnSubStart500413")
end

function Quest5004:OnSubFinish500413(arg1)
    print("OnSubFinish500413")
    this:CreateSpeechBubbleTask(npcs.Npc14139.id, 50049912, 0, true, 25, 30, true, true)
    this:GetQuestNpcActor(npcs.Npc14139.alias, 5004):DoFreeStyle(4061, true, nil, true, true, false, false)
end

function Quest5004:OnSubStart500409(arg1)
    print("OnSubStart500409")
    this:DailyNpcSafeHideSelf(npcs.Npc6100.alias, true, 1)
    this:QuestLimitRegionTask(500409, 3, nil, {x = -2276.5, y = 271.71, z = 8618.96}, {x = 0, y = 0, z = 0}, 0.3, 23.5, 30, 0.2, "QUEST_Message_Q300790", "QUEST_Message_Q300791", "", nil, nil, nil)
    this:CallDelayByQuest("9", 1.5, function(arg1)
        actorMgr:CreateActorWithPos("Q500409TriggerRequest", "Actor/Gadget/Q500409TriggerRequest", 70900002, 0, points.Q500409TriggerRequest.pos, points.Q500409TriggerRequest.rot, true, false, 3)
        actorMgr:GetActor("5004"):RemoveIndexedEffect("1")
    end)
end

function Quest5004:OnSubFinish500409(arg1)
    print("OnSubFinish500409")
    this:ShowBlackScreen(0.2, 1, 0.2, function(arg1_2)
        this:TransmitPlayerByData(arg1, 2, datas.TransmitData500505, nil, nil, nil)
    end, nil, nil, "", false, true)

    this:ClearQuestLimitRegionTask()
    this:SafeDestroyQuestNpc(npcs.Npc14139.alias, 3)
end

function Quest5004:OnSubFailed500409(arg1)
    print("OnSubFailed500409")
    this:ClearQuestLimitRegionTask()
    this:ActorDestroy("Q500409TriggerRequest")
    this:UnCallDelayByQuest("9")
end

function Quest5004:OnSubStart500410(arg1)
    print("OnSubStart500410")
end

function Quest5004:OnSubFinish500410(arg1)
    print("OnSubFinish500410")
    this:RemoveIndexedEffect("1")
end

function Quest5004:OnSubStart500412(arg1)
    print("OnSubStart500412")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1.5, npcs.Npc6100.id, 0, 500412, 20, true)
    this:DailyNpcSafeHideSelf(npcs.Npc14139.alias, true, 1)
end

function Quest5004:OnSubFinish500412(arg1)
    print("OnSubFinish500412")
    this:SafeDestroyQuestNpc(npcs.Npc6100.alias, 3)
    this:LightNotifyTo(npcs.Npc14139.alias, 0, true)
end

return Quest5004
