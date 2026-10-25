require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest5005 = class("Quest5005", QuestActorProxy)
Quest5005.defaultAlias = "Quest5005"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs

function Quest5005:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
end

function Quest5005:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["500502"] = self.OnSubStart500502,
        ["500505"] = self.OnSubStart500505,
        ["500501"] = self.OnSubStart500501,
        ["500506"] = self.OnSubStart500506,
        ["500507"] = self.OnSubStart500507,
        ["500508"] = self.OnSubStart500508,
        ["500510"] = self.OnSubStart500510
    }
end

function Quest5005:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["500502"] = self.OnSubFinish500502,
        ["500505"] = self.OnSubFinish500505,
        ["500501"] = self.OnSubFinish500501,
        ["500506"] = self.OnSubFinish500506,
        ["500507"] = self.OnSubFinish500507,
        ["500508"] = self.OnSubFinish500508,
        ["500510"] = self.OnSubFinish500510
    }
end

function Quest5005:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["500505"] = self.OnSubFailed500505,
        ["500501"] = self.OnSubFailed500501,
        ["500506"] = self.OnSubFailed500506,
        ["500508"] = self.OnSubFailed500508,
        ["500510"] = self.OnSubFailed500510
    }
end

function Quest5005:Start()
    print("Start")
end

function Quest5005:OnDestroy()
    print("OnDestroy")
end

function Quest5005:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest5005:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest5005:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest5005:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
    local n = 0.5
    if arg6 then
        n = 0
    end

    this:CreateQuestNpcWithTriggerBlackEx("Q" .. arg4 .. "N" .. arg2 .. "Trigger", arg4, arg2, arg3, arg5, n, arg1, 0.5, 2)
end

function Quest5005:NpcCreateWithActionSafeCall(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg3, arg2, arg1)
    end)
end

function Quest5005:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest5005:OnSubStart500502(arg1)
    print("OnSubStart500502")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1.5, npcs.Npc1089.id, 0, 500502, 50, true)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc6100.id, arg1)
    this:CreateLocalGadget(74002013, "1", {x = 44.969, y = 2.653, z = 2.584}, {x = -60.622, y = -166.967, z = -5.038}, 1095, nil, nil, true, 0, true)
    this:CreateLocalGadget(74001003, "2", {x = 50.329, y = 2.631, z = -0.659}, {x = 0, y = 29.12, z = 0}, 1095, nil, nil, true, 0, true)
    this:ActionSafeCall(function(arg1)
        this:GetQuestNpcActor(npcs.Npc6100.alias, 5005):DoFreeStyle(1120, true, nil, true, true, false, true)
    end)
end

function Quest5005:OnSubFinish500502(arg1)
    print("OnSubFinish500502")
    this:SafeDestroyQuestNpc(npcs.Npc1089.alias, 1095)
    this:SafeDestroyQuestNpc(npcs.Npc6100.alias, 3)
end

function Quest5005:OnSubStart500505(arg1)
    print("OnSubStart500505")
    this:CreateLocalGadget(74002013, "1", {x = 44.969, y = 2.653, z = 2.584}, {x = -60.622, y = -166.967, z = -5.038}, 1095, nil, nil, true, 0, true)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc1089.id, arg1)
    this:CreateQuestNpc(arg1, npcs.Npc14291.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc14290.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc14242.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc14243.id, 0, false, 0)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc1087.id, arg1)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc1091.id, arg1)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc1092.id, arg1)
    this:CreateQuestNpc(arg1, npcs.Npc14359.id, 0, false, 0)
    this:ActionSafeCall(function(arg1)
        this:GetQuestNpcActor(npcs.Npc1087.alias, 5005):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc1089.alias, 5005):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc1091.alias, 5005):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc1092.alias, 5005):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc1087.alias, 5005):LookAt({x = 40.555, y = 2.393, z = 4.75})
        this:GetQuestNpcActor(npcs.Npc1091.alias, 5005):LookAt({x = 37.49, y = 2.248, z = -5.156})
        this:GetQuestNpcActor(npcs.Npc1092.alias, 5005):LookAt({x = 36.847, y = 2.203, z = 4.453})
        this:GetQuestNpcActor(npcs.Npc1089.alias, 5005):LookAt({x = 50.004, y = 2.804, z = -0.48})
        this:GetQuestNpcActor(npcs.Npc1087.alias, 5005):DoFreeStyle(1130, true, nil, true, true, false, true)
        this:GetQuestNpcActor(npcs.Npc1089.alias, 5005):DoFreeStyle(1120, true, nil, true, true, false, true)
        this:GetQuestNpcActor(npcs.Npc1091.alias, 5005):DoFreeStyle(1220, true, nil, true, true, false, true)
        this:GetQuestNpcActor(npcs.Npc1092.alias, 5005):DoFreeStyle(1190, true, nil, true, true, false, true)
        this:QuestLimitRegionTask(500505, 1095, datas.roomScenes, {x = 40, y = 1.7, z = 0}, {x = 0, y = 0, z = 0}, 0.5, 19, 25, 0.3, "QUEST_Message_Q300790", "QUEST_Message_Q300791", "", nil, nil, nil)
        this:CreateLocalGadget(74001003, "2", {x = 50.329, y = 2.631, z = -0.659}, {x = 0, y = 29.12, z = 0}, 1095, nil, nil, true, 0, true)
        this:CreateLocalGadget(74001007, "3", {x = 50.189, y = 2.628, z = 0.26}, {x = 0, y = 29.12, z = 0}, 1095, nil, nil, true, 0, true)
    end)
end

function Quest5005:OnSubFinish500505(arg1)
    print("OnSubFinish500505")
end

function Quest5005:OnSubFailed500505(arg1)
    print("OnSubFailed500505")
    this:ClearQuestLimitRegionTask()
    this:RemoveLocalGadget(74001007, "3")
    this:DestroyQuestNpcActor(npcs.Npc1087.alias, 1095)
    this:DestroyQuestNpcActor(npcs.Npc1089.alias, 1095)
    this:DestroyQuestNpcActor(npcs.Npc1091.alias, 1095)
    this:DestroyQuestNpcActor(npcs.Npc1092.alias, 1095)
    this:DestroyQuestNpcActor(npcs.Npc14290.alias, 1095)
    this:DestroyQuestNpcActor(npcs.Npc14291.alias, 1095)
    this:DestroyQuestNpcActor(npcs.Npc14242.alias, 1095)
    this:DestroyQuestNpcActor(npcs.Npc14243.alias, 1095)
    this:DestroyQuestNpcActor(npcs.Npc14359.alias, 1095)
end

function Quest5005:OnSubStart500501(arg1)
    print("OnSubStart500501")
    this:CreateQuestNpc(arg1, npcs.Npc1092.id, 0, false, 0)
    this:CreateLocalGadget(74002013, "1", {x = 44.969, y = 2.653, z = 2.584}, {x = -60.622, y = -166.967, z = -5.038}, 1095, nil, nil, false, 0, true)
    this:QuestLimitRegionTask(500501, 1095, datas.roomScenes, {x = 38, y = 1.6, z = -1.5}, {x = 0, y = 0, z = 0}, 0.5, 19, 25, 0.3, "QUEST_Message_Q300790", "QUEST_Message_Q300791", "", nil, nil, nil)
    this:CreateLocalGadget(74001003, "2", {x = 50.329, y = 2.631, z = -0.659}, {x = 0, y = 29.12, z = 0}, 1095, nil, nil, false, 0, true)
    this:ActionSafeCall(function(arg1)
        this:GetQuestNpcActor(npcs.Npc1087.alias, 5005):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc1089.alias, 5005):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc1091.alias, 5005):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc1092.alias, 5005):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc1087.alias, 5005):LookAt({x = 40.555, y = 2.393, z = 4.75})
        this:GetQuestNpcActor(npcs.Npc1091.alias, 5005):LookAt({x = 37.49, y = 2.248, z = -5.156})
        this:GetQuestNpcActor(npcs.Npc1092.alias, 5005):LookAt({x = 36.847, y = 2.203, z = 4.453})
        this:GetQuestNpcActor(npcs.Npc1089.alias, 5005):LookAt({x = 50.004, y = 2.804, z = -0.48})
        this:GetQuestNpcActor(npcs.Npc1087.alias, 5005):DoFreeStyle(1130, true, nil, true, true, false, true)
        this:GetQuestNpcActor(npcs.Npc1089.alias, 5005):DoFreeStyle(1120, true, nil, true, true, false, true)
        this:GetQuestNpcActor(npcs.Npc1091.alias, 5005):DoFreeStyle(1220, true, nil, true, true, false, true)
        this:GetQuestNpcActor(npcs.Npc1092.alias, 5005):DoFreeStyle(1190, true, nil, true, true, false, true)
        this:CreateLocalGadget(74001007, "3", {x = 50.189, y = 2.628, z = 0.26}, {x = 0, y = 29.12, z = 0}, 1095, nil, nil, false, 0, true)
    end)
end

function Quest5005:OnSubFinish500501(arg1)
    print("OnSubFinish500501")
    this:SafeDestroyQuestNpc(npcs.Npc14290.alias, 1095)
    this:SafeDestroyQuestNpc(npcs.Npc14291.alias, 1095)
    this:SafeDestroyQuestNpc(npcs.Npc14242.alias, 1095)
    this:SafeDestroyQuestNpc(npcs.Npc14243.alias, 1095)
    this:SafeDestroyQuestNpc(npcs.Npc14359.alias, 1095)
end

function Quest5005:OnSubFailed500501(arg1)
    print("OnSubFailed500501")
    this:ClearQuestLimitRegionTask()
    this:RemoveLocalGadget(74001007, "3")
    this:RemoveLocalGadget(74001011, "11")
    this:DestroyQuestNpcActor(npcs.Npc1087.alias, 1095)
    this:DestroyQuestNpcActor(npcs.Npc1089.alias, 1095)
    this:DestroyQuestNpcActor(npcs.Npc1091.alias, 1095)
    this:DestroyQuestNpcActor(npcs.Npc1092.alias, 1095)
    this:DestroyQuestNpcActor(npcs.Npc14290.alias, 1095)
    this:DestroyQuestNpcActor(npcs.Npc14291.alias, 1095)
    this:DestroyQuestNpcActor(npcs.Npc14242.alias, 1095)
    this:DestroyQuestNpcActor(npcs.Npc14243.alias, 1095)
    this:DestroyQuestNpcActor(npcs.Npc14359.alias, 1095)
end

function Quest5005:OnSubStart500506(arg1)
    print("OnSubStart500506")
    this:CreateQuestNpc(arg1, npcs.Npc14140.id, 0, false, 0)
    this:CreateLocalGadget(74002013, "1", {x = 44.969, y = 2.653, z = 2.584}, {x = -60.622, y = -166.967, z = -5.038}, 1095, nil, nil, false, 0, true)
    this:DeployStoryByQuest(110500501)
    this:DisableMainPageWithConfigByQuest(true, "DisableNatlanMainQuest")
    this:QuestLimitRegionTask(500506, 1095, datas.roomScenes, {x = 38, y = 1.6, z = -1.5}, {x = 0, y = 0, z = 0}, 0.5, 19, 25, 0.3, "QUEST_Message_Q300790", "QUEST_Message_Q300791", "", nil, nil, nil)
    this:CreateLocalGadget(74001003, "2", {x = 50.329, y = 2.631, z = -0.659}, {x = 0, y = 29.12, z = 0}, 1095, nil, nil, false, 0, true)
    this:CreateLocalGadget(74001007, "3", {x = 50.189, y = 2.628, z = 0.26}, {x = 0, y = 29.12, z = 0}, 1095, nil, nil, false, 0, true)
end

function Quest5005:OnSubFinish500506(arg1)
    print("OnSubFinish500506")
    this:SafeDestroyQuestNpc(npcs.Npc1087.alias, 1095)
    this:SafeDestroyQuestNpc(npcs.Npc1089.alias, 1095)
    this:SafeDestroyQuestNpc(npcs.Npc1091.alias, 1095)
    this:SafeDestroyQuestNpc(npcs.Npc1092.alias, 1095)
    this:SafeDestroyQuestNpc(npcs.Npc14140.alias, 1095)
    this:DisableMainPageWithConfigByQuest(false, "DisableNatlanMainQuest")
    this:CancelStoryByQuest(110500501)
    this:ClearQuestLimitRegionTask()
    this:RemoveLocalGadget(74001007, "3")
end

function Quest5005:OnSubFailed500506(arg1)
    print("OnSubFailed500506")
    this:DisableMainPageWithConfigByQuest(false, "DisableNatlanMainQuest")
    this:CancelStoryByQuest(110500501)
    this:ClearQuestLimitRegionTask()
    this:RemoveLocalGadget(74001007, "3")
    this:RemoveLocalGadget(74001011, "11")
    this:DestroyQuestNpcActor(npcs.Npc1087.alias, 1095)
    this:DestroyQuestNpcActor(npcs.Npc1089.alias, 1095)
    this:DestroyQuestNpcActor(npcs.Npc1091.alias, 1095)
    this:DestroyQuestNpcActor(npcs.Npc1092.alias, 1095)
    this:DestroyQuestNpcActor(npcs.Npc14140.alias, 1095)
end

function Quest5005:OnSubStart500507(arg1)
    print("OnSubStart500507")
    this:NpcCreateWithActionSafeCall(0, npcs.Npc1089.id, arg1)
    this:ActionSafeCall(function(arg1)
        this:GetQuestNpcActor(npcs.Npc1089.alias, 5005):DoFreeStyle(1220, true, nil, true, true, false, false)
        this:CreateLocalGadget(74002013, "1", {x = 44.969, y = 2.653, z = 2.584}, {x = -60.622, y = -166.967, z = -5.038}, 1095, nil, nil, true, 0, true)
        this:CreateLocalGadget(74001003, "2", {x = 50.329, y = 2.631, z = -0.659}, {x = 0, y = 29.12, z = 0}, 1095, nil, nil, true, 0, true)
    end)
end

function Quest5005:OnSubFinish500507(arg1)
    print("OnSubFinish500507")
    this:SafeDestroyQuestNpc(npcs.Npc1089.alias, 1095)
    this:RemoveLocalGadget(74002013, "1")
    this:RemoveLocalGadget(74001003, "2")
end

function Quest5005:OnSubStart500508(arg1)
    print("OnSubStart500508")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Npc1087.id, 0, 500508, 25, false)
end

function Quest5005:OnSubFinish500508(arg1)
    print("OnSubFinish500508")
    this:SafeDestroyQuestNpc(npcs.Npc1087.alias, 20228)
end

function Quest5005:OnSubFailed500508(arg1)
    print("OnSubFailed500508")
    this:ActorDestroy("Q500508N1087Trigger")
end

function Quest5005:OnSubStart500510(arg1)
    print("OnSubStart500510")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Npc1087.id, 0, 500510, 12, false)
end

function Quest5005:OnSubFinish500510(arg1)
    print("OnSubFinish500510")
    this:SafeDestroyQuestNpc(npcs.Npc1087.alias, 20228)
end

function Quest5005:OnSubFailed500510(arg1)
    print("OnSubFailed500510")
    this:ActorDestroy("Q500510N1087Trigger")
end

return Quest5005
