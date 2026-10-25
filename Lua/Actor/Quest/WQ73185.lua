require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73185 = class("Quest73185", QuestActorProxy)
Quest73185.defaultAlias = "Quest73185"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest73185:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest73185:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7318511"] = self.OnSubStart7318511,
        ["7318501"] = self.OnSubStart7318501,
        ["7318502"] = self.OnSubStart7318502,
        ["7318503"] = self.OnSubStart7318503,
        ["7318504"] = self.OnSubStart7318504,
        ["7318505"] = self.OnSubStart7318505,
        ["7318506"] = self.OnSubStart7318506,
        ["7318507"] = self.OnSubStart7318507,
        ["7318508"] = self.OnSubStart7318508,
        ["7318509"] = self.OnSubStart7318509,
        ["7318510"] = self.OnSubStart7318510
    }
end

function Quest73185:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7318511"] = self.OnSubFinish7318511,
        ["7318501"] = self.OnSubFinish7318501,
        ["7318502"] = self.OnSubFinish7318502,
        ["7318503"] = self.OnSubFinish7318503,
        ["7318504"] = self.OnSubFinish7318504,
        ["7318505"] = self.OnSubFinish7318505,
        ["7318506"] = self.OnSubFinish7318506,
        ["7318507"] = self.OnSubFinish7318507,
        ["7318508"] = self.OnSubFinish7318508,
        ["7318509"] = self.OnSubFinish7318509,
        ["7318510"] = self.OnSubFinish7318510
    }
end

function Quest73185:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73185:Start()
    print("Start")
end

function Quest73185:OnDestroy()
    print("OnDestroy")
end

function Quest73185:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73185:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73185:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73185:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest73185:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1 then
        actorUtils.FinishQuestID(false, 7318505)
    end

    if arg1 == 2 then
        actorUtils.FinishQuestID(false, 7318507)
    end
end

function Quest73185:OnSubStart7318511(arg1)
    print("OnSubStart7318511")
    actorMgr:CreateActorWithPos("Q73185Trigger2", "Actor/Gadget/Q73185Trigger2", 70900002, 0, {x = -1120.514, y = 181.113, z = 3578.792}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest73185:OnSubFinish7318511(arg1)
    print("OnSubFinish7318511")
    self:NarratorOnlyTaskByData(datas.NarratorWithId, nil, 73185)
end

function Quest73185:OnSubStart7318501(arg1)
    print("OnSubStart7318501")
    self:CreateQuestNpc(arg1, npcs.Npc20884Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc20884Data.alias):DoFreeStyle(4190, true, nil, true, true, false, false)
    self:CreateSpeechBubbleTask(npcs.Npc20884Data.id, 731859901, 3, true, 5, 8)
end

function Quest73185:OnSubFinish7318501(arg1)
    print("OnSubFinish7318501")
    self:GetQuestNpcActor(npcs.Npc20884Data.alias):DoFreeStateTrigger()
    self:ClearSpeechBubbleTask()
    self:CallDelay(2, function(arg1)
        actorMgr:CreateActorWithPos("Q73185Trigger5", "Actor/Gadget/Q73185Trigger5", 70900002, 0, {x = -1115.35, y = 179.749, z = 3576.298}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
    end)
end

function Quest73185:OnSubStart7318502(arg1)
    print("OnSubStart7318502")
end

function Quest73185:OnSubFinish7318502(arg1)
    print("OnSubFinish7318502")
end

function Quest73185:OnSubStart7318503(arg1)
    print("OnSubStart7318503")
    self:CreateQuestNpc(arg1, npcs.Npc20838Data.id, 1)
    actorMgr:CreateActorWithPos("Q73185Trigger", "Actor/Gadget/Q73185Trigger", 70900002, 0, {x = -981.078, y = 171.234, z = 3657.972}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
    actorMgr:CreateActorWithPos("Q73185Trigger3", "Actor/Gadget/Q73185Trigger3", 70900002, 0, {x = -1082.42, y = 167.857, z = 3591.458}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest73185:OnSubFinish7318503(arg1)
    print("OnSubFinish7318503")
    self:ActorDestroy("Q73185Trigger3")
    self:NarratorOnlyTaskByData(datas.NarratorWithId3)
end

function Quest73185:OnSubStart7318504(arg1)
    print("OnSubStart7318504")
end

function Quest73185:OnSubFinish7318504(arg1)
    print("OnSubFinish7318504")
    self:ClearNarratorTask()
    self:StopNarrator()
    self:CallDelay(2, function(arg1)
        actorMgr:CreateActorWithPos("Q73185Trigger6", "Actor/Gadget/Q73185Trigger6", 70900002, 0, {x = -984.52, y = 174.477, z = 3654.36}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
    end)
end

function Quest73185:OnSubStart7318505(arg1)
    print("OnSubStart7318505")
end

function Quest73185:OnSubFinish7318505(arg1)
    print("OnSubFinish7318505")
end

function Quest73185:OnSubStart7318506(arg1)
    print("OnSubStart7318506")
    self:CreateQuestNpc(arg1, npcs.Npc20839Data.id, 1)
    actorMgr:CreateActorWithPos("Q73185Trigger1", "Actor/Gadget/Q73185Trigger1", 70900002, 0, {x = -1177.177, y = 189.065, z = 3666.596}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
    actorMgr:CreateActorWithPos("Q73185Trigger4", "Actor/Gadget/Q73185Trigger4", 70900002, 0, {x = -1140.732, y = 184.654, z = 3588.964}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
end

function Quest73185:OnSubFinish7318506(arg1)
    print("OnSubFinish7318506")
    self:ActorDestroy("Q73185Trigger4")
end

function Quest73185:OnSubStart7318507(arg1)
    print("OnSubStart7318507")
end

function Quest73185:OnSubFinish7318507(arg1)
    print("OnSubFinish7318507")
end

function Quest73185:OnSubStart7318508(arg1)
    print("OnSubStart7318508")
    if self:GetSubQuestState(7318504) ~= 2 then
        if self:GetSubQuestState(7318505) ~= 2 then
            goto lbl_21
        end
    end

    self:CreateQuestNpc(arg1, npcs.Npc20838Data.id, 1)
    goto lbl_32
    ::lbl_21::
    if self:GetSubQuestState(7318505) == 3 then
        self:CreateQuestNpc(arg1, npcs.Npc20838Data.id, 3)
    end

    ::lbl_32::
    if self:GetSubQuestState(7318507) == 2 then
        self:CreateQuestNpc(arg1, npcs.Npc20839Data.id, 2)
    else
        if self:GetSubQuestState(7318507) == 3 then
            self:CreateQuestNpc(arg1, npcs.Npc20839Data.id, 4)
        end
    end

    self:CreateLocalGadget(70710810, "TrailWater1", {x = -1068.82, y = 173.726, z = 3599.618}, {x = 0.0, y = 37.536, z = 0.0}, 3, nil, nil, 0, false)
    self:CreateLocalGadget(70710810, "TrailWater2", {x = -1044.885, y = 172.449, z = 3614.645}, {x = 0.0, y = 75.121, z = 0.0}, 3, nil, nil, 0, false)
    self:CreateLocalGadget(70710810, "TrailWater3", {x = -1018.591, y = 172.579, z = 3618.743}, {x = 0.0, y = 45.413, z = 0.0}, 3, nil, nil, 0, false)
    self:CreateLocalGadget(70710810, "TrailWater4", {x = -990.86, y = 173.164, z = 3641.657}, {x = 0.0, y = 12.461, z = 0.0}, 3, nil, nil, 0, false)
end

function Quest73185:OnSubFinish7318508(arg1)
    print("OnSubFinish7318508")
    self:RemoveLocalGadget(70710810, "TrailWater1")
    self:RemoveLocalGadget(70710810, "TrailWater2")
    self:RemoveLocalGadget(70710810, "TrailWater3")
    self:RemoveLocalGadget(70710810, "TrailWater4")
    self:ActionSafeCall(function(arg1)
        local questNpcActor = arg1:GetQuestNpcActor("Paimon")
        if questNpcActor ~= nil then
            questNpcActor:DestroyWithDisappear(false)
        end
    end)
end

function Quest73185:OnSubStart7318509(arg1)
    print("OnSubStart7318509")
end

function Quest73185:OnSubFinish7318509(arg1)
    print("OnSubFinish7318509")
end

function Quest73185:OnSubStart7318510(arg1)
    print("OnSubStart7318510")
end

function Quest73185:OnSubFinish7318510(arg1)
    print("OnSubFinish7318510")
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1)
        arg1:ActionSafeCall(function(arg1)
            arg1:DestroyQuestNpcActor(npcs.Npc20838Data.alias, 3)
            arg1:DestroyQuestNpcActor(npcs.Npc20839Data.alias, 3)
            arg1:DestroyQuestNpcActor(npcs.Npc20884Data.alias, 3)
        end)
    end, nil, nil, "", false, true)
end

return Quest73185
