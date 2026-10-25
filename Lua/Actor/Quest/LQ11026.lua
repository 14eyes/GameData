require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest11026 = class("Quest11026", QuestActorProxy)
Quest11026.defaultAlias = "Quest11026"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local gadgets
local datas

function Quest11026:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    gadgets = clientData.Gadgets
    datas = clientData.Datas
end

function Quest11026:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1102601"] = self.OnSubStart1102601,
        ["1102603"] = self.OnSubStart1102603,
        ["1102602"] = self.OnSubStart1102602,
        ["1102604"] = self.OnSubStart1102604,
        ["1102605"] = self.OnSubStart1102605,
        ["1102606"] = self.OnSubStart1102606,
        ["1102607"] = self.OnSubStart1102607,
        ["1102608"] = self.OnSubStart1102608,
        ["1102609"] = self.OnSubStart1102609,
        ["1102610"] = self.OnSubStart1102610,
        ["1102611"] = self.OnSubStart1102611,
        ["1102612"] = self.OnSubStart1102612,
        ["1102626"] = self.OnSubStart1102626,
        ["1102613"] = self.OnSubStart1102613,
        ["1102619"] = self.OnSubStart1102619,
        ["1102620"] = self.OnSubStart1102620,
        ["1102622"] = self.OnSubStart1102622,
        ["1102624"] = self.OnSubStart1102624,
        ["1102623"] = self.OnSubStart1102623,
        ["1102614"] = self.OnSubStart1102614,
        ["1102625"] = self.OnSubStart1102625,
        ["1102615"] = self.OnSubStart1102615,
        ["1102621"] = self.OnSubStart1102621,
        ["1102616"] = self.OnSubStart1102616,
        ["1102617"] = self.OnSubStart1102617,
        ["1102618"] = self.OnSubStart1102618
    }
end

function Quest11026:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1102601"] = self.OnSubFinish1102601,
        ["1102603"] = self.OnSubFinish1102603,
        ["1102602"] = self.OnSubFinish1102602,
        ["1102604"] = self.OnSubFinish1102604,
        ["1102605"] = self.OnSubFinish1102605,
        ["1102606"] = self.OnSubFinish1102606,
        ["1102607"] = self.OnSubFinish1102607,
        ["1102608"] = self.OnSubFinish1102608,
        ["1102609"] = self.OnSubFinish1102609,
        ["1102610"] = self.OnSubFinish1102610,
        ["1102611"] = self.OnSubFinish1102611,
        ["1102612"] = self.OnSubFinish1102612,
        ["1102626"] = self.OnSubFinish1102626,
        ["1102613"] = self.OnSubFinish1102613,
        ["1102619"] = self.OnSubFinish1102619,
        ["1102620"] = self.OnSubFinish1102620,
        ["1102622"] = self.OnSubFinish1102622,
        ["1102624"] = self.OnSubFinish1102624,
        ["1102623"] = self.OnSubFinish1102623,
        ["1102614"] = self.OnSubFinish1102614,
        ["1102625"] = self.OnSubFinish1102625,
        ["1102615"] = self.OnSubFinish1102615,
        ["1102621"] = self.OnSubFinish1102621,
        ["1102616"] = self.OnSubFinish1102616,
        ["1102617"] = self.OnSubFinish1102617,
        ["1102618"] = self.OnSubFinish1102618
    }
end

function Quest11026:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["1102603"] = self.OnSubFailed1102603, ["1102621"] = self.OnSubFailed1102621}
end

function Quest11026:Start()
    print("Start")
end

function Quest11026:OnDestroy()
    print("OnDestroy")
end

function Quest11026:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest11026:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest11026:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest11026:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest11026:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    self:ActionSafeCall(function(arg1_2)
        arg1_2:NotifyTo(arg1, arg2, arg3)
    end)
end

function Quest11026:NpcCreateWithActionSafeCall(arg1, arg2, arg3)
    self:ActionSafeCall(function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, arg2, arg3)
    end)
end

function Quest11026:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 11 then
        self:SpawnGadgetById(1102614, gadgets.Gadget70710688ZhiyiData.id, 1)
    elseif arg1 == 12 then
        self:UnSpawn(gadgets.Gadget70710688ZhiyiData.alias)
    elseif arg1 == 21 then
        self:SpawnGadgetById(1102625, gadgets.Gadget70710688OtherData.id, 1)
    elseif arg1 == 22 then
        self:UnSpawn(gadgets.Gadget70710688OtherData.alias)
    elseif arg1 == 3 then
        actorUtils.FinishQuestID(false, 1102625)
    elseif arg1 == 26 then
        actorUtils.FinishQuestID(false, 1102626)
    elseif arg1 == 1102621 then
        actorUtils.FinishQuestID(false, 1102621)
    end
end

function Quest11026:OnSubStart1102601(arg1)
    print("OnSubStart1102601")
end

function Quest11026:OnSubFinish1102601(arg1)
    print("OnSubFinish1102601")
end

function Quest11026:OnSubStart1102603(arg1)
    print("OnSubStart1102603")
    actorMgr:CreateActorWithPos("Q1102603Trigger", "Actor/Gadget/Q1102603Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q1102602_N1048").pos, sceneData:GetDummyPoint(3, "Q1102602_N1048").rot, true, false, 3)
end

function Quest11026:OnSubFinish1102603(arg1)
    print("OnSubFinish1102603")
end

function Quest11026:OnSubFailed1102603(arg1)
    print("OnSubFailed1102603")
    self:SafeDestroyQuestNpc(npcs.Npc1048Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12498Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12499Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12500Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12504Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12501Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12502Data.alias, 3)
    self:ActorDestroy("Q1102603Trigger")
    self:LightNotifyTo(npcs.Npc2070Data.alias, 0, true)
    self:ActorDestroy("Q1102602Trigger")
end

function Quest11026:OnSubStart1102602(arg1)
    print("OnSubStart1102602")
    self:CreateQuestNpc(arg1, npcs.Npc12498Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc12499Data.id, 3)
    self:CreateQuestNpc(arg1, npcs.Npc12500Data.id, 4)
    self:CreateQuestNpc(arg1, npcs.Npc12504Data.id, 5)
    self:CreateQuestNpc(arg1, npcs.Npc12501Data.id, 6)
    self:CreateQuestNpc(arg1, npcs.Npc12502Data.id, 7)
    self:NotifyTo(npcs.Npc2070Data.alias, 2, true)
    self:CreateQuestNpcWithTrigger("Q1102602Trigger", 1102602, 1048, 1, 23)
end

function Quest11026:OnSubFinish1102602(arg1)
    print("OnSubFinish1102602")
    self:SafeDestroyQuestNpc(npcs.Npc1048Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12498Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12499Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12500Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12504Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12501Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12502Data.alias, 3)
    self:NarratorOnlyTaskByData(datas.NarratorWithId1102601)
end

function Quest11026:OnSubStart1102604(arg1)
    print("OnSubStart1102604")
    self:LightNotifyTo(npcs.Npc2070Data.alias, 0, true)
    self:CreateQuestNpcWithTriggerBlack("Q1102604Trigger", 1102604, 12501, 1, 5, 1)
end

function Quest11026:OnSubFinish1102604(arg1)
    print("OnSubFinish1102604")
    self:SafeDestroyQuestNpc(npcs.Npc12501Data.alias, 3)
end

function Quest11026:OnSubStart1102605(arg1)
    print("OnSubStart1102605")
    self:CreateQuestNpcWithTriggerBlack("Q1102605Trigger", 1102605, 2147, 2, 20, 1)
    self:StopNarrator()
    self:ClearNarratorTask()
end

function Quest11026:OnSubFinish1102605(arg1)
    print("OnSubFinish1102605")
    self:SafeDestroyQuestNpc(npcs.Npc2147Data.alias, 1035)
end

function Quest11026:OnSubStart1102606(arg1)
    print("OnSubStart1102606")
    self:CreateQuestNpc(arg1, npcs.Npc2023Data.id, 2)
    self:DailyNpcSafeHideSelf(npcs.Npc2015Data.alias, 1, true)
end

function Quest11026:OnSubFinish1102606(arg1)
    print("OnSubFinish1102606")
    self:SafeDestroyQuestNpc(npcs.Npc2023Data.alias, 3)
end

function Quest11026:OnSubStart1102607(arg1)
    print("OnSubStart1102607")
    self:LightNotifyTo(npcs.Npc2015Data.alias, 0, true)
    self:DailyNpcSafeHideSelf(npcs.Npc2036Data.alias, 1, true)
end

function Quest11026:OnSubFinish1102607(arg1)
    print("OnSubFinish1102607")
end

function Quest11026:OnSubStart1102608(arg1)
    print("OnSubStart1102608")
    self:NpcCreateWithActionSafeCall(arg1, npcs.Npc1048Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc1048Data.alias):DoFreeStyle(1190, true, nil, true, true, false)
    self:DailyNpcSafeHideSelf(npcs.Npc2036Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q1102608Trigger", "Actor/Gadget/Q1102608Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q1102608_N1048").pos, sceneData:GetDummyPoint(3, "Q1102608_N1048").rot, true, false, 3)
end

function Quest11026:OnSubFinish1102608(arg1)
    print("OnSubFinish1102608")
    self:SafeDestroyQuestNpc(npcs.Npc1048Data.alias, 3)
end

function Quest11026:OnSubStart1102609(arg1)
    print("OnSubStart1102609")
    self:LightNotifyTo(npcs.Npc2036Data.alias, 0, true)
    self:UnSpawn(gadgets.Gadget70710062Data.alias)
    self:DelaySpawnGadget(arg1, gadgets.Gadget70710062Data.id, 1, 0)
    actorMgr:CreateActorWithPos("Q1102609Trigger", "Actor/Gadget/Q1102609Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "guide_Q1102609").pos, sceneData:GetDummyPoint(3, "guide_Q1102609").rot, true, false, 3)
end

function Quest11026:OnSubFinish1102609(arg1)
    print("OnSubFinish1102609")
end

function Quest11026:OnSubStart1102610(arg1)
    print("OnSubStart1102610")
    self:UnSpawn(gadgets.Gadget70710062Data.alias)
    self:DelaySpawnGadget(arg1, gadgets.Gadget70710062Data.id, 1, 0)
    self:CreateQuestNpcWithTriggerBlack("Q1102610Trigger", 1102610, 1048, 1, 10, 1)
end

function Quest11026:OnSubFinish1102610(arg1)
    print("OnSubFinish1102610")
    self:SafeDestroyQuestNpc(npcs.Npc1048Data.alias, 3)
end

function Quest11026:OnSubStart1102611(arg1)
    print("OnSubStart1102611")
    self:UnSpawn(gadgets.Gadget70710062Data.alias)
    self:DelaySpawnGadget(arg1, gadgets.Gadget70710062Data.id, 1, 0)
end

function Quest11026:OnSubFinish1102611(arg1)
    print("OnSubFinish1102611")
    self:UnSpawn(gadgets.Gadget70710062Data.alias)
end

function Quest11026:OnSubStart1102612(arg1)
    print("OnSubStart1102612")
    actorMgr:CreateActorWithPos("Q1102612Trigger", "Actor/Gadget/Q1102612Trigger", 70900002, 0, sceneData:GetDummyPoint(20131, "Q1102612_N1048").pos, sceneData:GetDummyPoint(20131, "Q1102612_N1048").rot, true, false, 20131)
end

function Quest11026:OnSubFinish1102612(arg1)
    print("OnSubFinish1102612")
    self:SafeDestroyQuestNpc(npcs.Npc1048Data.alias, 3)
end

function Quest11026:OnSubStart1102626(arg1)
    print("OnSubStart1102626")
end

function Quest11026:OnSubFinish1102626(arg1)
    print("OnSubFinish1102626")
end

function Quest11026:OnSubStart1102613(arg1)
    print("OnSubStart1102613")
    self:CreateQuestNpc(arg1, npcs.Npc12498Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc12505Data.id, 3)
end

function Quest11026:OnSubFinish1102613(arg1)
    print("OnSubFinish1102613")
    self:SafeDestroyQuestNpc(npcs.Npc1048Data.alias, 20131)
end

function Quest11026:OnSubStart1102619(arg1)
    print("OnSubStart1102619")
    local avatarPos = actorUtils.GetAvatarPos()
    local avatarForward = actorUtils.GetAvatarForward()
    local n = 1.5
    print(avatarForward.x .. "," .. avatarForward.y .. "," .. avatarForward.z)
    avatarPos.x = avatarPos.x + avatarForward.x * n
    avatarPos.z = avatarPos.z + avatarForward.z * n
    local v = avatarForward
    v.x = v.x * -1
    v.z = v.z * -1
    self:CreateQuestNpcByIdWithPos(1102619, 1005, 4, avatarPos, M.Dir2Euler(v))
    self:RequestInteraction(npcs.PaimonData.alias)
end

function Quest11026:OnSubFinish1102619(arg1)
    print("OnSubFinish1102619")
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
end

function Quest11026:OnSubStart1102620(arg1)
    print("OnSubStart1102620")
end

function Quest11026:OnSubFinish1102620(arg1)
    print("OnSubFinish1102620")
    self:PlayCutsceneIndex(110262001, function(arg1)
        arg1:NarratorOnlyTaskByData(datas.NarratorWithId1102603, nil, 11026)
    end, nil, nil, true)
end

function Quest11026:OnSubStart1102622(arg1)
    print("OnSubStart1102622")
end

function Quest11026:OnSubFinish1102622(arg1)
    print("OnSubFinish1102622")
    self:NarratorOnlyTaskByData(datas.NarratorWithId1102604, nil, 11026)
end

function Quest11026:OnSubStart1102624(arg1)
    print("OnSubStart1102624")
    self:UnSpawn(gadgets.Gadget70710770Data.alias)
    self:DelaySpawnGadget(arg1, gadgets.Gadget70710770Data.id, 1, 0)
end

function Quest11026:OnSubFinish1102624(arg1)
    print("OnSubFinish1102624")
    self:UnSpawn(gadgets.Gadget70710770Data.alias)
    self:NarratorOnlyTaskByData(datas.NarratorWithId1102608, nil, 11026)
end

function Quest11026:OnSubStart1102623(arg1)
    print("OnSubStart1102623")
    actorMgr:CreateActorWithPos("Q1102623Trigger", "Actor/Gadget/Q1102623Trigger", 70900002, 0, sceneData:GetDummyPoint(20131, "Q1102613_N12498").pos, sceneData:GetDummyPoint(20131, "Q1102613_N12498").rot, true, false, 20131)
end

function Quest11026:OnSubFinish1102623(arg1)
    print("OnSubFinish1102623")
end

function Quest11026:OnSubStart1102614(arg1)
    print("OnSubStart1102614")
    self:UnSpawn(gadgets.Gadget70710688ZhiyiData.alias)
    self:DelaySpawnGadget(arg1, gadgets.Gadget70710688ZhiyiData.id, 1, 0)
    self:UnSpawn(gadgets.Gadget70710688OtherData.alias)
    self:DelaySpawnGadget(arg1, gadgets.Gadget70710688OtherData.id, 2, 0)
    self:CreateQuestNpcWithTriggerBlack("Q1102614Trigger", 1102614, 1048, 1, 5, 1)
end

function Quest11026:OnSubFinish1102614(arg1)
    print("OnSubFinish1102614")
    self:UnSpawn(gadgets.Gadget70710688ZhiyiData.alias)
    self:UnSpawn(gadgets.Gadget70710688OtherData.alias)
end

function Quest11026:OnSubStart1102625(arg1)
    print("OnSubStart1102625")
end

function Quest11026:OnSubFinish1102625(arg1)
    print("OnSubFinish1102625")
end

function Quest11026:OnSubStart1102615(arg1)
    print("OnSubStart1102615")
    self:CreateQuestNpc(arg1, npcs.Npc12504Data.id, 2)
    self:GetQuestNpcActor(npcs.Npc12504Data.alias):DoFreeStyle(1120, true, nil, true, true, false)
    self:GetQuestNpcActor(npcs.Npc12505Data.alias):DoFreeStyle(4120, true, nil, true, true, false)
    self:CreateQuestNpc(arg1, npcs.Npc12501Data.id, 4)
    self:GetQuestNpcActor(npcs.Npc12501Data.alias):DoFreeStyle(1230, true, nil, true, true, false)
    self:CreateQuestNpc(arg1, npcs.Npc12502Data.id, 5)
    self:GetQuestNpcActor(npcs.Npc12502Data.alias):DoFreeStyle(1230, true, nil, true, true, false)
    actorMgr:CreateActorWithPos("Q1102615Trigger", "Actor/Gadget/Q1102615Trigger", 70900002, 0, sceneData:GetDummyPoint(20131, "Q1102615_N12501").pos, sceneData:GetDummyPoint(20131, "Q1102615_N12501").rot, true, false, 20131)
end

function Quest11026:OnSubFinish1102615(arg1)
    print("OnSubFinish1102615")
    self:SafeDestroyQuestNpc(npcs.Npc1048Data.alias, 20131)
    self:SafeDestroyQuestNpc(npcs.Npc12498Data.alias, 20131)
    self:SafeDestroyQuestNpc(npcs.Npc12504Data.alias, 20131)
    self:SafeDestroyQuestNpc(npcs.Npc12505Data.alias, 20131)
    self:SafeDestroyQuestNpc(npcs.Npc12501Data.alias, 20131)
    self:SafeDestroyQuestNpc(npcs.Npc12502Data.alias, 20131)
    self:SafeDestroyQuestNpc(npcs.Npc12524Data.alias, 20131)
    self:SafeDestroyQuestNpc(npcs.Npc12525Data.alias, 20131)
    self:SafeDestroyQuestNpc(npcs.Npc12526Data.alias, 20131)
    self:SafeDestroyQuestNpc(npcs.Npc12527Data.alias, 20131)
end

function Quest11026:OnSubStart1102621(arg1)
    print("OnSubStart1102621")
end

function Quest11026:OnSubFinish1102621(arg1)
    print("OnSubFinish1102621")
end

function Quest11026:OnSubFailed1102621(arg1)
    print("OnSubFailed1102621")
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc1048Data.alias)
    questNpcActor:SteerToTask(sceneData:GetDummyPoint(20131, "Q1102616_N12547").rot, 0.5, true, true)
    questNpcActor:DoFreeStyle(4503, false, nil, true, true, false)
    questNpcActor:DoFreeStateTrigger()
    self:CallDelay(0.5, function(arg1)
        arg1:GetQuestNpcActor(npcs.Npc1048Data.alias, 11026):TurnToAvatar()
    end)

    self:ShowBlackScreen(0.5, 4, 0.5, nil, function(arg1)
        arg1:NarratorOnlyTaskByData(datas.NarratorWithId1102607, nil, 11026)
        arg1:CallDelay(0.5, function(arg1)
            arg1:GetQuestNpcActor(npcs.Npc1048Data.alias):DoFreeStyle(1230, true, nil, true, false, false)
        end)
    end, nil, "QUEST_Black_Q1102621", false, true)
end

function Quest11026:OnSubStart1102616(arg1)
    print("OnSubStart1102616")
end

function Quest11026:OnSubFinish1102616(arg1)
    print("OnSubFinish1102616")
end

function Quest11026:OnSubStart1102617(arg1)
    print("OnSubStart1102617")
    self:DailyNpcSafeHideSelf(npcs.Npc2003Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc2029Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc2036Data.alias, 1, true)
end

function Quest11026:OnSubFinish1102617(arg1)
    print("OnSubFinish1102617")
end

function Quest11026:OnSubStart1102618(arg1)
    print("OnSubStart1102618")
    self:CreateQuestNpc(arg1, npcs.Npc10234Data.id, 4)
    self:CreateQuestNpc(arg1, npcs.Npc2029Data.id, 5)
    self:DailyNpcSafeHideSelf(npcs.Npc2036Data.alias, 1, true)
    self:CreateQuestNpcWithTrigger("Q1102618Trigger", 1102618, 2003, 3, 12)
end

function Quest11026:OnSubFinish1102618(arg1)
    print("OnSubFinish1102618")
    self:SafeDestroyQuestNpc(npcs.Npc1048Data.alias, 20131)
    self:SafeDestroyQuestNpc(npcs.Npc10234Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc2029Data.alias, 3)
    actorMgr:CreateActorWithPos("Q1102618Trigger", "Actor/Gadget/Q1102618Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q1102618_N2003").pos, sceneData:GetDummyPoint(3, "Q1102618_N2003").rot, true, false, 3)
end

return Quest11026
