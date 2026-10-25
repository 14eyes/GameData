require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40066 = class("Quest40066", QuestActorProxy)
Quest40066.defaultAlias = "Quest40066"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest40066:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest40066:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4006601"] = self.OnSubStart4006601,
        ["4006602"] = self.OnSubStart4006602,
        ["4006603"] = self.OnSubStart4006603,
        ["4006604"] = self.OnSubStart4006604,
        ["4006605"] = self.OnSubStart4006605,
        ["4006606"] = self.OnSubStart4006606,
        ["4006607"] = self.OnSubStart4006607,
        ["4006608"] = self.OnSubStart4006608,
        ["4006609"] = self.OnSubStart4006609,
        ["4006610"] = self.OnSubStart4006610,
        ["4006611"] = self.OnSubStart4006611,
        ["4006612"] = self.OnSubStart4006612,
        ["4006613"] = self.OnSubStart4006613,
        ["4006614"] = self.OnSubStart4006614,
        ["4006615"] = self.OnSubStart4006615,
        ["4006616"] = self.OnSubStart4006616,
        ["4006617"] = self.OnSubStart4006617,
        ["4006619"] = self.OnSubStart4006619,
        ["4006618"] = self.OnSubStart4006618
    }
end

function Quest40066:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4006601"] = self.OnSubFinish4006601,
        ["4006602"] = self.OnSubFinish4006602,
        ["4006603"] = self.OnSubFinish4006603,
        ["4006604"] = self.OnSubFinish4006604,
        ["4006605"] = self.OnSubFinish4006605,
        ["4006606"] = self.OnSubFinish4006606,
        ["4006607"] = self.OnSubFinish4006607,
        ["4006608"] = self.OnSubFinish4006608,
        ["4006609"] = self.OnSubFinish4006609,
        ["4006610"] = self.OnSubFinish4006610,
        ["4006611"] = self.OnSubFinish4006611,
        ["4006612"] = self.OnSubFinish4006612,
        ["4006613"] = self.OnSubFinish4006613,
        ["4006614"] = self.OnSubFinish4006614,
        ["4006615"] = self.OnSubFinish4006615,
        ["4006616"] = self.OnSubFinish4006616,
        ["4006617"] = self.OnSubFinish4006617,
        ["4006619"] = self.OnSubFinish4006619,
        ["4006618"] = self.OnSubFinish4006618
    }
end

function Quest40066:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest40066:Start()
    print("Start")
end

function Quest40066:OnDestroy()
    print("OnDestroy")
end

function Quest40066:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest40066:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest40066:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc1042Data.alias, 20135)
    self:SafeDestroyQuestNpc(npcs.Npc1042Data.alias, 9)
    self:SafeDestroyQuestNpc(npcs.Npc12611Data.alias, 20135)
    self:SafeDestroyQuestNpc(npcs.Npc12613Data.alias, 20135)
    self:SafeDestroyQuestNpc(npcs.Npc1032Data.alias, 20135)
    self:SafeDestroyQuestNpc(npcs.Npc1032Data.alias, 9)
    self:SafeDestroyQuestNpc(npcs.Npc12614Data.alias, 20135)
    self:SafeDestroyQuestNpc(npcs.Npc10011Data.alias, 20135)
    self:SafeDestroyQuestNpc(npcs.Npc10011Data.alias, 9)
    self:SafeDestroyQuestNpc(npcs.Npc10095Data.alias, 20135)
    self:SafeDestroyQuestNpc(npcs.Npc10095Data.alias, 9)
    actorMgr:DestroyEntityActor("Q4006606_Trigger", 0, false)
    actorMgr:DestroyEntityActor("Q4006611_Trigger", 20135, false)
    actorMgr:DestroyEntityActor("Q4006613_Trigger", 20135, false)
    actorMgr:DestroyEntityActor("Q4006615_Trigger", 20135, false)
    actorMgr:DestroyEntityActor("Q4006616_Trigger", 20135, false)
    actorMgr:DestroyEntityActor("Q4006617_Trigger", 0, false)
    actorMgr:DestroyEntityActor("Q4006618_Trigger", 9, false)
    actorMgr:DestroyEntityActor("Q4006604_SafeTrigger", 20135, false)
    actorMgr:DestroyEntityActor("Q4006605_SafeTrigger", 20135, false)
    actorMgr:DestroyEntityActor("Q4006608_SafeTrigger", 20135, false)
    actorMgr:DestroyEntityActor("Q4006609_SafeTrigger", 20135, false)
    actorMgr:DestroyEntityActor("Q4006610_SafeTrigger", 20135, false)
    self:DisableMainPageWithConfig(false, "DisableTestHZM")
end

function Quest40066:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest40066:NpcCreateWithActionSafeCall(arg1, arg2, arg3)
    self:ActionSafeCall(function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, arg2, arg3)
    end)
end

function Quest40066:OnSubStart4006601(arg1)
    print("OnSubStart4006601")
end

function Quest40066:OnSubFinish4006601(arg1)
    print("OnSubFinish4006601")
end

function Quest40066:OnSubStart4006602(arg1)
    print("OnSubStart4006602")
end

function Quest40066:OnSubFinish4006602(arg1)
    print("OnSubFinish4006602")
    globalActor:PlayerEnterDungeonPoint(11, 1138, 4006602, 1)
end

function Quest40066:OnSubStart4006603(arg1)
    print("OnSubStart4006603")
    self:CreateQuestNpcWithTriggerBlack("Q4006603_Trigger", 4006603, npcs.Npc1042Data.id, 1, 10, 1)
end

function Quest40066:OnSubFinish4006603(arg1)
    print("OnSubFinish4006603")
    self:SafeDestroyQuestNpc(npcs.Npc1042Data.alias, 20135)
    self:SafeDestroyQuestNpc(npcs.Npc10011Data.alias, 20135)
    self:SafeDestroyQuestNpc(npcs.Npc10095Data.alias, 20135)
end

function Quest40066:OnSubStart4006604(arg1)
    print("OnSubStart4006604")
    actorMgr:CreateActorWithPos("Q4006604_SafeTrigger", "Actor/Gadget/Q4006604_SafeTrigger", 70900002, 0, {x = 52.635, y = 130.624, z = 69.417}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 20135)
end

function Quest40066:OnSubFinish4006604(arg1)
    print("OnSubFinish4006604")
    if actorMgr:GetActor("Q4006604_SafeTrigger") ~= nil then
        self:ActorDestroy("Q4006604_SafeTrigger")
    end
end

function Quest40066:OnSubStart4006605(arg1)
    print("OnSubStart4006605")
    actorMgr:CreateActorWithPos("Q4006605_SafeTrigger", "Actor/Gadget/Q4006605_SafeTrigger", 70900002, 0, {x = 59.115, y = 106.099, z = 23.392}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 20135)
end

function Quest40066:OnSubFinish4006605(arg1)
    print("OnSubFinish4006605")
    if actorMgr:GetActor("Q4006605_SafeTrigger") ~= nil then
        self:ActorDestroy("Q4006605_SafeTrigger")
    end
end

function Quest40066:OnSubStart4006606(arg1)
    print("OnSubStart4006606")
    self:CreateQuestNpc(arg1, npcs.Npc12611Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc12613Data.id, 2)
    actorMgr:CreateActorWithPos("Q4006606_Trigger", "Actor/Gadget/Q4006606_Trigger", 70900002, 0, {x = 74.825, y = 108.187, z = -1.139}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 20135)
end

function Quest40066:OnSubFinish4006606(arg1)
    print("OnSubFinish4006606")
    self:SafeDestroyQuestNpc(npcs.Npc10011Data.alias, 20135)
    self:SafeDestroyQuestNpc(npcs.Npc10095Data.alias, 20135)
end

function Quest40066:OnSubStart4006607(arg1)
    print("OnSubStart4006607")
    self:NpcCreateWithActionSafeCall(arg1, npcs.Npc12611Data.id, 1)
    self:NpcCreateWithActionSafeCall(arg1, npcs.Npc12613Data.id, 2)
    self:ActionSafeCall(function(arg1)
        arg1:GetQuestNpcActor(npcs.Npc12611Data.alias):DisableInteeHeadCtrl(true)
        arg1:GetQuestNpcActor(npcs.Npc12613Data.alias):DisableInteeHeadCtrl(true)
    end)
end

function Quest40066:OnSubFinish4006607(arg1)
    print("OnSubFinish4006607")
end

function Quest40066:OnSubStart4006608(arg1)
    print("OnSubStart4006608")
    actorMgr:CreateActorWithPos("Q4006608_SafeTrigger", "Actor/Gadget/Q4006608_SafeTrigger", 70900002, 0, {x = 100.161, y = 73.047, z = 40.39}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 20135)
end

function Quest40066:OnSubFinish4006608(arg1)
    print("OnSubFinish4006608")
    if actorMgr:GetActor("Q4006608_SafeTrigger") ~= nil then
        self:ActorDestroy("Q4006608_SafeTrigger")
    end
end

function Quest40066:OnSubStart4006609(arg1)
    print("OnSubStart4006609")
    actorMgr:CreateActorWithPos("Q4006609_SafeTrigger", "Actor/Gadget/Q4006609_SafeTrigger", 70900002, 0, {x = 139.279, y = 85.136, z = 73.705}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 20135)
end

function Quest40066:OnSubFinish4006609(arg1)
    print("OnSubFinish4006609")
    if actorMgr:GetActor("Q4006609_SafeTrigger") ~= nil then
        self:ActorDestroy("Q4006609_SafeTrigger")
    end
end

function Quest40066:OnSubStart4006610(arg1)
    print("OnSubStart4006610")
    actorMgr:CreateActorWithPos("Q4006610_SafeTrigger", "Actor/Gadget/Q4006610_SafeTrigger", 70900002, 0, {x = 132.575, y = 94.765, z = 21.543}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 20135)
end

function Quest40066:OnSubFinish4006610(arg1)
    print("OnSubFinish4006610")
    self:SafeDestroyQuestNpc(npcs.Npc12611Data.alias, 20135)
    self:SafeDestroyQuestNpc(npcs.Npc12613Data.alias, 20135)
    self:GetQuestNpcActor(npcs.Npc12611Data.alias):DisableInteeHeadCtrl(false)
    self:GetQuestNpcActor(npcs.Npc12613Data.alias):DisableInteeHeadCtrl(false)
    if actorMgr:GetActor("Q4006610_SafeTrigger") ~= nil then
        self:ActorDestroy("Q4006610_SafeTrigger")
    end
end

function Quest40066:OnSubStart4006611(arg1)
    print("OnSubStart4006611")
    self:CreateQuestNpc(arg1, npcs.Npc12611Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc12613Data.id, 3)
    actorMgr:CreateActorWithPos("Q4006611_Trigger", "Actor/Gadget/Q4006611_Trigger", 70900002, 0, {x = 124.975, y = 93.253, z = -12.928}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 20135)
end

function Quest40066:OnSubFinish4006611(arg1)
    print("OnSubFinish4006611")
    self:SafeDestroyQuestNpc(npcs.Npc1042Data.alias, 20135)
    self:SafeDestroyQuestNpc(npcs.Npc10011Data.alias, 20135)
    self:SafeDestroyQuestNpc(npcs.Npc10095Data.alias, 20135)
end

function Quest40066:OnSubStart4006612(arg1)
    print("OnSubStart4006612")
    self:NpcCreateWithActionSafeCall(arg1, npcs.Npc12611Data.id, 1)
    self:NpcCreateWithActionSafeCall(arg1, npcs.Npc12613Data.id, 2)
    self:ActionSafeCall(function(arg1)
        arg1:GetQuestNpcActor(npcs.Npc12611Data.alias):DisableInteeHeadCtrl(true)
        arg1:GetQuestNpcActor(npcs.Npc12613Data.alias):DisableInteeHeadCtrl(true)
    end)
end

function Quest40066:OnSubFinish4006612(arg1)
    print("OnSubFinish4006612")
end

function Quest40066:OnSubStart4006613(arg1)
    print("OnSubStart4006613")
    actorMgr:CreateActorWithPos("Q4006613_Trigger", "Actor/Gadget/Q4006613_Trigger", 70900002, 0, sceneData:GetDummyPoint(20135, "Q4006613_SoulKazuha").pos, sceneData:GetDummyPoint(20135, "Q4006613_SoulKazuha").rot, true, false, 20135)
end

function Quest40066:OnSubFinish4006613(arg1)
    print("OnSubFinish4006613")
    self:NarratorOnlyTaskByData(datas.Narrator_4006601, nil, 40066)
end

function Quest40066:OnSubStart4006614(arg1)
    print("OnSubStart4006614")
    self:CreateQuestNpc(arg1, npcs.Npc12614Data.id, 2)
    self:CreateQuestNpcWithTriggerBlack("Q4006614_Trigger", 4006614, npcs.Npc12614Data.id, 2, 5, 1)
end

function Quest40066:OnSubFinish4006614(arg1)
    print("OnSubFinish4006614")
    self:SafeDestroyQuestNpc(npcs.Npc1042Data.alias, 20135)
    self:SafeDestroyQuestNpc(npcs.Npc12614Data.alias, 20135)
    self:SafeDestroyQuestNpc(npcs.Npc10011Data.alias, 20135)
    self:SafeDestroyQuestNpc(npcs.Npc10095Data.alias, 20135)
end

function Quest40066:OnSubStart4006615(arg1)
    print("OnSubStart4006615")
    self:DisableMainPageWithConfig(false, "DisableTestHZM")
    actorMgr:CreateActorWithPos("Q4006615_Trigger", "Actor/Gadget/Q4006615_Trigger", 70900002, 0, sceneData:GetDummyPoint(20135, "Q4006615_transmit").pos, sceneData:GetDummyPoint(20135, "Q4006615_transmit").rot, true, false, 20135)
end

function Quest40066:OnSubFinish4006615(arg1)
    print("OnSubFinish4006615")
end

function Quest40066:OnSubStart4006616(arg1)
    print("OnSubStart4006616")
    self:LevelLoadFinishSafeCall(function(arg1)
        arg1:DisableMainPageWithConfig(true, "DisableTestHZM")
    end)
end

function Quest40066:OnSubFinish4006616(arg1)
    print("OnSubFinish4006616")
    self:SafeDestroyQuestNpc(npcs.Npc12611Data.alias, 20135)
    self:SafeDestroyQuestNpc(npcs.Npc12613Data.alias, 20135)
    self:GetQuestNpcActor(npcs.Npc12611Data.alias):DisableInteeHeadCtrl(false)
    self:GetQuestNpcActor(npcs.Npc12613Data.alias):DisableInteeHeadCtrl(false)
    self:TransmitPlayerWithTextById(arg1, 1, nil, 1)
    self:DisableMainPageWithConfig(false, "DisableTestHZM")
end

function Quest40066:OnSubStart4006617(arg1)
    print("OnSubStart4006617")
    self:CreateQuestNpcWithTrigger("Q4006617_Trigger", 4006617, npcs.Npc1032Data.id, 2, 20)
    actorMgr:CreateActorWithPos("Q4006617_TransTrigger", "Actor/Gadget/Q4006617_TransTrigger", 70900002, 0, {x = 110.129, y = -212.935, z = 612.8}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 20135)
end

function Quest40066:OnSubFinish4006617(arg1)
    print("OnSubFinish4006617")
    self:SafeDestroyQuestNpc(npcs.Npc1042Data.alias, 20135)
    self:SafeDestroyQuestNpc(npcs.Npc1032Data.alias, 20135)
    self:SafeDestroyQuestNpc(npcs.Npc10011Data.alias, 20135)
    self:SafeDestroyQuestNpc(npcs.Npc10095Data.alias, 20135)
    self:TransmitPlayerWithTextById(arg1, 1, datas.TextmapId, 1)
    if actorMgr:GetActor("Q4006617_TransTrigger") ~= nil then
        self:ActorDestroy("Q4006617_TransTrigger")
    end
end

function Quest40066:OnSubStart4006619(arg1)
    print("OnSubStart4006619")
end

function Quest40066:OnSubFinish4006619(arg1)
    print("OnSubFinish4006619")
end

function Quest40066:OnSubStart4006618(arg1)
    print("OnSubStart4006618")
    self:CreateQuestNpcWithTriggerBlack("Q4006618_Trigger", 4006618, npcs.Npc1032Data.id, 2, 20, 1)
end

function Quest40066:OnSubFinish4006618(arg1)
    print("OnSubFinish4006618")
    self:SafeDestroyQuestNpc(npcs.Npc1042Data.alias, 9)
    self:SafeDestroyQuestNpc(npcs.Npc1032Data.alias, 9)
    self:SafeDestroyQuestNpc(npcs.Npc10011Data.alias, 9)
    self:SafeDestroyQuestNpc(npcs.Npc10095Data.alias, 9)
end

return Quest40066
