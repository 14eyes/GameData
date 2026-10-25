require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40025 = class("Quest40025", QuestActorProxy)
Quest40025.defaultAlias = "Quest40025"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local gadgets
local datas

function Quest40025:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    gadgets = clientData.Gadgets
    datas = clientData.Datas
end

function Quest40025:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4002501"] = self.OnSubStart4002501,
        ["4002502"] = self.OnSubStart4002502,
        ["4002503"] = self.OnSubStart4002503,
        ["4002504"] = self.OnSubStart4002504,
        ["4002505"] = self.OnSubStart4002505,
        ["4002506"] = self.OnSubStart4002506,
        ["4002510"] = self.OnSubStart4002510,
        ["4002509"] = self.OnSubStart4002509,
        ["4002507"] = self.OnSubStart4002507,
        ["4002508"] = self.OnSubStart4002508
    }
end

function Quest40025:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4002501"] = self.OnSubFinish4002501,
        ["4002502"] = self.OnSubFinish4002502,
        ["4002503"] = self.OnSubFinish4002503,
        ["4002504"] = self.OnSubFinish4002504,
        ["4002505"] = self.OnSubFinish4002505,
        ["4002506"] = self.OnSubFinish4002506,
        ["4002510"] = self.OnSubFinish4002510,
        ["4002509"] = self.OnSubFinish4002509,
        ["4002507"] = self.OnSubFinish4002507,
        ["4002508"] = self.OnSubFinish4002508
    }
end

function Quest40025:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest40025:Start()
    print("Start")
end

function Quest40025:OnDestroy()
    print("OnDestroy")
end

function Quest40025:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest40025:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest40025:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc1587Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1019Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1018Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1668Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.AmborData.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1577Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1409Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1029Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.PaimonData.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12253Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1431Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12254Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1455Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1463Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1408Data.alias, 3)
    self:LightNotifyTo(npcs.Npc1668Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc1431Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc1455Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc1463Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc1408Data.alias, 0, true)
    actorMgr:GetActor("40025"):UnSpawn(gadgets.Footprint_01.alias)
    actorMgr:DestroyEntityActor("Q40025Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q40025Trigger1", 3, false)
    actorMgr:DestroyEntityActor("Q40025Trigger2", 3, false)
    actorMgr:DestroyEntityActor("Q40025Trigger3", 3, false)
    actorMgr:DestroyEntityActor("Q40025Trigger4", 3, false)
    actorMgr:DestroyEntityActor("Q40025Trigger5", 3, false)
    actorMgr:DestroyEntityActor("Q40025Trigger6", 3, false)
    actorMgr:DestroyEntityActor("Q4002510_Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q4002510_Trigger2", 3, false)
    actorMgr:DestroyEntityActor("Q4002510_Trigger3", 3, false)
end

function Quest40025:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    self:ActionSafeCall(function(arg1_2)
        arg1_2:NotifyTo(arg1, arg2, arg3)
    end)
end

function Quest40025:OnSubStart4002501(arg1)
    print("OnSubStart4002501")
    self:CreateQuestNpc(arg1, npcs.Npc1587Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc1019Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc12254Data.id, 3)
    self:ActionSafeCall(function(arg1)
        actorMgr:CreateActorWithPos("Q40025Trigger", "Actor/Gadget/Q40025Trigger", 70900002, 0, {x = 2268.178, y = 215.99, z = -888.6176}, {x = 0, y = 0, z = 0}, true, false)
        arg1:CallDelay(1, function(arg1)
            if arg1:GetQuestVar(4002501, 0) == 0 then
                arg1:NarratorOnlyTaskByData(datas.Narrator_4002501, function(arg1)
                    arg1:SetQuestVarByMainId(0, 1)
                end, 40025)
            end
        end)
    end)
end

function Quest40025:OnSubFinish4002501(arg1)
    print("OnSubFinish4002501")
end

function Quest40025:OnSubStart4002502(arg1)
    print("OnSubStart4002502")
    self:CreateQuestNpc(arg1, npcs.Npc1019Data.id, 1)
    self:DailyNpcSafeHideSelf(npcs.Npc1431Data.alias, 1, true)
    self:NotifyTo(npcs.Npc1455Data.alias, 2, true)
    self:NotifyTo(npcs.Npc1463Data.alias, 2, true)
    self:DailyNpcSafeHideSelf(npcs.Npc1408Data.alias, 1, true)
    self:RequestInteraction(npcs.Npc1587Data.alias)
end

function Quest40025:OnSubFinish4002502(arg1)
    print("OnSubFinish4002502")
    self:SafeDestroyQuestNpc(npcs.Npc12254Data.alias, 3)
    self:ClearNarratorTask()
    self:StopNarrator()
end

function Quest40025:OnSubStart4002503(arg1)
    print("OnSubStart4002503")
    self:CreateQuestNpc(arg1, npcs.Npc1019Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc1668Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.AmborData.id, 3)
    self:CreateQuestNpc(arg1, npcs.Npc1577Data.id, 4)
    self:CreateQuestNpc(arg1, npcs.Npc1409Data.id, 5)
    self:LightNotifyTo(npcs.Npc1431Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc1455Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc1463Data.alias, 0, true)
    actorMgr:CreateActorWithPos("Q40025Trigger3", "Actor/Gadget/Q40025Trigger3", 70900002, 0, {x = 1606.036, y = 286.4875, z = -1104.467}, {x = 0, y = 0, z = 0}, true, false)
    self:GetQuestNpcActor(npcs.Npc1587Data.alias):DisableInteeHeadCtrl(true)
    self:GetQuestNpcActor(npcs.Npc1019Data.alias):DisableInteeHeadCtrl(true)
end

function Quest40025:OnSubFinish4002503(arg1)
    print("OnSubFinish4002503")
    self:SafeDestroyQuestNpc(npcs.Npc1587Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1019Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.AmborData.alias, 3)
end

function Quest40025:OnSubStart4002504(arg1)
    print("OnSubStart4002504")
    self:CreateQuestNpc(arg1, npcs.Npc1577Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc1409Data.id, 3)
    actorMgr:CreateActorWithPos("Q40025Trigger4", "Actor/Gadget/Q40025Trigger4", 70900002, 0, {x = 1567.986, y = 275.2137, z = -1040.265}, {x = 0, y = 0, z = 0}, true, false)
    self:GetQuestNpcActor(npcs.Npc1577Data.alias):DisableInteeHeadCtrl(true)
    self:GetQuestNpcActor(npcs.Npc1409Data.alias):DisableInteeHeadCtrl(true)
end

function Quest40025:OnSubFinish4002504(arg1)
    print("OnSubFinish4002504")
    self:SafeDestroyQuestNpc(npcs.Npc1668Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.AmborData.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1577Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1409Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1029Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12253Data.alias, 3)
    self:ShowBlackScreen(0.3, 1.2, 0.3, nil, nil, nil, "", false, true)
end

function Quest40025:OnSubStart4002505(arg1)
    print("OnSubStart4002505")
    self:DailyNpcSafeHideSelf(npcs.Npc1668Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q40025Trigger1", "Actor/Gadget/Q40025Trigger1", 70900002, 0, {x = 1302.219, y = 292.5508, z = -1030.075}, {x = 0, y = 0, z = 0}, true, false)
end

function Quest40025:OnSubFinish4002505(arg1)
    print("OnSubFinish4002505")
end

function Quest40025:OnSubStart4002506(arg1)
    print("OnSubStart4002506")
    self:DailyNpcSafeHideSelf(npcs.Npc1668Data.alias, 1, true)
    self:CreateQuestNpc(arg1, npcs.PaimonData.id, 1)
    self:RequestInteraction(npcs.PaimonData.alias)
end

function Quest40025:OnSubFinish4002506(arg1)
    print("OnSubFinish4002506")
    self:ActionSafeCall(function(arg1)
        arg1:PlayEffect("Eff_Quest_WinterCamp_Footsteps", sceneData:GetDummyPoint(3, "Q4002510_sound01").pos)
        arg1:GetQuestNpcActor(npcs.PaimonData.alias):Disappear()
    end)
end

function Quest40025:OnSubStart4002510(arg1)
    print("OnSubStart4002510")
    self:DailyNpcSafeHideSelf(npcs.Npc1668Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q4002510_Trigger", "Actor/Gadget/Q4002510_Trigger", 70900002, 0, {x = 1202.159, y = 317.9452, z = -1058.415}, {x = 0, y = 0, z = 0}, true, false)
    actorMgr:CreateActorWithPos("Q4002510_Trigger2", "Actor/Gadget/Q4002510_Trigger2", 70900002, 0, {x = 1267.041, y = 296.5458, z = -1045.395}, {x = 0, y = 0, z = 0}, true, false)
    actorMgr:CreateActorWithPos("Q4002510_Trigger3", "Actor/Gadget/Q4002510_Trigger3", 70900002, 0, {x = 1231.988, y = 306.1812, z = -1071.42}, {x = 0, y = 0, z = 0}, true, false)
end

function Quest40025:OnSubFinish4002510(arg1)
    print("OnSubFinish4002510")
    self:PlayEffect("Eff_Quest_WinterCamp_Footsteps", sceneData:GetDummyPoint(3, "Q4002509_sound").pos)
    local actor = actorMgr:GetActor("Q4002510_Trigger2")
    if actor ~= nil then
        actor:DestroySelf()
    end

    local v = actorMgr:GetActor("Q4002510_Trigger3")
    if v ~= nil then
        v:DestroySelf()
    end
end

function Quest40025:OnSubStart4002509(arg1)
    print("OnSubStart4002509")
    self:DailyNpcSafeHideSelf(npcs.Npc1668Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q40025Trigger6", "Actor/Gadget/Q40025Trigger6", 70900002, 0, {x = 1223.282, y = 339.1445, z = -1013.982}, {x = 0, y = 0, z = 0}, true, false)
end

function Quest40025:OnSubFinish4002509(arg1)
    print("OnSubFinish4002509")
    self:EnterSceneLookCamera(sceneData:GetDummyPoint(3, "Q4002507_track").pos, 0, 2, true, false)
    self:NarratorOnlyTaskByData(datas.Narrator_4002502, nil, 40025)
    self:PlayEffect("Eff_Quest_WinterCamp_Footsteps", sceneData:GetDummyPoint(3, "Q4002509_sound02").pos)
end

function Quest40025:OnSubStart4002507(arg1)
    print("OnSubStart4002507")
    self:DailyNpcSafeHideSelf(npcs.Npc1668Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q40025Trigger5", "Actor/Gadget/Q40025Trigger5", 70900002, 0, {x = 1229.325, y = 370.1313, z = -939.903}, {x = 0, y = 0, z = 0}, true, false)
end

function Quest40025:OnSubFinish4002507(arg1)
    print("OnSubFinish4002507")
    self:SafeDestroyQuestNpc(npcs.Npc1018Data.alias, 3)
end

function Quest40025:OnSubStart4002508(arg1)
    print("OnSubStart4002508")
    self:DailyNpcSafeHideSelf(npcs.Npc1668Data.alias, 1, true)
    self:UnSpawn(gadgets.Footprint_01.alias)
    self:DelaySpawnGadget(arg1, gadgets.Footprint_01.id, 1, 0)
    actorMgr:CreateActorWithPos("Q40025Trigger2", "Actor/Gadget/Q40025Trigger2", 70900002, 0, {x = 1210.708, y = 374.8195, z = -785.3075}, {x = 0, y = 0, z = 0}, true, false)
end

function Quest40025:OnSubFinish4002508(arg1)
    print("OnSubFinish4002508")
    self:SafeDestroyQuestNpc(npcs.Npc1018Data.alias, 3)
    self:UnSpawn(gadgets.Footprint_01.alias)
    self:LightNotifyTo(npcs.Npc1668Data.alias, 0, true)
end

return Quest40025
