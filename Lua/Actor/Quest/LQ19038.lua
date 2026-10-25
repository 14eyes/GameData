require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest19038 = class("Quest19038", QuestActorProxy)
Quest19038.defaultAlias = "Quest19038"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local n = 1

function Quest19038:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest19038:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1903801"] = self.OnSubStart1903801,
        ["1903802"] = self.OnSubStart1903802,
        ["1903803"] = self.OnSubStart1903803,
        ["1903804"] = self.OnSubStart1903804,
        ["1903805"] = self.OnSubStart1903805,
        ["1903807"] = self.OnSubStart1903807,
        ["1903806"] = self.OnSubStart1903806,
        ["1903812"] = self.OnSubStart1903812,
        ["1903808"] = self.OnSubStart1903808,
        ["1903809"] = self.OnSubStart1903809,
        ["1903811"] = self.OnSubStart1903811,
        ["1903813"] = self.OnSubStart1903813,
        ["1903810"] = self.OnSubStart1903810
    }
end

function Quest19038:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1903801"] = self.OnSubFinish1903801,
        ["1903802"] = self.OnSubFinish1903802,
        ["1903803"] = self.OnSubFinish1903803,
        ["1903804"] = self.OnSubFinish1903804,
        ["1903805"] = self.OnSubFinish1903805,
        ["1903807"] = self.OnSubFinish1903807,
        ["1903806"] = self.OnSubFinish1903806,
        ["1903812"] = self.OnSubFinish1903812,
        ["1903808"] = self.OnSubFinish1903808,
        ["1903809"] = self.OnSubFinish1903809,
        ["1903811"] = self.OnSubFinish1903811,
        ["1903813"] = self.OnSubFinish1903813,
        ["1903810"] = self.OnSubFinish1903810
    }
end

function Quest19038:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["1903803"] = self.OnSubFailed1903803}
end

function Quest19038:Start()
    print("Start")
end

function Quest19038:OnDestroy()
    print("OnDestroy")
end

function Quest19038:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest19038:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest19038:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:ClearNarratorTask()
    self:StopNarrator()
    actorUtils.StopAllTask(TaskID.NARRATOR_TASK_ID, LuaTaskType.NORMAL)
    self:SafeDestroyQuestNpc(npcs.Npc12319Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12320Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Coop_YunjinData.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12413Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12412Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12318Data.alias, 3)
    actorMgr:DestroyEntityActor("Q19038Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q19038Trigger1", 3, false)
    actorMgr:DestroyEntityActor("Q19038Trigger2", 3, false)
    actorMgr:DestroyEntityActor("Q19038Trigger3", 3, false)
    actorMgr:DestroyEntityActor("Q19038Trigger4", 3, false)
    self:ExitTailMode()
end

function Quest19038:CheckNpcDistance()
    print("CheckNpcDistance")
    print("CheckNpcDistance")
    local pos = self:GetQuestNpcActor(npcs.Npc12412Data.alias):GetPos()
    local avatarPos = actorUtils.GetAvatarPos()
    local dist = M.Dist(pos, avatarPos)
    if 20 < dist then
        print("\232\173\166\231\164\186SayWarningNarrator")
        self:ShowTextMapWithParam("QUEST_Message_Q1903801")
    end

    if 25 < dist then
        print("\232\183\159\228\184\162\228\186\134")
        self:FinishQuestID(true, 1903803)
        self:FinishQuestID(false, 1903804)
        self:FinishQuestID(true, 1903805)
        self:SafeDestroyQuestNpc(npcs.Npc12412Data.alias, 3)
        self:SafeDestroyQuestNpc(npcs.Npc12413Data.alias, 3)
    else
        self:CheckGap()
    end
end

function Quest19038:CheckGap()
    print("CheckGap")
    print("CheckGap")
    self.CallDelay(self, 1, function()
        self:CheckNpcDistance()
    end)
end

function Quest19038:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1 then
        self:GetQuestNpcActor(npcs.Npc12413Data.alias):Standby()
        self:GetQuestNpcActor(npcs.Npc12412Data.alias):Standby()
    end
end

function Quest19038:NpcOverride()
    print("NpcOverride")
    self:GetQuestNpcActor(npcs.Npc12413Data.alias):DoFreeStyle(1190, true, nil, true, true, false)
    self:GetQuestNpcActor(npcs.Npc12412Data.alias):DoFreeStyle(1190, true, nil, true, true, false)
end

function Quest19038:OnSubStart1903801(arg1)
    print("OnSubStart1903801")
    self:CreateQuestNpc(arg1, npcs.Npc12319Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc12320Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Coop_YunjinData.id, 3)
    actorMgr:CreateActorWithPos("Q19038Trigger", "Actor/Gadget/Q19038Trigger", 70900002, 0, {x = -588.0123, y = 226.6669, z = 316.2066}, {x = 0, y = 0, z = 0}, true, false)
    self:ClearSpeechBubbleTask()
    self:ExitTailMode()
end

function Quest19038:OnSubFinish1903801(arg1)
    print("OnSubFinish1903801")
end

function Quest19038:OnSubStart1903802(arg1)
    print("OnSubStart1903802")
    self:RequestInteraction(npcs.Npc12319Data.alias)
end

function Quest19038:OnSubFinish1903802(arg1)
    print("OnSubFinish1903802")
    self:SafeDestroyQuestNpc(npcs.Npc12319Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12320Data.alias, 3)
end

function Quest19038:OnSubStart1903803(arg1)
    print("OnSubStart1903803")
    self:ActionSafeCall(function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc12413Data.id, 2)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc12412Data.id, 3)
        arg1_2:RequestCoopInteractionFromSubStartPoint(106401, 1903802)
        arg1_2:EnterTailMode(35)
        arg1_2:CheckNpcDistance()
    end)
end

function Quest19038:OnSubFinish1903803(arg1)
    print("OnSubFinish1903803")
    n = 0
    self.ShowBlackScreen(self, 0.5, 1, 0.5, function()
        self:SafeDestroyQuestNpc(npcs.Npc12413Data.alias, 3)
        self:SafeDestroyQuestNpc(npcs.Npc12412Data.alias, 3)
        self:RequestInteraction(npcs.Npc12320Data.alias)
    end)
end

function Quest19038:OnSubFailed1903803(arg1)
    print("OnSubFailed1903803")
    self:ClearNarratorTask()
    self:StopNarrator()
    actorUtils.StopAllTask(TaskID.NARRATOR_TASK_ID, LuaTaskType.NORMAL)
    self:ShowBlackScreen(0.5, 3, 0.5, function(arg1)
        arg1:SafeDestroyQuestNpc(npcs.Npc12412Data.alias, 3)
        arg1:SafeDestroyQuestNpc(npcs.Npc12413Data.alias, 3)
    end, nil, nil, "QUEST_Message_Q1901715", false, true)
end

function Quest19038:OnSubStart1903804(arg1)
    print("OnSubStart1903804")
end

function Quest19038:OnSubFinish1903804(arg1)
    print("OnSubFinish1903804")
end

function Quest19038:OnSubStart1903805(arg1)
    print("OnSubStart1903805")
end

function Quest19038:OnSubFinish1903805(arg1)
    print("OnSubFinish1903805")
    self:SafeDestroyQuestNpc(npcs.Npc12319Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12320Data.alias, 3)
end

function Quest19038:OnSubStart1903807(arg1)
    print("OnSubStart1903807")
    self:RequestCoopInteractionFromSubStartPoint(106401, 1903801)
    self:ExitTailMode()
end

function Quest19038:OnSubFinish1903807(arg1)
    print("OnSubFinish1903807")
    self:SafeDestroyQuestNpc(npcs.Coop_YunjinData.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12318Data.alias, 3)
end

function Quest19038:OnSubStart1903806(arg1)
    print("OnSubStart1903806")
    if n == 1 then
        actorMgr:CreateActorWithPos("Q19038Trigger2", "Actor/Gadget/Q19038Trigger2", 70900002, 0, {x = -613.0123, y = 218.6669, z = 283.2066}, {x = 0, y = 0, z = 0}, true, false)
    end

    self:RequestCoopInteractionFromSubStartPoint(106401, 1903802)
    self:CreateQuestNpc(arg1, npcs.Npc12319Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc12320Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Coop_YunjinData.id, 3)
    self:FinishQuestID(true, 1903805)
    self:ExitTailMode()
    self:ClearSpeechBubbleTask()
    n = 1
end

function Quest19038:OnSubFinish1903806(arg1)
    print("OnSubFinish1903806")
end

function Quest19038:OnSubStart1903812(arg1)
    print("OnSubStart1903812")
    self:CreateQuestNpc(arg1, npcs.Coop_YunjinData.id, 1)
    self:RequestCoopInteractionFromSubStartPoint(106401, 1903801)
    self:SafeDestroyQuestNpc(npcs.Npc12319Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12320Data.alias, 3)
end

function Quest19038:OnSubFinish1903812(arg1)
    print("OnSubFinish1903812")
    self:SafeDestroyQuestNpc(npcs.Coop_YunjinData.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12318Data.alias, 3)
end

function Quest19038:OnSubStart1903808(arg1)
    actorMgr:CreateActorWithPos("Q19038Trigger3", "Actor/Gadget/Q19038Trigger3", 70900002, 0, {x = -613.0123, y = 218.6669, z = 283.2066}, {x = 0, y = 0, z = 0}, true, false)
    print("OnSubStart1903808")
    self.ActionSafeCall(self, function()
        self:CreateQuestNpc(arg1, npcs.Npc12319Data.id)
        self:CreateQuestNpc(arg1, npcs.Npc12320Data.id)
    end)

    self.CreateQuestNpc(self, arg1, npcs.Coop_YunjinData.id)
    self.RequestCoopInteractionFromSubStartPoint(self, 106401, 1903804)
    self.RequestCoopInteractionFromSubStartPoint(self, 106401, 1903808)
    self.ClearSpeechBubbleTask(self)
end

function Quest19038:OnSubFinish1903808(arg1)
    print("OnSubFinish1903808")
    actorMgr:DestroyEntityActor("Q19038Trigger3", 3, false)
end

function Quest19038:OnSubStart1903809(arg1)
    print("OnSubStart1903809")
    self:RequestCoopInteractionFromSubStartPoint(106401, 1903806)
    actorMgr:CreateActorWithPos("Q19038Trigger1", "Actor/Gadget/Q19038Trigger1", 70900002, 0, {x = -614.2604, y = 218.6149, z = 284.6316}, {x = 0, y = 0, z = 0}, true, false, 3)
end

function Quest19038:OnSubFinish1903809(arg1)
    print("OnSubFinish1903809")
    self:SafeDestroyQuestNpc(npcs.Npc12319Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12320Data.alias, 3)
end

function Quest19038:OnSubStart1903811(arg1)
    print("OnSubStart1903811")
    actorMgr:CreateActorWithPos("Q19038Trigger4", "Actor/Gadget/Q19038Trigger4", 70900002, 0, {x = -556, y = 232, z = 323}, {x = 0, y = 0, z = 0}, true, false, 3)
    self.ActionSafeCall(self, function()
        self:CreateQuestNpc(arg1, npcs.Npc12320Data.id)
        self:GetQuestNpcActor(npcs.Npc12320Data.alias):DoFreeStyle(1170, true, nil, true, true, false)
    end)

    self.GetQuestNpcActor(self, npcs.Coop_YunjinData.alias):TurnTo(M.Euler2DirXZ({x = 0, y = -109, z = 0}))
    self.RequestCoopInteractionFromSubStartPoint(self, 106401, 1903805)
end

function Quest19038:OnSubFinish1903811(arg1)
    print("OnSubFinish1903811")
    self:SafeDestroyQuestNpc(npcs.Npc12319Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12320Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Coop_YunjinData.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12318Data.alias, 3)
end

function Quest19038:OnSubStart1903813(arg1)
    print("OnSubStart1903813")
end

function Quest19038:OnSubFinish1903813(arg1)
    print("OnSubFinish1903813")
end

function Quest19038:OnSubStart1903810(arg1)
    print("OnSubStart1903810")
end

function Quest19038:OnSubFinish1903810(arg1)
    print("OnSubFinish1903810")
end

return Quest19038
