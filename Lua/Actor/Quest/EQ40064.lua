require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40064 = class("Quest40064", QuestActorProxy)
Quest40064.defaultAlias = "Quest40064"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local gadgets
local datas

function Quest40064:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    gadgets = clientData.Gadgets
    datas = clientData.Datas
end

function Quest40064:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4006401"] = self.OnSubStart4006401,
        ["4006402"] = self.OnSubStart4006402,
        ["4006403"] = self.OnSubStart4006403,
        ["4006404"] = self.OnSubStart4006404,
        ["4006416"] = self.OnSubStart4006416,
        ["4006405"] = self.OnSubStart4006405,
        ["4006406"] = self.OnSubStart4006406,
        ["4006407"] = self.OnSubStart4006407,
        ["4006408"] = self.OnSubStart4006408,
        ["4006409"] = self.OnSubStart4006409,
        ["4006410"] = self.OnSubStart4006410,
        ["4006411"] = self.OnSubStart4006411,
        ["4006412"] = self.OnSubStart4006412,
        ["4006413"] = self.OnSubStart4006413,
        ["4006414"] = self.OnSubStart4006414,
        ["4006417"] = self.OnSubStart4006417,
        ["4006415"] = self.OnSubStart4006415
    }
end

function Quest40064:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4006401"] = self.OnSubFinish4006401,
        ["4006402"] = self.OnSubFinish4006402,
        ["4006403"] = self.OnSubFinish4006403,
        ["4006404"] = self.OnSubFinish4006404,
        ["4006416"] = self.OnSubFinish4006416,
        ["4006405"] = self.OnSubFinish4006405,
        ["4006406"] = self.OnSubFinish4006406,
        ["4006407"] = self.OnSubFinish4006407,
        ["4006408"] = self.OnSubFinish4006408,
        ["4006409"] = self.OnSubFinish4006409,
        ["4006410"] = self.OnSubFinish4006410,
        ["4006411"] = self.OnSubFinish4006411,
        ["4006412"] = self.OnSubFinish4006412,
        ["4006413"] = self.OnSubFinish4006413,
        ["4006414"] = self.OnSubFinish4006414,
        ["4006417"] = self.OnSubFinish4006417,
        ["4006415"] = self.OnSubFinish4006415
    }
end

function Quest40064:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["4006411"] = self.OnSubFailed4006411}
end

function Quest40064:Start()
    print("Start")
end

function Quest40064:OnDestroy()
    print("OnDestroy")
end

function Quest40064:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest40064:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest40064:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.NPC1512Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc10095Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc10095Data.alias, 9)
    self:SafeDestroyQuestNpc(npcs.Npc10011Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc10011Data.alias, 9)
    self:SafeDestroyQuestNpc(npcs.WendyData.alias, 1009)
    self:SafeDestroyQuestNpc(npcs.Npc1032Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1032Data.alias, 1009)
    self:SafeDestroyQuestNpc(npcs.Npc1032Data.alias, 9)
    self:SafeDestroyQuestNpc(npcs.Npc1042Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1042Data.alias, 1009)
    self:SafeDestroyQuestNpc(npcs.Npc1042Data.alias, 9)
    self:SafeDestroyQuestNpc(npcs.Npc10012Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12604Data.alias, 9)
    self:SafeDestroyQuestNpc(npcs.Npc12605Data.alias, 9)
    self:SafeDestroyQuestNpc(npcs.Npc1477Data.alias, 1009)
    self:SafeDestroyQuestNpc(npcs.Npc12625Data.alias, 9)
    self:SafeDestroyQuestNpc(npcs.Npc1409Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1405Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12732Data.alias, 9)
    self:SafeDestroyQuestNpc(npcs.Npc1475Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1523Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1603Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1525Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1465Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1404Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1413Data.alias, 3)
    self:LightNotifyTo(npcs.Npc1409Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc1405Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc1475Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc1523Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc1603Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc1525Data.alias, 0, true)
    local actor = actorMgr:GetActor("40064")
    actor:UnSpawn(gadgets.Gadget70710771Data.alias)
    actor:UnSpawn(gadgets.Gadget70710349Data.alias)
    actor:UnSpawn(gadgets.Gadget70710037Data.alias)
    actor:UnSpawn(gadgets.Gadget70710810Data.alias)
    actor:UnSpawn(gadgets.Gadget70710136Data.alias)
    actorMgr:DestroyEntityActor("Q40064_KazuhaDrunkTrigger", 1009, false)
    actorMgr:DestroyEntityActor("Q4006406_Trigger", 0, false)
    actorMgr:DestroyEntityActor("Q4006407_Trigger", 0, false)
    actorMgr:DestroyEntityActor("Q4006409_Trigger", 9, false)
    actorMgr:DestroyEntityActor("Q4006410_Trigger", 0, false)
    actorMgr:DestroyEntityActor("Q4006411_NarratorTrigger", 9, false)
    actorMgr:DestroyEntityActor("Q4006411_Trigger", 9, false)
    actorMgr:DestroyEntityActor("Q4006414_Trigger", 9, false)
    actorMgr:DestroyEntityActor("Q4006415_Trigger", 9, false)
    actorMgr:DestroyEntityActor("Q4006416_Trigger", 1009, false)
    self:ElemViewCloseCallback()
end

function Quest40064:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest40064:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    self:ActionSafeCall(function(arg1_2)
        arg1_2:NotifyTo(arg1, arg2, arg3)
    end)
end

function Quest40064:NpcCreateWithActionSafeCall(arg1, arg2, arg3)
    self:ActionSafeCall(function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, arg2, arg3)
    end)
end

function Quest40064:ElemViewOpenCallback()
    print("ElemViewOpenCallback")
    actorUtils.UncallOnElemViewOpen(Quest40064.ElemViewOpenCallback)
    if TargetPos ~= nil then
        local avatarPos = actorUtils.GetAvatarPos()
        local tbl = {x = TargetPos.x - avatarPos.x, y = 0, z = TargetPos.z - avatarPos.z}
        local avatarForward = actorUtils.GetAvatarForward()
        local n = 2
        local v = actorUtils.GetAvatarPos()
        v.x = v.x + avatarForward.x * n
        v.y = v.y + 0.4
        v.z = v.z + avatarForward.z * n
        actorMgr:GetActor(clientData.ActorAlias):SpawnGadgetByIdWithPos(4006411, 70710810, 1, v, M.Dir2Euler(tbl))
        Quest40064:CloseCompass()
    end
end

function Quest40064:CloseCompass()
    print("CloseCompass")
    Quest40064:CallOnElemViewClose(self.ElemViewCloseCallback)
end

function Quest40064:OpenCompass()
    print("OpenCompass")
    Quest40064:CallOnElemViewOpen(self.ElemViewOpenCallback)
end

function Quest40064:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 0 then
        actorUtils.FinishQuestID(false, 4006417)
    elseif arg1 == 1 then
        self:ActionSafeCall(function(arg1)
            local questNpcActor = arg1:GetQuestNpcActor(npcs.Npc1032Data.alias)
            questNpcActor:DisableInteeHeadCtrl(true)
            questNpcActor:LookAt(sceneData:GetDummyPoint(1009, "Q4006404_winecup").pos)
            questNpcActor:PlayEmoSync("", "Cs_Emo_Avatar_Common/Cs_Emo_Avatar_Default01", "Cs_Emo_Avatar_Common/Cs_Emo_Avatar_LowClosed01", 0, false, true)
        end)
    end
end

function Quest40064:ElemViewCloseCallback()
    print("ElemViewCloseCallback")
    actorUtils.UncallOnElemViewOpen(Quest40064.ElemViewCloseCallback)
    print("delete compass")
    globalActor:UnSpawn("Gadget70710810")
    Quest40064:OpenCompass()
end

function Quest40064:OnSubStart4006401(arg1)
    print("OnSubStart4006401")
    self:CreateQuestNpc(arg1, npcs.NPC1512Data.id, 1)
end

function Quest40064:OnSubFinish4006401(arg1)
    print("OnSubFinish4006401")
    self:SafeDestroyQuestNpc(npcs.NPC1512Data.alias, 3)
end

function Quest40064:OnSubStart4006402(arg1)
    print("OnSubStart4006402")
    self:CreateQuestNpc(arg1, npcs.Npc10011Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc10012Data.id, 3)
    self:DailyNpcSafeHideSelf(npcs.Npc1405Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc1525Data.alias, 1, true)
    self:CreateQuestNpcWithTrigger("Q4006402_Trigger", 4006402, npcs.Npc10095Data.id, 1, 8)
end

function Quest40064:OnSubFinish4006402(arg1)
    print("OnSubFinish4006402")
    self:SafeDestroyQuestNpc(npcs.Npc10095Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc10011Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc10012Data.alias, 3)
    self:LightNotifyTo(npcs.Npc1405Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc1525Data.alias, 0, true)
end

function Quest40064:OnSubStart4006403(arg1)
    print("OnSubStart4006403")
    self:CreateQuestNpc(arg1, npcs.Npc1477Data.id, 1)
    self:DailyNpcSafeHideSelf(npcs.Npc1409Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc1475Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc1523Data.alias, 1, true)
    self:CreateQuestNpc(arg1, npcs.Npc1404Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc1413Data.id, 3)
end

function Quest40064:OnSubFinish4006403(arg1)
    print("OnSubFinish4006403")
end

function Quest40064:OnSubStart4006404(arg1)
    print("OnSubStart4006404")
    self:CreateQuestNpc(arg1, npcs.WendyData.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc1032Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc1042Data.id, 3)
    self:DailyNpcSafeHideSelf(npcs.Npc1409Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc1475Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc1523Data.alias, 1, true)
    self:UnSpawn(gadgets.Gadget70710037Data.alias)
    self:DelaySpawnGadget(arg1, gadgets.Gadget70710037Data.id, 1, 0)
    self:GetQuestNpcActor(npcs.WendyData.alias):SitOnChair(8010)
    self:GetQuestNpcActor(npcs.Npc1032Data.alias):SitOnChair(8010)
    self:GetQuestNpcActor(npcs.Npc1042Data.alias):SitOnChair(8010)
    self:RequestInteraction(npcs.WendyData.alias)
    self:GetQuestNpcActor(npcs.Npc1477Data.alias):SitOnChair(8010)
end

function Quest40064:OnSubFinish4006404(arg1)
    print("OnSubFinish4006404")
    self:SafeDestroyQuestNpc(npcs.WendyData.alias, 1009)
    self:SafeDestroyQuestNpc(npcs.Npc1404Data.alias, 1009)
    self:SafeDestroyQuestNpc(npcs.Npc1413Data.alias, 1009)
end

function Quest40064:OnSubStart4006416(arg1)
    print("OnSubStart4006416")
    self:NpcCreateWithActionSafeCall(arg1, npcs.Npc1032Data.id, 2)
    self:NpcCreateWithActionSafeCall(arg1, npcs.Npc1042Data.id, 3)
    self:CreateQuestNpc(arg1, npcs.Npc1477Data.id, 4)
    self:DailyNpcSafeHideSelf(npcs.Npc1409Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc1475Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc1523Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc1603Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q4006416_Trigger", "Actor/Gadget/Q4006416_Trigger", 70900002, 0, {x = -1.244, y = 6.93, z = -4.976}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 1009)
    actorMgr:CreateActorWithPos("Q40064_KazuhaDrunkTrigger", "Actor/Gadget/Q40064_KazuhaDrunkTrigger", 70900002, 0, {x = 0.0, y = 0.0, z = 0.0}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 1009)
    self:ActionSafeCall(function(arg1)
        arg1:GetQuestNpcActor(npcs.Npc1477Data.alias):SitOnChair(8010)
    end)
end

function Quest40064:OnSubFinish4006416(arg1)
    print("OnSubFinish4006416")
    self:SafeDestroyQuestNpc(npcs.WendyData.alias, 1009)
    self:ActionSafeCall(function(arg1)
        arg1:LightNotifyTo(npcs.Npc1475Data.alias, 0, true)
        arg1:LightNotifyTo(npcs.Npc1523Data.alias, 0, true)
        arg1:LightNotifyTo(npcs.Npc1603Data.alias, 0, true)
    end)
end

function Quest40064:OnSubStart4006405(arg1)
    print("OnSubStart4006405")
    self:NpcCreateWithActionSafeCall(arg1, npcs.Npc1032Data.id, 1)
    self:NpcCreateWithActionSafeCall(arg1, npcs.Npc1042Data.id, 2)
    self:DailyNpcSafeHideSelf(npcs.Npc1409Data.alias, 1, true)
    self:ActionSafeCall(function(arg1)
        arg1:GetQuestNpcActor(npcs.Npc1477Data.alias):SitOnChair(8010)
    end)

    actorMgr:CreateActorWithPos("Q40064_KazuhaDrunkTrigger", "Actor/Gadget/Q40064_KazuhaDrunkTrigger", 70900002, 0, {x = 0.0, y = 0.0, z = 0.0}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 1009)
end

function Quest40064:OnSubFinish4006405(arg1)
    print("OnSubFinish4006405")
    self:SafeDestroyQuestNpc(npcs.Npc1032Data.alias, 1009)
    self:SafeDestroyQuestNpc(npcs.Npc1042Data.alias, 1009)
    self:SafeDestroyQuestNpc(npcs.Npc1477Data.alias, 1009)
    self:UnSpawn(gadgets.Gadget70710037Data.alias)
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc1032Data.alias)
    questNpcActor:ForceFinishEmoSync(0)
    questNpcActor:DisableInteeHeadCtrl(false)
    if actorMgr:GetActor("Q40064_KazuhaDrunkTrigger") ~= nil then
        self:ActorDestroy("Q40064_KazuhaDrunkTrigger")
    else
    end

    self:LightNotifyTo(npcs.Npc1409Data.alias, 0, true)
end

function Quest40064:OnSubStart4006406(arg1)
    print("OnSubStart4006406")
    self:CreateQuestNpc(arg1, npcs.Npc10095Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc10011Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc10012Data.id, 5)
    actorMgr:CreateActorWithPos("Q4006406_Trigger", "Actor/Gadget/Q4006406_Trigger", 70900002, 0, {x = 2226.683, y = 209.99, z = -931.057}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
end

function Quest40064:OnSubFinish4006406(arg1)
    print("OnSubFinish4006406")
    self:SafeDestroyQuestNpc(npcs.Npc10095Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc10011Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1032Data.alias, 1009)
    self:SafeDestroyQuestNpc(npcs.Npc1042Data.alias, 1009)
    self:SafeDestroyQuestNpc(npcs.Npc10012Data.alias, 3)
end

function Quest40064:OnSubStart4006407(arg1)
    print("OnSubStart4006407")
    actorMgr:CreateActorWithPos("Q4006407_Trigger", "Actor/Gadget/Q4006407_Trigger", 70900002, 0, {x = 2144.639, y = 211.476, z = -1030.26}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
end

function Quest40064:OnSubFinish4006407(arg1)
    print("OnSubFinish4006407")
    self:SafeDestroyQuestNpc(npcs.Npc10095Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc10011Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1042Data.alias, 1009)
    self:TransmitPlayerWithTextById(arg1, 1, datas.TextmapId, 1)
end

function Quest40064:OnSubStart4006408(arg1)
    print("OnSubStart4006408")
end

function Quest40064:OnSubFinish4006408(arg1)
    print("OnSubFinish4006408")
end

function Quest40064:OnSubStart4006409(arg1)
    print("OnSubStart4006409")
    self:CreateQuestNpcWithTriggerBlack("Q4006409_Trigger", 4006409, npcs.Npc10095Data.id, 1, 40, 1)
end

function Quest40064:OnSubFinish4006409(arg1)
    print("OnSubFinish4006409")
    self:SafeDestroyQuestNpc(npcs.Npc10095Data.alias, 9)
    self:SafeDestroyQuestNpc(npcs.Npc10011Data.alias, 9)
    self:SafeDestroyQuestNpc(npcs.Npc1032Data.alias, 9)
end

function Quest40064:OnSubStart4006410(arg1)
    print("OnSubStart4006410")
    self:CreateQuestNpc(arg1, npcs.Npc1042Data.id, 2)
    self:GetQuestNpcActor(npcs.Npc1042Data.alias):DoFreeStyle(1220, true, nil, true, true, false)
    self:CreateQuestNpc(arg1, npcs.Npc12732Data.id, 3)
    self:UnSpawn(gadgets.Gadget70710771Data.alias)
    self:DelaySpawnGadget(arg1, gadgets.Gadget70710771Data.id, 1, 0)
    self:UnSpawn(gadgets.Gadget70710349Data.alias)
    self:DelaySpawnGadget(arg1, gadgets.Gadget70710349Data.id, 2, 0)
    self:UnSpawn(gadgets.Gadget70710136Data.alias)
    self:DelaySpawnGadget(arg1, gadgets.Gadget70710136Data.id, 3, 0)
    actorMgr:CreateActorWithPos("Q4006410_Trigger", "Actor/Gadget/Q4006410_Trigger", 70900002, 0, {x = 706.156, y = 120.132, z = 262.361}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 9)
end

function Quest40064:OnSubFinish4006410(arg1)
    print("OnSubFinish4006410")
    self:SafeDestroyQuestNpc(npcs.Npc1032Data.alias, 9)
    self:SafeDestroyQuestNpc(npcs.Npc1042Data.alias, 9)
    self:UnSpawn(gadgets.Gadget70710771Data.alias)
    self:ActionSafeCall(function(arg1)
        arg1:NarratorOnlyTaskByData(datas.Narrator_4006401)
    end)
end

function Quest40064:OnSubStart4006411(arg1)
    print("OnSubStart4006411")
    actorMgr:CreateActorWithPos("Q4006411_Trigger", "Actor/Gadget/Q4006411_Trigger", 70900002, 0, {x = 770.688, y = 120.211, z = 204.263}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 9)
    actorMgr:CreateActorWithPos("Q4006411_NarratorTrigger", "Actor/Gadget/Q4006411_NarratorTrigger", 70900002, 0, {x = 770.0, y = 120.374, z = 201.92}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 9)
    TargetPos = sceneData:GetDummyPoint(9, "Q4006411_TrackSkir").pos
    self:OpenCompass()
end

function Quest40064:OnSubFinish4006411(arg1)
    print("OnSubFinish4006411")
    self:NarratorOnlyTaskByData(datas.Narrator_4006403, nil, 40064)
    if actorMgr:GetActor("Q4006411_NarratorTrigger") ~= nil then
        self:ActorDestroy("Q4006411_NarratorTrigger")
        TargetPos = nil
        self:CloseCompass()
    end
end

function Quest40064:OnSubFailed4006411(arg1)
    print("OnSubFailed4006411")
    TargetPos = nil
    self:CloseCompass()
end

function Quest40064:OnSubStart4006412(arg1)
    print("OnSubStart4006412")
end

function Quest40064:OnSubFinish4006412(arg1)
    print("OnSubFinish4006412")
end

function Quest40064:OnSubStart4006413(arg1)
    print("OnSubStart4006413")
    self:CallDelay(1, function(arg1)
        arg1:CreateQuestNpcWithTriggerBlack("Q4006413_Trigger", 4006413, npcs.Npc12604Data.id, 2, 10, 1)
    end)
end

function Quest40064:OnSubFinish4006413(arg1)
    print("OnSubFinish4006413")
    self:SafeDestroyQuestNpc(npcs.Npc1032Data.alias, 9)
    self:SafeDestroyQuestNpc(npcs.Npc12604Data.alias, 9)
    self:SafeDestroyQuestNpc(npcs.Npc12605Data.alias, 9)
    self:SafeDestroyQuestNpc(npcs.Npc12732Data.alias, 9)
end

function Quest40064:OnSubStart4006414(arg1)
    print("OnSubStart4006414")
    self:CreateQuestNpc(arg1, npcs.Npc10095Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc10011Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc1042Data.id, 4)
    actorMgr:CreateActorWithPos("Q4006414_Trigger", "Actor/Gadget/Q4006414_Trigger", 70900002, 0, sceneData:GetDummyPoint(9, "Q4006414_guide").pos, sceneData:GetDummyPoint(9, "Q4006414_guide").rot, true, false, 9)
end

function Quest40064:OnSubFinish4006414(arg1)
    print("OnSubFinish4006414")
    self:SafeDestroyQuestNpc(npcs.Npc10095Data.alias, 9)
    self:SafeDestroyQuestNpc(npcs.Npc10011Data.alias, 9)
    self:SafeDestroyQuestNpc(npcs.Npc1032Data.alias, 9)
    self:SafeDestroyQuestNpc(npcs.Npc1042Data.alias, 9)
end

function Quest40064:OnSubStart4006417(arg1)
    print("OnSubStart4006417")
end

function Quest40064:OnSubFinish4006417(arg1)
    print("OnSubFinish4006417")
end

function Quest40064:OnSubStart4006415(arg1)
    print("OnSubStart4006415")
    self:CreateQuestNpc(arg1, npcs.Npc12625Data.id, 1)
    actorMgr:CreateActorWithPos("Q4006415_Trigger", "Actor/Gadget/Q4006415_Trigger", 70900002, 0, sceneData:GetDummyPoint(9, "Q4006415_guide").pos, sceneData:GetDummyPoint(9, "Q4006415_guide").rot, true, false, 9)
end

function Quest40064:OnSubFinish4006415(arg1)
    print("OnSubFinish4006415")
    self:SafeDestroyQuestNpc(npcs.Npc12625Data.alias, 9)
    self:UnSpawn(gadgets.Gadget70710349Data.alias)
    self:UnSpawn(gadgets.Gadget70710136Data.alias)
end

return Quest40064
