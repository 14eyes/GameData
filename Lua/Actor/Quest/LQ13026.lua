require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest13026 = class("Quest13026", QuestActorProxy)
Quest13026.defaultAlias = "Quest13026"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local gadgets
local datas

function Quest13026:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    gadgets = clientData.Gadgets
    datas = clientData.Datas
end

function Quest13026:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1302601"] = self.OnSubStart1302601,
        ["1302602"] = self.OnSubStart1302602,
        ["1302603"] = self.OnSubStart1302603,
        ["1302604"] = self.OnSubStart1302604,
        ["1302605"] = self.OnSubStart1302605,
        ["1302615"] = self.OnSubStart1302615,
        ["1302606"] = self.OnSubStart1302606,
        ["1302607"] = self.OnSubStart1302607,
        ["1302608"] = self.OnSubStart1302608,
        ["1302616"] = self.OnSubStart1302616,
        ["1302617"] = self.OnSubStart1302617,
        ["1302620"] = self.OnSubStart1302620,
        ["1302609"] = self.OnSubStart1302609,
        ["1302618"] = self.OnSubStart1302618,
        ["1302612"] = self.OnSubStart1302612,
        ["1302613"] = self.OnSubStart1302613,
        ["1302619"] = self.OnSubStart1302619,
        ["1302610"] = self.OnSubStart1302610,
        ["1302611"] = self.OnSubStart1302611,
        ["1302614"] = self.OnSubStart1302614
    }
end

function Quest13026:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1302601"] = self.OnSubFinish1302601,
        ["1302602"] = self.OnSubFinish1302602,
        ["1302603"] = self.OnSubFinish1302603,
        ["1302604"] = self.OnSubFinish1302604,
        ["1302605"] = self.OnSubFinish1302605,
        ["1302615"] = self.OnSubFinish1302615,
        ["1302606"] = self.OnSubFinish1302606,
        ["1302607"] = self.OnSubFinish1302607,
        ["1302608"] = self.OnSubFinish1302608,
        ["1302616"] = self.OnSubFinish1302616,
        ["1302617"] = self.OnSubFinish1302617,
        ["1302620"] = self.OnSubFinish1302620,
        ["1302609"] = self.OnSubFinish1302609,
        ["1302618"] = self.OnSubFinish1302618,
        ["1302612"] = self.OnSubFinish1302612,
        ["1302613"] = self.OnSubFinish1302613,
        ["1302619"] = self.OnSubFinish1302619,
        ["1302610"] = self.OnSubFinish1302610,
        ["1302611"] = self.OnSubFinish1302611,
        ["1302614"] = self.OnSubFinish1302614
    }
end

function Quest13026:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["1302609"] = self.OnSubFailed1302609,
        ["1302612"] = self.OnSubFailed1302612,
        ["1302613"] = self.OnSubFailed1302613
    }
end

function Quest13026:Start()
    print("Start")
end

function Quest13026:OnDestroy()
    print("OnDestroy")
end

function Quest13026:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest13026:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest13026:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest13026:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest13026:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, arg5)
end

function Quest13026:CallDelayNpcCreateWithNpcTriggerAndBlack(arg1, arg2, arg3, arg4, arg5)
    this:CallDelay(2, function(arg1_2)
        this:CreateQuestNpcWithTriggerBlack("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, arg5)
    end)
end

function Quest13026:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1302605 then
        actorUtils.FinishQuestID(false, 1302615)
    elseif arg1 == 1302609 then
        actorUtils.FinishQuestID(false, 1302618)
    elseif arg1 == 1302613 then
        actorUtils.FinishQuestID(false, 1302619)
    elseif arg1 == 130260901 then
        this:SetLocalGadgetState(70330416, "13026", 201)
    elseif arg1 == 130260902 then
        this:SetLocalGadgetState(70330416, "13026", 0)
    end
end

function Quest13026:OnSubStart1302601(arg1)
    print("OnSubStart1302601")
    this:CreateQuestNpc(arg1, npcs.Npc13126Data.id, 2)
    this:CreateQuestNpc(arg1, npcs.Npc13127Data.id, 3)
    this:CreateQuestNpc(arg1, npcs.Npc13193Data.id, 4)
    this:CreateQuestNpc(arg1, npcs.Npc13194Data.id, 5)
    this:CreateQuestNpc(arg1, npcs.Npc13195Data.id, 6)
    actorMgr:CreateActorWithPos("Q1302601Trigger", "Actor/Gadget/Q1302601Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q1302602_guide").pos, sceneData:GetDummyPoint(3, "Q1302602_guide").rot, true, false, 3)
    this:GetQuestNpcActor(npcs.Npc13126Data.alias):DoFreeStyle(4110, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc13127Data.alias):DoFreeStyle(4412, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc13193Data.alias):DoFreeStyle(4130, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc13194Data.alias):DoFreeStyle(4130, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc13195Data.alias):DoFreeStyle(4412, true, nil, true, true, false, true)
end

function Quest13026:OnSubFinish1302601(arg1)
    print("OnSubFinish1302601")
    this:NarratorOnlyTaskByData(datas.Narrator_1302601, nil, 13026)
    this:SafeDestroyQuestNpc(npcs.Npc13126Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13127Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13193Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13194Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13195Data.alias, 3)
end

function Quest13026:OnSubStart1302602(arg1)
    print("OnSubStart1302602")
    this:SafeDestroyQuestNpc(npcs.Npc1052Data.alias, 20177)
    actorMgr:DestroyEntityActor("Q1302605N1052Trigger", 20177, false)
    actorMgr:DestroyEntityActor("Q1302609N1052Trigger", 20177, false)
    this:ActorDestroy("Q1302603Trigger")
    this:RemoveLocalGadget(gadgets.Gadget71700633Data.id, "")
    this:RemoveLocalGadget(gadgets.Gadget71700634Data.id, "")
end

function Quest13026:OnSubFinish1302602(arg1)
    print("OnSubFinish1302602")
    this:StopNarrator()
    this:ClearNarratorTask()
end

function Quest13026:OnSubStart1302603(arg1)
    print("OnSubStart1302603")
    actorMgr:CreateActorWithPos("Q1302603Trigger", "Actor/Gadget/Q1302603Trigger", 70900002, 0, sceneData:GetDummyPoint(20177, "Q1302603_N1052").pos, sceneData:GetDummyPoint(20177, "Q1302603_N1052").rot, true, false, 20177)
    this:CreateLocalGadget(gadgets.Gadget70330416Data.id, "13026", sceneData:GetDummyPoint(20177, "Q13026_NpcDoor").pos, sceneData:GetDummyPoint(20177, "Q13026_NpcDoor").rot, 20177, nil, nil, 1, false)
end

function Quest13026:OnSubFinish1302603(arg1)
    print("OnSubFinish1302603")
    this:SafeDestroyQuestNpc(npcs.Npc1052Data.alias, 20177)
end

function Quest13026:OnSubStart1302604(arg1)
    print("OnSubStart1302604")
    this:CreateLocalGadget(gadgets.Gadget70330416Data.id, "13026", sceneData:GetDummyPoint(20177, "Q13026_NpcDoor").pos, sceneData:GetDummyPoint(20177, "Q13026_NpcDoor").rot, 20177, nil, nil, 1, false)
end

function Quest13026:OnSubFinish1302604(arg1)
    print("OnSubFinish1302604")
end

function Quest13026:OnSubStart1302605(arg1)
    print("OnSubStart1302605")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc1052Data.id, 1302605, 1, 30, 1)
    this:CreateLocalGadget(gadgets.Gadget70330416Data.id, "13026", sceneData:GetDummyPoint(20177, "Q13026_NpcDoor").pos, sceneData:GetDummyPoint(20177, "Q13026_NpcDoor").rot, 20177, nil, nil, 1, false)
end

function Quest13026:OnSubFinish1302605(arg1)
    print("OnSubFinish1302605")
    this:SafeDestroyQuestNpc(npcs.Npc1052Data.alias, 20177)
end

function Quest13026:OnSubStart1302615(arg1)
    print("OnSubStart1302615")
end

function Quest13026:OnSubFinish1302615(arg1)
    print("OnSubFinish1302615")
end

function Quest13026:OnSubStart1302606(arg1)
    print("OnSubStart1302606")
    actorMgr:CreateActorWithPos("Q1302606Trigger", "Actor/Gadget/Q1302606Trigger", 70900002, 0, sceneData:GetDummyPoint(20177, "Q1302606_guide").pos, sceneData:GetDummyPoint(20177, "Q1302606_guide").rot, true, false, 20177)
    this:CreateLocalGadget(gadgets.Gadget70330416Data.id, "13026", sceneData:GetDummyPoint(20177, "Q13026_NpcDoor").pos, sceneData:GetDummyPoint(20177, "Q13026_NpcDoor").rot, 20177, nil, nil, 1, false)
end

function Quest13026:OnSubFinish1302606(arg1)
    print("OnSubFinish1302606")
    this:ActorDestroy("Q1302606Trigger")
end

function Quest13026:OnSubStart1302607(arg1)
    print("OnSubStart1302607")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc1052Data.id, 1302607, 1, 20, 1)
    this:CreateQuestNpc(arg1, npcs.Npc13067Data.id, 2)
    this:CreateQuestNpc(arg1, npcs.Npc13109Data.id, 3)
    this:CreateLocalGadget(gadgets.Gadget70330416Data.id, "13026", sceneData:GetDummyPoint(20177, "Q13026_NpcDoor").pos, sceneData:GetDummyPoint(20177, "Q13026_NpcDoor").rot, 20177, nil, nil, 1, false)
end

function Quest13026:OnSubFinish1302607(arg1)
    print("OnSubFinish1302607")
    this:SafeDestroyQuestNpc(npcs.Npc1052Data.alias, 20177)
end

function Quest13026:OnSubStart1302608(arg1)
    print("OnSubStart1302608")
    this:CallDelay(1, function(arg1)
        this:NarratorOnlyTaskByData(datas.Narrator_1302603)
    end)
end

function Quest13026:OnSubFinish1302608(arg1)
    print("OnSubFinish1302608")
end

function Quest13026:OnSubStart1302616(arg1)
    print("OnSubStart1302616")
end

function Quest13026:OnSubFinish1302616(arg1)
    print("OnSubFinish1302616")
    this:CallDelay(1, function(arg1)
        this:NarratorOnlyTaskByData(datas.Narrator_1302604)
    end)
end

function Quest13026:OnSubStart1302617(arg1)
    print("OnSubStart1302617")
end

function Quest13026:OnSubFinish1302617(arg1)
    print("OnSubFinish1302617")
    this:CallDelay(1, function(arg1)
        this:NarratorOnlyTaskByData(datas.Narrator_1302605)
    end)
end

function Quest13026:OnSubStart1302620(arg1)
    print("OnSubStart1302620")
end

function Quest13026:OnSubFinish1302620(arg1)
    print("OnSubFinish1302620")
    this:CallDelay(1, function(arg1)
        this:NarratorOnlyTaskByData(datas.Narrator_1302606)
    end)
end

function Quest13026:OnSubStart1302609(arg1)
    print("OnSubStart1302609")
    this:CallDelayNpcCreateWithNpcTriggerAndBlack(npcs.Npc1052Data.id, 1302609, 1, 85, 1)
    this:CreateLocalGadget(gadgets.Gadget70330416Data.id, "13026", sceneData:GetDummyPoint(20177, "Q13026_NpcDoor").pos, sceneData:GetDummyPoint(20177, "Q13026_NpcDoor").rot, 20177, nil, nil, 1, false)
end

function Quest13026:OnSubFinish1302609(arg1)
    print("OnSubFinish1302609")
    this:RemoveLocalGadget(gadgets.Gadget70330416Data.id, "13026")
    this:StopNarrator()
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc1052Data.alias, 20177)
    this:SafeDestroyQuestNpc(npcs.Npc13067Data.alias, 20177)
end

function Quest13026:OnSubFailed1302609(arg1)
    print("OnSubFailed1302609")
    this:SafeDestroyQuestNpc(npcs.Npc13067Data.alias, 20177)
    this:SafeDestroyQuestNpc(npcs.Npc13109Data.alias, 20177)
    this:SafeDestroyQuestNpc(npcs.Npc13176Data.alias, 20177)
    this:SafeDestroyQuestNpc(npcs.Npc13177Data.alias, 20177)
    this:SafeDestroyQuestNpc(npcs.Npc13178Data.alias, 20177)
    this:SafeDestroyQuestNpc(npcs.Npc13186Data.alias, 20177)
    this:SafeDestroyQuestNpc(npcs.Npc13187Data.alias, 20177)
    this:SafeDestroyQuestNpc(npcs.Npc13188Data.alias, 20177)
    this:SafeDestroyQuestNpc(npcs.Npc13189Data.alias, 20177)
    this:SafeDestroyQuestNpc(npcs.Npc13190Data.alias, 20177)
    this:SafeDestroyQuestNpc(npcs.Npc13191Data.alias, 20177)
    this:SafeDestroyQuestNpc(npcs.Npc13192Data.alias, 20177)
end

function Quest13026:OnSubStart1302618(arg1)
    print("OnSubStart1302618")
end

function Quest13026:OnSubFinish1302618(arg1)
    print("OnSubFinish1302618")
end

function Quest13026:OnSubStart1302612(arg1)
    print("OnSubStart1302612")
    this:CreateQuestNpc(arg1, npcs.Npc13065Data.id, 2)
    this:CreateQuestNpc(arg1, npcs.Npc13109Data.id, 3)
    this:GetQuestNpcActor(npcs.Npc13109Data.alias):DoFreeStyle(1160, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Npc13107Data.id, 4)
    this:CreateQuestNpc(arg1, npcs.Npc13108Data.id, 5)
    this:CreateQuestNpc(arg1, npcs.Npc13176Data.id, 6)
    this:GetQuestNpcActor(npcs.Npc13176Data.alias):DoFreeStyle(1120, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Npc13177Data.id, 7)
    this:GetQuestNpcActor(npcs.Npc13177Data.alias):DoFreeStyle(1120, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Npc13178Data.id, 8)
    this:GetQuestNpcActor(npcs.Npc13178Data.alias):DoFreeStyle(1120, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Npc13186Data.id, 9)
    this:GetQuestNpcActor(npcs.Npc13186Data.alias):DoFreeStyle(1120, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Npc13187Data.id, 10)
    this:GetQuestNpcActor(npcs.Npc13187Data.alias):DoFreeStyle(1120, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Npc13188Data.id, 11)
    this:GetQuestNpcActor(npcs.Npc13188Data.alias):DoFreeStyle(1120, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Npc13189Data.id, 12)
    this:GetQuestNpcActor(npcs.Npc13189Data.alias):DoFreeStyle(4110, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Npc13190Data.id, 13)
    this:GetQuestNpcActor(npcs.Npc13190Data.alias):DoFreeStyle(4110, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Npc13191Data.id, 14)
    this:GetQuestNpcActor(npcs.Npc13191Data.alias):DoFreeStyle(4110, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Npc13192Data.id, 15)
    this:GetQuestNpcActor(npcs.Npc13192Data.alias):DoFreeStyle(4412, true, nil, true, true, false, true)
    actorMgr:CreateActorWithPos("Q1302612Trigger", "Actor/Gadget/Q1302612Trigger", 70900002, 0, {x = 432.629, y = 73.228, z = 513.506}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 20177)
    this:CreateLocalGadget(gadgets.Gadget71700633Data.id, "", sceneData:GetDummyPoint(20177, "Q1302612_N13067").pos, sceneData:GetDummyPoint(20177, "Q1302612_N13067").rot, 20177, nil, nil, 1, false)
    this:CreateLocalGadget(gadgets.Gadget71700634Data.id, "", sceneData:GetDummyPoint(20177, "Q1302612_N13111").pos, sceneData:GetDummyPoint(20177, "Q1302612_N13111").rot, 20177, nil, nil, 1, false)
end

function Quest13026:OnSubFinish1302612(arg1)
    print("OnSubFinish1302612")
    this:SafeDestroyQuestNpc(npcs.Npc13065Data.alias, 20177)
    this:SafeDestroyQuestNpc(npcs.Npc13107Data.alias, 20177)
    this:SafeDestroyQuestNpc(npcs.Npc13108Data.alias, 20177)
end

function Quest13026:OnSubFailed1302612(arg1)
    print("OnSubFailed1302612")
    this:SafeDestroyQuestNpc(npcs.Npc13067Data.alias, 20177)
    this:SafeDestroyQuestNpc(npcs.Npc13109Data.alias, 20177)
    this:SafeDestroyQuestNpc(npcs.Npc13176Data.alias, 20177)
    this:SafeDestroyQuestNpc(npcs.Npc13177Data.alias, 20177)
    this:SafeDestroyQuestNpc(npcs.Npc13178Data.alias, 20177)
    this:SafeDestroyQuestNpc(npcs.Npc13186Data.alias, 20177)
    this:SafeDestroyQuestNpc(npcs.Npc13187Data.alias, 20177)
    this:SafeDestroyQuestNpc(npcs.Npc13188Data.alias, 20177)
    this:SafeDestroyQuestNpc(npcs.Npc13189Data.alias, 20177)
    this:SafeDestroyQuestNpc(npcs.Npc13190Data.alias, 20177)
    this:SafeDestroyQuestNpc(npcs.Npc13191Data.alias, 20177)
    this:SafeDestroyQuestNpc(npcs.Npc13192Data.alias, 20177)
end

function Quest13026:OnSubStart1302613(arg1)
    print("OnSubStart1302613")
    this:CreateQuestNpc(arg1, npcs.Npc13110Data.id, 2)
    this:CreateQuestNpc(arg1, npcs.Npc13109Data.id, 3)
    this:GetQuestNpcActor(npcs.Npc13109Data.alias):DoFreeStyle(1160, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Npc13176Data.id, 4)
    this:GetQuestNpcActor(npcs.Npc13176Data.alias):DoFreeStyle(1120, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Npc13177Data.id, 5)
    this:GetQuestNpcActor(npcs.Npc13177Data.alias):DoFreeStyle(1120, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Npc13178Data.id, 6)
    this:GetQuestNpcActor(npcs.Npc13178Data.alias):DoFreeStyle(1120, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Npc13186Data.id, 7)
    this:GetQuestNpcActor(npcs.Npc13186Data.alias):DoFreeStyle(1120, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Npc13187Data.id, 8)
    this:GetQuestNpcActor(npcs.Npc13187Data.alias):DoFreeStyle(1120, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Npc13188Data.id, 9)
    this:GetQuestNpcActor(npcs.Npc13188Data.alias):DoFreeStyle(1120, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Npc13189Data.id, 10)
    this:GetQuestNpcActor(npcs.Npc13189Data.alias):DoFreeStyle(4110, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Npc13190Data.id, 11)
    this:GetQuestNpcActor(npcs.Npc13190Data.alias):DoFreeStyle(4110, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Npc13191Data.id, 12)
    this:GetQuestNpcActor(npcs.Npc13191Data.alias):DoFreeStyle(4110, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Npc13192Data.id, 13)
    this:GetQuestNpcActor(npcs.Npc13192Data.alias):DoFreeStyle(4412, true, nil, true, true, false, true)
    this:CreateLocalGadget(70300203, "1302613", sceneData:GetDummyPoint(20177, "Q1302613_guide").pos, sceneData:GetDummyPoint(20177, "Q1302613_guide").rot, 20177, nil, nil, 1, false)
    actorMgr:CreateActorWithPos("Q1302613Trigger", "Actor/Gadget/Q1302613Trigger", 70900002, 0, {x = 388.829, y = 70.028, z = 443.591}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 20177)
    this:CreateLocalGadget(gadgets.Gadget71700633Data.id, "", sceneData:GetDummyPoint(20177, "Q1302612_N13067").pos, sceneData:GetDummyPoint(20177, "Q1302612_N13067").rot, 20177, nil, nil, 1, false)
    this:CreateLocalGadget(gadgets.Gadget71700634Data.id, "", sceneData:GetDummyPoint(20177, "Q1302612_N13111").pos, sceneData:GetDummyPoint(20177, "Q1302612_N13111").rot, 20177, nil, nil, 1, false)
end

function Quest13026:OnSubFinish1302613(arg1)
    print("OnSubFinish1302613")
    this:RemoveLocalGadget(gadgets.Gadget70710770Data.id, "")
    this:SafeDestroyQuestNpc(npcs.Npc13110Data.alias, 20177)
    this:SafeDestroyQuestNpc(npcs.Npc13109Data.alias, 20177)
end

function Quest13026:OnSubFailed1302613(arg1)
    print("OnSubFailed1302613")
    this:SafeDestroyQuestNpc(npcs.Npc13067Data.alias, 20177)
    this:SafeDestroyQuestNpc(npcs.Npc13109Data.alias, 20177)
    this:SafeDestroyQuestNpc(npcs.Npc13176Data.alias, 20177)
    this:SafeDestroyQuestNpc(npcs.Npc13177Data.alias, 20177)
    this:SafeDestroyQuestNpc(npcs.Npc13178Data.alias, 20177)
    this:SafeDestroyQuestNpc(npcs.Npc13186Data.alias, 20177)
    this:SafeDestroyQuestNpc(npcs.Npc13187Data.alias, 20177)
    this:SafeDestroyQuestNpc(npcs.Npc13188Data.alias, 20177)
    this:SafeDestroyQuestNpc(npcs.Npc13189Data.alias, 20177)
    this:SafeDestroyQuestNpc(npcs.Npc13190Data.alias, 20177)
    this:SafeDestroyQuestNpc(npcs.Npc13191Data.alias, 20177)
    this:SafeDestroyQuestNpc(npcs.Npc13192Data.alias, 20177)
end

function Quest13026:OnSubStart1302619(arg1)
    print("OnSubStart1302619")
end

function Quest13026:OnSubFinish1302619(arg1)
    print("OnSubFinish1302619")
    this:ActorDestroy("Q1302613Trigger")
end

function Quest13026:OnSubStart1302610(arg1)
    print("OnSubStart1302610")
    this:GetQuestNpcActor(npcs.Npc13176Data.alias):DoFreeStyle(1120, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc13177Data.alias):DoFreeStyle(1120, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc13178Data.alias):DoFreeStyle(1120, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc13186Data.alias):DoFreeStyle(1120, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc13187Data.alias):DoFreeStyle(1120, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc13188Data.alias):DoFreeStyle(1120, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc13189Data.alias):DoFreeStyle(4110, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc13190Data.alias):DoFreeStyle(4110, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc13191Data.alias):DoFreeStyle(4110, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc13192Data.alias):DoFreeStyle(4412, true, nil, true, true, false, true)
    this:CreateLocalGadget(gadgets.Gadget71700633Data.id, "", sceneData:GetDummyPoint(20177, "Q1302612_N13067").pos, sceneData:GetDummyPoint(20177, "Q1302612_N13067").rot, 20177, nil, nil, 1, false)
    this:CreateLocalGadget(gadgets.Gadget71700634Data.id, "", sceneData:GetDummyPoint(20177, "Q1302612_N13111").pos, sceneData:GetDummyPoint(20177, "Q1302612_N13111").rot, 20177, nil, nil, 1, false)
    actorMgr:CreateActorWithPos("Q1302610Trigger", "Actor/Gadget/Q1302610Trigger", 70900002, 0, {x = 388.51, y = 62.799, z = 446.2}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 20177)
end

function Quest13026:OnSubFinish1302610(arg1)
    print("OnSubFinish1302610")
    this:ActorDestroy("Q1302610Trigger")
    this:RemoveLocalGadget(gadgets.Gadget71700633Data.id, "")
    this:RemoveLocalGadget(gadgets.Gadget71700634Data.id, "")
    this:SafeDestroyQuestNpc(npcs.Npc13176Data.alias, 20177)
    this:SafeDestroyQuestNpc(npcs.Npc13177Data.alias, 20177)
    this:SafeDestroyQuestNpc(npcs.Npc13178Data.alias, 20177)
    this:SafeDestroyQuestNpc(npcs.Npc13186Data.alias, 20177)
    this:SafeDestroyQuestNpc(npcs.Npc13187Data.alias, 20177)
    this:SafeDestroyQuestNpc(npcs.Npc13188Data.alias, 20177)
    this:SafeDestroyQuestNpc(npcs.Npc13189Data.alias, 20177)
    this:SafeDestroyQuestNpc(npcs.Npc13190Data.alias, 20177)
    this:SafeDestroyQuestNpc(npcs.Npc13191Data.alias, 20177)
    this:SafeDestroyQuestNpc(npcs.Npc13192Data.alias, 20177)
end

function Quest13026:OnSubStart1302611(arg1)
    print("OnSubStart1302611")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc1052Data.id, 1302611, 1, 15, 1)
end

function Quest13026:OnSubFinish1302611(arg1)
    print("OnSubFinish1302611")
    this:SafeDestroyQuestNpc(npcs.Npc1052Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13013Data.alias, 3)
end

function Quest13026:OnSubStart1302614(arg1)
    print("OnSubStart1302614")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc13013Data.id, 1302614, 2, 15, 1)
end

function Quest13026:OnSubFinish1302614(arg1)
    print("OnSubFinish1302614")
    this:SafeDestroyQuestNpc(npcs.Npc1052Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13013Data.alias, 3)
end

return Quest13026
