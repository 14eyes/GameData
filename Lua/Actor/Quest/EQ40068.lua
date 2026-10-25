require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40068 = class("Quest40068", QuestActorProxy)
Quest40068.defaultAlias = "Quest40068"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest40068:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest40068:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4006801"] = self.OnSubStart4006801,
        ["4006802"] = self.OnSubStart4006802,
        ["4006803"] = self.OnSubStart4006803,
        ["4006818"] = self.OnSubStart4006818,
        ["4006804"] = self.OnSubStart4006804,
        ["4006805"] = self.OnSubStart4006805,
        ["4006806"] = self.OnSubStart4006806,
        ["4006807"] = self.OnSubStart4006807,
        ["4006808"] = self.OnSubStart4006808,
        ["4006809"] = self.OnSubStart4006809,
        ["4006810"] = self.OnSubStart4006810,
        ["4006811"] = self.OnSubStart4006811,
        ["4006812"] = self.OnSubStart4006812,
        ["4006817"] = self.OnSubStart4006817,
        ["4006815"] = self.OnSubStart4006815,
        ["4006813"] = self.OnSubStart4006813,
        ["4006814"] = self.OnSubStart4006814,
        ["4006816"] = self.OnSubStart4006816
    }
end

function Quest40068:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4006801"] = self.OnSubFinish4006801,
        ["4006802"] = self.OnSubFinish4006802,
        ["4006803"] = self.OnSubFinish4006803,
        ["4006818"] = self.OnSubFinish4006818,
        ["4006804"] = self.OnSubFinish4006804,
        ["4006805"] = self.OnSubFinish4006805,
        ["4006806"] = self.OnSubFinish4006806,
        ["4006807"] = self.OnSubFinish4006807,
        ["4006808"] = self.OnSubFinish4006808,
        ["4006809"] = self.OnSubFinish4006809,
        ["4006810"] = self.OnSubFinish4006810,
        ["4006811"] = self.OnSubFinish4006811,
        ["4006812"] = self.OnSubFinish4006812,
        ["4006817"] = self.OnSubFinish4006817,
        ["4006815"] = self.OnSubFinish4006815,
        ["4006813"] = self.OnSubFinish4006813,
        ["4006814"] = self.OnSubFinish4006814,
        ["4006816"] = self.OnSubFinish4006816
    }
end

function Quest40068:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest40068:Start()
    print("Start")
end

function Quest40068:OnDestroy()
    print("OnDestroy")
end

function Quest40068:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest40068:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest40068:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc10095Data.alias, 9)
    self:SafeDestroyQuestNpc(npcs.Npc10095Data.alias, 20133)
    self:SafeDestroyQuestNpc(npcs.Npc1042Data.alias, 9)
    self:SafeDestroyQuestNpc(npcs.Npc1042Data.alias, 20133)
    self:SafeDestroyQuestNpc(npcs.Npc12616Data.alias, 20133)
    self:SafeDestroyQuestNpc(npcs.Npc1032Data.alias, 9)
    self:SafeDestroyQuestNpc(npcs.Npc1032Data.alias, 20133)
    self:SafeDestroyQuestNpc(npcs.Npc12715Data.alias, 9)
    actorMgr:DestroyEntityActor("Q4006802_Trigger", 9, false)
    actorMgr:DestroyEntityActor("Q4006803_Trigger", 9, false)
    actorMgr:DestroyEntityActor("Q4006804_Trigger", 0, false)
    actorMgr:DestroyEntityActor("Q4006805_Trigger", 0, false)
    actorMgr:DestroyEntityActor("Q4006808_Trigger", 0, false)
    actorMgr:DestroyEntityActor("Q4006812_Trigger", 0, false)
    actorMgr:DestroyEntityActor("Q4006807_SafeTrigger", 20133, false)
end

function Quest40068:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest40068:OnSubStart4006801(arg1)
    print("OnSubStart4006801")
end

function Quest40068:OnSubFinish4006801(arg1)
    print("OnSubFinish4006801")
end

function Quest40068:OnSubStart4006802(arg1)
    print("OnSubStart4006802")
    self:CreateQuestNpc(arg1, npcs.Npc10095Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc1042Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc1032Data.id, 3)
    actorMgr:CreateActorWithPos("Q4006802_Trigger", "Actor/Gadget/Q4006802_Trigger", 70900002, 0, {x = -227.641, y = 126.054, z = 443.702}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 9)
end

function Quest40068:OnSubFinish4006802(arg1)
    print("OnSubFinish4006802")
    self:SafeDestroyQuestNpc(npcs.Npc10095Data.alias, 9)
    self:SafeDestroyQuestNpc(npcs.Npc1042Data.alias, 9)
    self:SafeDestroyQuestNpc(npcs.Npc1032Data.alias, 9)
end

function Quest40068:OnSubStart4006803(arg1)
    print("OnSubStart4006803")
    actorMgr:CreateActorWithPos("Q4006803_Trigger", "Actor/Gadget/Q4006803_Trigger", 70900002, 0, sceneData:GetDummyPoint(9, "Q4006803_guide").pos, sceneData:GetDummyPoint(9, "Q4006803_guide").rot, true, false, 9)
end

function Quest40068:OnSubFinish4006803(arg1)
    print("OnSubFinish4006803")
    self:SafeDestroyQuestNpc(npcs.Npc10095Data.alias, 9)
    self:SafeDestroyQuestNpc(npcs.Npc1042Data.alias, 9)
    self:SafeDestroyQuestNpc(npcs.Npc1032Data.alias, 9)
    self:ActionSafeCall(function(arg1)
        globalActor:PlayerEnterDungeonPoint(27, 1137, 4006803, 1)
    end)
end

function Quest40068:OnSubStart4006818(arg1)
    print("OnSubStart4006818")
end

function Quest40068:OnSubFinish4006818(arg1)
    print("OnSubFinish4006818")
end

function Quest40068:OnSubStart4006804(arg1)
    print("OnSubStart4006804")
    actorMgr:CreateActorWithPos("Q4006804_Trigger", "Actor/Gadget/Q4006804_Trigger", 70900002, 0, {x = 2258.36, y = 519.59, z = 469.22}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 20133)
end

function Quest40068:OnSubFinish4006804(arg1)
    print("OnSubFinish4006804")
    self:SafeDestroyQuestNpc(npcs.Npc10095Data.alias, 20133)
    self:SafeDestroyQuestNpc(npcs.Npc1042Data.alias, 20133)
    self:SafeDestroyQuestNpc(npcs.Npc1032Data.alias, 20133)
end

function Quest40068:OnSubStart4006805(arg1)
    print("OnSubStart4006805")
    actorMgr:CreateActorWithPos("Q4006805_Trigger", "Actor/Gadget/Q4006805_Trigger", 70900002, 0, {x = 2179.398, y = 560.509, z = 585.224}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 20133)
end

function Quest40068:OnSubFinish4006805(arg1)
    print("OnSubFinish4006805")
    self:SafeDestroyQuestNpc(npcs.Npc10095Data.alias, 20133)
    self:SafeDestroyQuestNpc(npcs.Npc1042Data.alias, 20133)
    self:SafeDestroyQuestNpc(npcs.Npc1032Data.alias, 20133)
end

function Quest40068:OnSubStart4006806(arg1)
    print("OnSubStart4006806")
end

function Quest40068:OnSubFinish4006806(arg1)
    print("OnSubFinish4006806")
    self:CallDelay(1, function(arg1)
        arg1:NarratorOnlyTaskByData(datas.Narrator_4006801, nil, 40068)
    end)
end

function Quest40068:OnSubStart4006807(arg1)
    print("OnSubStart4006807")
    actorMgr:CreateActorWithPos("Q4006807_SafeTrigger", "Actor/Gadget/Q4006807_SafeTrigger", 70900002, 0, {x = 38.772, y = 156.54, z = 536.44}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 20133)
end

function Quest40068:OnSubFinish4006807(arg1)
    print("OnSubFinish4006807")
    if actorMgr:GetActor("Q4006807_SafeTrigger") ~= nil then
        self:ActorDestroy("Q4006807_SafeTrigger")
    end
end

function Quest40068:OnSubStart4006808(arg1)
    print("OnSubStart4006808")
    actorMgr:CreateActorWithPos("Q4006808_Trigger", "Actor/Gadget/Q4006808_Trigger", 70900002, 0, {x = -2.658, y = 142.665, z = 604.575}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 20133)
    actorMgr:CreateActorWithPos("Q4006808_FailTrigger", "Actor/Gadget/Q4006808_FailTrigger", 70900002, 0, {x = 2180.277, y = 560.533, z = 583.626}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 20133)
end

function Quest40068:OnSubFinish4006808(arg1)
    print("OnSubFinish4006808")
    self:EnterSceneLookCamera(sceneData:GetDummyPoint(20133, "Q4006809_N12616").pos, 0, 2, true, true)
end

function Quest40068:OnSubStart4006809(arg1)
    print("OnSubStart4006809")
    self:CreateQuestNpcWithTrigger("Q4006809_Trigger", 4006809, npcs.Npc12616Data.id, 3, 8)
end

function Quest40068:OnSubFinish4006809(arg1)
    print("OnSubFinish4006809")
    self:SafeDestroyQuestNpc(npcs.Npc10095Data.alias, 20133)
    self:SafeDestroyQuestNpc(npcs.Npc1042Data.alias, 20133)
    self:SafeDestroyQuestNpc(npcs.Npc1032Data.alias, 20133)
    self:TransmitPlayerWithTextById(arg1, 1, datas.TextmapId, 1)
end

function Quest40068:OnSubStart4006810(arg1)
    print("OnSubStart4006810")
    self:CreateQuestNpcWithTriggerBlack("Q4006810_Trigger", 4006810, npcs.Npc1042Data.id, 2, 20, 1)
end

function Quest40068:OnSubFinish4006810(arg1)
    print("OnSubFinish4006810")
    self:SafeDestroyQuestNpc(npcs.Npc10095Data.alias, 9)
    self:SafeDestroyQuestNpc(npcs.Npc1042Data.alias, 9)
    self:SafeDestroyQuestNpc(npcs.Npc1032Data.alias, 9)
end

function Quest40068:OnSubStart4006811(arg1)
    print("OnSubStart4006811")
end

function Quest40068:OnSubFinish4006811(arg1)
    print("OnSubFinish4006811")
end

function Quest40068:OnSubStart4006812(arg1)
    print("OnSubStart4006812")
    actorMgr:CreateActorWithPos("Q4006812_Trigger", "Actor/Gadget/Q4006812_Trigger", 70900002, 0, {x = 189.646, y = 131.633, z = 320.403}, {x = 0.0, y = 23.986, z = 0.0}, true, false, 9)
end

function Quest40068:OnSubFinish4006812(arg1)
    print("OnSubFinish4006812")
    self:SafeDestroyQuestNpc(npcs.Npc10095Data.alias, 9)
    self:SafeDestroyQuestNpc(npcs.Npc1042Data.alias, 9)
    self:SafeDestroyQuestNpc(npcs.Npc1032Data.alias, 9)
end

function Quest40068:OnSubStart4006817(arg1)
    print("OnSubStart4006817")
end

function Quest40068:OnSubFinish4006817(arg1)
    print("OnSubFinish4006817")
end

function Quest40068:OnSubStart4006815(arg1)
    print("OnSubStart4006815")
    self:CreateQuestNpc(arg1, npcs.Npc12715Data.id, 4)
end

function Quest40068:OnSubFinish4006815(arg1)
    print("OnSubFinish4006815")
    self:SafeDestroyQuestNpc(npcs.Npc10095Data.alias, 9)
    self:SafeDestroyQuestNpc(npcs.Npc1042Data.alias, 9)
    self:SafeDestroyQuestNpc(npcs.Npc12616Data.alias, 20133)
    self:SafeDestroyQuestNpc(npcs.Npc1032Data.alias, 9)
end

function Quest40068:OnSubStart4006813(arg1)
    print("OnSubStart4006813")
end

function Quest40068:OnSubFinish4006813(arg1)
    print("OnSubFinish4006813")
end

function Quest40068:OnSubStart4006814(arg1)
    print("OnSubStart4006814")
end

function Quest40068:OnSubFinish4006814(arg1)
    print("OnSubFinish4006814")
end

function Quest40068:OnSubStart4006816(arg1)
    print("OnSubStart4006816")
end

function Quest40068:OnSubFinish4006816(arg1)
    print("OnSubFinish4006816")
end

return Quest40068
