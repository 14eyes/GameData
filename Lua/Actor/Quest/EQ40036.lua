require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40036 = class("Quest40036", QuestActorProxy)
Quest40036.defaultAlias = "Quest40036"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local gadgets
local datas

function Quest40036:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    gadgets = clientData.Gadgets
    datas = clientData.Datas
end

function Quest40036:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4003601"] = self.OnSubStart4003601,
        ["4003602"] = self.OnSubStart4003602,
        ["4003603"] = self.OnSubStart4003603,
        ["4003620"] = self.OnSubStart4003620,
        ["4003604"] = self.OnSubStart4003604,
        ["4003616"] = self.OnSubStart4003616,
        ["4003617"] = self.OnSubStart4003617,
        ["4003618"] = self.OnSubStart4003618,
        ["4003605"] = self.OnSubStart4003605,
        ["4003606"] = self.OnSubStart4003606,
        ["4003615"] = self.OnSubStart4003615,
        ["4003607"] = self.OnSubStart4003607,
        ["4003622"] = self.OnSubStart4003622,
        ["4003621"] = self.OnSubStart4003621,
        ["4003608"] = self.OnSubStart4003608,
        ["4003609"] = self.OnSubStart4003609,
        ["4003610"] = self.OnSubStart4003610,
        ["4003611"] = self.OnSubStart4003611,
        ["4003612"] = self.OnSubStart4003612,
        ["4003613"] = self.OnSubStart4003613,
        ["4003614"] = self.OnSubStart4003614,
        ["4003619"] = self.OnSubStart4003619
    }
end

function Quest40036:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4003601"] = self.OnSubFinish4003601,
        ["4003602"] = self.OnSubFinish4003602,
        ["4003603"] = self.OnSubFinish4003603,
        ["4003620"] = self.OnSubFinish4003620,
        ["4003604"] = self.OnSubFinish4003604,
        ["4003616"] = self.OnSubFinish4003616,
        ["4003617"] = self.OnSubFinish4003617,
        ["4003618"] = self.OnSubFinish4003618,
        ["4003605"] = self.OnSubFinish4003605,
        ["4003606"] = self.OnSubFinish4003606,
        ["4003615"] = self.OnSubFinish4003615,
        ["4003607"] = self.OnSubFinish4003607,
        ["4003622"] = self.OnSubFinish4003622,
        ["4003621"] = self.OnSubFinish4003621,
        ["4003608"] = self.OnSubFinish4003608,
        ["4003609"] = self.OnSubFinish4003609,
        ["4003610"] = self.OnSubFinish4003610,
        ["4003611"] = self.OnSubFinish4003611,
        ["4003612"] = self.OnSubFinish4003612,
        ["4003613"] = self.OnSubFinish4003613,
        ["4003614"] = self.OnSubFinish4003614,
        ["4003619"] = self.OnSubFinish4003619
    }
end

function Quest40036:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["4003601"] = self.OnSubFailed4003601,
        ["4003602"] = self.OnSubFailed4003602,
        ["4003603"] = self.OnSubFailed4003603,
        ["4003604"] = self.OnSubFailed4003604,
        ["4003605"] = self.OnSubFailed4003605,
        ["4003606"] = self.OnSubFailed4003606,
        ["4003615"] = self.OnSubFailed4003615,
        ["4003608"] = self.OnSubFailed4003608,
        ["4003609"] = self.OnSubFailed4003609,
        ["4003610"] = self.OnSubFailed4003610,
        ["4003611"] = self.OnSubFailed4003611,
        ["4003612"] = self.OnSubFailed4003612,
        ["4003613"] = self.OnSubFailed4003613,
        ["4003614"] = self.OnSubFailed4003614
    }
end

function Quest40036:Start()
    print("Start")
end

function Quest40036:OnDestroy()
    print("OnDestroy")
end

function Quest40036:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest40036:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest40036:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc1016Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc2093Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1030Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc10285Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1015Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc10233Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc10234Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.XiaoData.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc2306Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc10045Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1041Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc2208Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1045Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc30090Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc30097Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc30098Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc30100Data.alias, 3)
    local actor = actorMgr:GetActor("40036")
    actor:UnSpawn(gadgets.Gadget70710560Data1.alias)
    actor:UnSpawn(gadgets.Gadget70710560Data2.alias)
    actor:UnSpawn(gadgets.Gadget70710560Data3.alias)
    actor:UnSpawn(gadgets.Gadget70300092Data.alias)
    actor:UnSpawn(gadgets.Gadget70710595Data.alias)
    actorMgr:DestroyEntityActor("Q40036Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q40036Trigger1", 3, false)
    actorMgr:DestroyEntityActor("Q40036Trigger2", 3, false)
    actorMgr:DestroyEntityActor("Q40036Trigger3", 3, false)
    actorMgr:DestroyEntityActor("Q40036Trigger4", 3, false)
    actorMgr:DestroyEntityActor("Q40036Trigger5", 3, false)
    actorMgr:DestroyEntityActor("Q40036Trigger6", 3, false)
    actorMgr:DestroyEntityActor("Q40036Trigger7", 3, false)
end

function Quest40036:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1 then
        self:FinishQuestID(false, 4003616)
    elseif arg1 == 2 then
        self:FinishQuestID(false, 4003617)
    elseif arg1 == 3 then
        self:FinishQuestID(false, 4003618)
    elseif arg1 == 4 then
        self:FinishQuestID(false, 4003619)
    elseif arg1 == 5 then
        self:FinishQuestID(false, 4003620)
    elseif arg1 == 6 then
        self:FinishQuestID(false, 4003621)
    elseif arg1 == 7 then
        self:FinishQuestID(false, 4003622)
    end
end

function Quest40036:OnSubStart4003601(arg1)
    print("OnSubStart4003601")
end

function Quest40036:OnSubFinish4003601(arg1)
    print("OnSubFinish4003601")
    actorMgr:DestroyNpcActorByAlias("Npc1023240038")
end

function Quest40036:OnSubFailed4003601(arg1)
    print("OnSubFailed4003601")
end

function Quest40036:OnSubStart4003602(arg1)
    print("OnSubStart4003602")
    self:CreateQuestNpc(arg1, npcs.Npc1016Data.id, 0)
    self:GetQuestNpcActor(npcs.Npc1016Data.alias):DoFreeStyle(1120, true, nil, true, true, false)
end

function Quest40036:OnSubFinish4003602(arg1)
    print("OnSubFinish4003602")
    self:ShowBlackScreen(0.5, 0.5, 0.5, function(arg1)
        arg1:GetQuestNpcActor(npcs.Npc1016Data.alias):DoFreeStateTrigger()
        arg1:SafeDestroyQuestNpc(npcs.Npc1016Data.alias, 3)
    end, nil, nil, "", false, true)
end

function Quest40036:OnSubFailed4003602(arg1)
    print("OnSubFailed4003602")
end

function Quest40036:OnSubStart4003603(arg1)
    print("OnSubStart4003603")
    self:CreateQuestNpc(arg1, npcs.Npc2093Data.id, 0)
    self:CreateQuestNpc(arg1, npcs.Npc1030Data.id, 0)
    self:GetQuestNpcActor(npcs.Npc1030Data.alias):DoFreeStyle(1180, true, nil, true, true, false)
    actorMgr:CreateActorWithPos("Q40036Trigger4", "Actor/Gadget/Q40036Trigger4", 70900002, 0, sceneData:GetDummyPoint(3, "Q4003603_N1030_310701350").pos, sceneData:GetDummyPoint(3, "Q4003603_N1030_310701350").rot, true, false, 3)
end

function Quest40036:OnSubFinish4003603(arg1)
    print("OnSubFinish4003603")
    self:ActionSafeCall(function(arg1)
        arg1:NarratorOnlyTaskByData(datas.Narrator1, nil, 40036)
        arg1:GetQuestNpcActor(npcs.Npc1030Data.alias):DoFreeStateTrigger()
    end)
end

function Quest40036:OnSubFailed4003603(arg1)
    print("OnSubFailed4003603")
end

function Quest40036:OnSubStart4003620(arg1)
    print("OnSubStart4003620")
end

function Quest40036:OnSubFinish4003620(arg1)
    print("OnSubFinish4003620")
end

function Quest40036:OnSubStart4003604(arg1)
    print("OnSubStart4003604")
    self:CreateQuestNpc(arg1, npcs.Npc10285Data.id, 0)
    self:CreateQuestNpc(arg1, npcs.Npc1015Data.id, 0)
    actorMgr:CreateActorWithPos("Q40036Trigger5", "Actor/Gadget/Q40036Trigger5", 70900002, 0, sceneData:GetDummyPoint(3, "Q4003604_N1015_310100082").pos, sceneData:GetDummyPoint(3, "Q4003604_N1015_310100082").rot, true, false, 3)
end

function Quest40036:OnSubFinish4003604(arg1)
    print("OnSubFinish4003604")
    self:SafeDestroyQuestNpc(npcs.Npc1015Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc10285Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc2093Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1030Data.alias, 3)
end

function Quest40036:OnSubFailed4003604(arg1)
    print("OnSubFailed4003604")
end

function Quest40036:OnSubStart4003616(arg1)
    print("OnSubStart4003616")
end

function Quest40036:OnSubFinish4003616(arg1)
    print("OnSubFinish4003616")
end

function Quest40036:OnSubStart4003617(arg1)
    print("OnSubStart4003617")
end

function Quest40036:OnSubFinish4003617(arg1)
    print("OnSubFinish4003617")
end

function Quest40036:OnSubStart4003618(arg1)
    print("OnSubStart4003618")
end

function Quest40036:OnSubFinish4003618(arg1)
    print("OnSubFinish4003618")
end

function Quest40036:OnSubStart4003605(arg1)
    print("OnSubStart4003605")
    actorMgr:CreateActorWithPos("Q40036Trigger", "Actor/Gadget/Q40036Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q4003606_N10234_310400420").pos, sceneData:GetDummyPoint(3, "Q4003606_N10234_310400420").rot, true, false, 3)
    self:CreateQuestNpc(arg1, npcs.Npc10233Data.id, 0)
    self:GetQuestNpcActor(npcs.Npc10233Data.alias):DisableInteeHeadCtrl(true)
    self:CreateQuestNpc(arg1, npcs.Npc10234Data.id, 0)
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc10234Data.alias)
    questNpcActor:DoFreeStyle(1170, true, nil, true, true, false)
    questNpcActor:DisableInteeHeadCtrl(true)
end

function Quest40036:OnSubFinish4003605(arg1)
    print("OnSubFinish4003605")
    self:NarratorOnlyTaskByData(datas.Narrator2, nil, 40036)
end

function Quest40036:OnSubFailed4003605(arg1)
    print("OnSubFailed4003605")
end

function Quest40036:OnSubStart4003606(arg1)
    print("OnSubStart4003606")
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc10234Data.alias)
    questNpcActor:DoFreeStyle(1170, true, nil, true, true, false)
    self:GetQuestNpcActor(npcs.Npc10233Data.alias):DisableInteeHeadCtrl(true)
    questNpcActor:DisableInteeHeadCtrl(true)
    actorMgr:CreateActorWithPos("Q40036Trigger6", "Actor/Gadget/Q40036Trigger6", 70900002, 0, sceneData:GetDummyPoint(3, "Q4003606_N10233_310400419").pos, sceneData:GetDummyPoint(3, "Q4003606_N10233_310400419").rot, true, false, 3)
end

function Quest40036:OnSubFinish4003606(arg1)
    print("OnSubFinish4003606")
    self:GetQuestNpcActor(npcs.Npc10234Data.alias):DoFreeStateTrigger()
end

function Quest40036:OnSubFailed4003606(arg1)
    print("OnSubFailed4003606")
end

function Quest40036:OnSubStart4003615(arg1)
    print("OnSubStart4003615")
    self:CreateQuestNpc(arg1, npcs.Npc2208Data.id, 0)
    self:ClearNarratorTask()
    self:StopNarrator()
    self:GetQuestNpcActor(npcs.Npc10233Data.alias):DisableInteeHeadCtrl(true)
    self:GetQuestNpcActor(npcs.Npc10234Data.alias):DisableInteeHeadCtrl(true)
end

function Quest40036:OnSubFinish4003615(arg1)
    print("OnSubFinish4003615")
end

function Quest40036:OnSubFailed4003615(arg1)
    print("OnSubFailed4003615")
end

function Quest40036:OnSubStart4003607(arg1)
    print("OnSubStart4003607")
    actorMgr:CreateActorWithPos("Q40036Trigger2", "Actor/Gadget/Q40036Trigger2", 70900002, 0, sceneData:GetDummyPoint(3, "T4003607_N1016").pos, sceneData:GetDummyPoint(3, "T4003607_N1016").rot, true, false, 3)
    self:UnSpawn(gadgets.Gadget70710595Data.alias)
    self:GetQuestNpcActor(npcs.Npc10233Data.alias):DisableInteeHeadCtrl(true)
    self:GetQuestNpcActor(npcs.Npc10234Data.alias):DisableInteeHeadCtrl(true)
end

function Quest40036:OnSubFinish4003607(arg1)
    print("OnSubFinish4003607")
    self:SafeDestroyQuestNpc(npcs.Npc2208Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1016Data.alias, 3)
    self:UnSpawn(gadgets.Gadget70710595Data.alias)
end

function Quest40036:OnSubStart4003622(arg1)
    print("OnSubStart4003622")
end

function Quest40036:OnSubFinish4003622(arg1)
    print("OnSubFinish4003622")
    self:UnSpawn(gadgets.Gadget70710595Data.alias)
    self:SpawnGadget(arg1, gadgets.Gadget70710595Data.id, 1)
end

function Quest40036:OnSubStart4003621(arg1)
    print("OnSubStart4003621")
end

function Quest40036:OnSubFinish4003621(arg1)
    print("OnSubFinish4003621")
    self:UnSpawn(gadgets.Gadget70710595Data.alias)
end

function Quest40036:OnSubStart4003608(arg1)
    print("OnSubStart4003608")
    self:CreateQuestNpc(arg1, npcs.Npc2306Data.id, 0)
    actorMgr:CreateActorWithPos("Q40036Trigger7", "Actor/Gadget/Q40036Trigger7", 70900002, 0, sceneData:GetDummyPoint(3, "Q4003608_N230601_310200467").pos, sceneData:GetDummyPoint(3, "Q4003608_N230601_310200467").rot, true, false, 3)
    self:GetQuestNpcActor(npcs.Npc10233Data.alias):DisableInteeHeadCtrl(true)
    self:GetQuestNpcActor(npcs.Npc10234Data.alias):DisableInteeHeadCtrl(true)
end

function Quest40036:OnSubFinish4003608(arg1)
    print("OnSubFinish4003608")
    self:GetQuestNpcActor(npcs.Npc10233Data.alias):DisableInteeHeadCtrl(false)
    self:GetQuestNpcActor(npcs.Npc10234Data.alias):DisableInteeHeadCtrl(false)
    self:SafeDestroyQuestNpc(npcs.Npc10233Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc10234Data.alias, 3)
end

function Quest40036:OnSubFailed4003608(arg1)
    print("OnSubFailed4003608")
end

function Quest40036:OnSubStart4003609(arg1)
    print("OnSubStart4003609")
    actorMgr:CreateActorWithPos("Q40036Trigger3", "Actor/Gadget/Q40036Trigger3", 70900002, 0, sceneData:GetDummyPoint(3, "T4003610_N1005").pos, sceneData:GetDummyPoint(3, "T4003610_N1005").rot, true, false, 3)
end

function Quest40036:OnSubFinish4003609(arg1)
    print("OnSubFinish4003609")
    self:SafeDestroyQuestNpc(npcs.Npc1016Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc2306Data.alias, 3)
end

function Quest40036:OnSubFailed4003609(arg1)
    print("OnSubFailed4003609")
end

function Quest40036:OnSubStart4003610(arg1)
    print("OnSubStart4003610")
    self:UnSpawn(gadgets.Gadget70710560Data1.alias)
    self:SpawnGadget(arg1, gadgets.Gadget70710560Data1.id, 1)
end

function Quest40036:OnSubFinish4003610(arg1)
    print("OnSubFinish4003610")
    self:UnSpawn(gadgets.Gadget70710560Data1.alias)
    self:NarratorOnlyTaskByData(datas.Narrator3, nil, 40036)
end

function Quest40036:OnSubFailed4003610(arg1)
    print("OnSubFailed4003610")
end

function Quest40036:OnSubStart4003611(arg1)
    print("OnSubStart4003611")
    self:UnSpawn(gadgets.Gadget70710560Data2.alias)
    self:SpawnGadget(arg1, gadgets.Gadget70710560Data2.id, 1)
end

function Quest40036:OnSubFinish4003611(arg1)
    print("OnSubFinish4003611")
    self:UnSpawn(gadgets.Gadget70710560Data2.alias)
    self:NarratorOnlyTaskByData(datas.Narrator5, nil, 40036)
end

function Quest40036:OnSubFailed4003611(arg1)
    print("OnSubFailed4003611")
end

function Quest40036:OnSubStart4003612(arg1)
    print("OnSubStart4003612")
    self:UnSpawn(gadgets.Gadget70710560Data3.alias)
    self:SpawnGadget(arg1, gadgets.Gadget70710560Data3.id, 1)
end

function Quest40036:OnSubFinish4003612(arg1)
    print("OnSubFinish4003612")
    self:UnSpawn(gadgets.Gadget70710560Data3.alias)
    self:NarratorOnlyTaskByData(datas.Narrator5, nil, 40036)
end

function Quest40036:OnSubFailed4003612(arg1)
    print("OnSubFailed4003612")
end

function Quest40036:OnSubStart4003613(arg1)
    print("OnSubStart4003613")
    actorMgr:CreateActorWithPos("Q40036Trigger1", "Actor/Gadget/Q40036Trigger1", 70900002, 0, sceneData:GetDummyPoint(3, "Q4003614_N10045_310200472").pos, sceneData:GetDummyPoint(3, "Q4003614_N10045_310200472").rot, true, false, 3)
    self:CreateQuestNpc(arg1, npcs.Npc10045Data.id, 0)
    self:CreateQuestNpc(arg1, npcs.Npc1041Data.id, 0)
    self:CreateQuestNpc(arg1, npcs.Npc30097Data.id, 0)
    self:CreateQuestNpc(arg1, npcs.Npc30098Data.id, 0)
    self:CreateQuestNpc(arg1, npcs.Npc30100Data.id, 0)
    self:GetQuestNpcActor(npcs.Npc30097Data.alias):DoFreeStyle(4180, true, nil, true, true, false)
    self:GetQuestNpcActor(npcs.Npc10045Data.alias):DoFreeStyle(1220, true, nil, true, true, false)
    self:GetQuestNpcActor(npcs.Npc1041Data.alias):DoFreeStyle(1120, true, nil, true, true, false)
    self:GetQuestNpcActor(npcs.Npc30098Data.alias):DoFreeStyle(4060, true, nil, true, true, false)
    self:GetQuestNpcActor(npcs.Npc30100Data.alias):DoFreeStyle(4060, true, nil, true, true, false)
    self:UnSpawn(gadgets.Gadget70300092Data.alias)
    self:SpawnGadget(arg1, gadgets.Gadget70300092Data.id, 1)
end

function Quest40036:OnSubFinish4003613(arg1)
    print("OnSubFinish4003613")
end

function Quest40036:OnSubFailed4003613(arg1)
    print("OnSubFailed4003613")
end

function Quest40036:OnSubStart4003614(arg1)
    print("OnSubStart4003614")
    self:GetQuestNpcActor(npcs.Npc30097Data.alias):DoFreeStyle(4180, true, nil, true, true, false)
    self:GetQuestNpcActor(npcs.Npc10045Data.alias):DoFreeStyle(1220, true, nil, true, true, false)
    self:GetQuestNpcActor(npcs.Npc1041Data.alias):DoFreeStyle(1120, true, nil, true, true, false)
    self:GetQuestNpcActor(npcs.Npc30098Data.alias):DoFreeStyle(4060, true, nil, true, true, false)
    self:GetQuestNpcActor(npcs.Npc30100Data.alias):DoFreeStyle(4060, true, nil, true, true, false)
    self:RequestInteraction(npcs.Npc10045Data.alias)
end

function Quest40036:OnSubFinish4003614(arg1)
    print("OnSubFinish4003614")
    self:ShowBlackScreen(0.5, 0.5, 0.5, function(arg1)
        arg1:GetQuestNpcActor(npcs.Npc30097Data.alias):DoFreeStateTrigger()
        arg1:GetQuestNpcActor(npcs.Npc10045Data.alias):DoFreeStateTrigger()
        arg1:GetQuestNpcActor(npcs.Npc1041Data.alias):DoFreeStateTrigger()
        arg1:GetQuestNpcActor(npcs.Npc30100Data.alias):DoFreeStateTrigger()
        arg1:GetQuestNpcActor(npcs.Npc30098Data.alias):DoFreeStateTrigger()
        arg1:SafeDestroyQuestNpc(npcs.Npc10045Data.alias, 3)
        arg1:SafeDestroyQuestNpc(npcs.Npc1041Data.alias, 3)
        arg1:SafeDestroyQuestNpc(npcs.Npc30097Data.alias, 3)
        arg1:SafeDestroyQuestNpc(npcs.Npc30098Data.alias, 3)
        arg1:SafeDestroyQuestNpc(npcs.Npc30100Data.alias, 3)
        arg1:UnSpawn(gadgets.Gadget70300092Data.alias)
    end, nil, nil, "", false, true)
end

function Quest40036:OnSubFailed4003614(arg1)
    print("OnSubFailed4003614")
end

function Quest40036:OnSubStart4003619(arg1)
    print("OnSubStart4003619")
end

function Quest40036:OnSubFinish4003619(arg1)
    print("OnSubFinish4003619")
    self:UnSpawn(gadgets.Gadget70300092Data.alias)
end

return Quest40036
