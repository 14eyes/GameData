require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40069 = class("Quest40069", QuestActorProxy)
Quest40069.defaultAlias = "Quest40069"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest40069:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest40069:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4006901"] = self.OnSubStart4006901,
        ["4006902"] = self.OnSubStart4006902,
        ["4006923"] = self.OnSubStart4006923,
        ["4006909"] = self.OnSubStart4006909,
        ["4006903"] = self.OnSubStart4006903,
        ["4006911"] = self.OnSubStart4006911,
        ["4006920"] = self.OnSubStart4006920,
        ["4006921"] = self.OnSubStart4006921,
        ["4006922"] = self.OnSubStart4006922,
        ["4006916"] = self.OnSubStart4006916,
        ["4006904"] = self.OnSubStart4006904,
        ["4006918"] = self.OnSubStart4006918,
        ["4006905"] = self.OnSubStart4006905,
        ["4006917"] = self.OnSubStart4006917,
        ["4006906"] = self.OnSubStart4006906,
        ["4006919"] = self.OnSubStart4006919,
        ["4006907"] = self.OnSubStart4006907,
        ["4006914"] = self.OnSubStart4006914,
        ["4006915"] = self.OnSubStart4006915,
        ["4006908"] = self.OnSubStart4006908,
        ["4006912"] = self.OnSubStart4006912,
        ["4006924"] = self.OnSubStart4006924,
        ["4006913"] = self.OnSubStart4006913,
        ["4006910"] = self.OnSubStart4006910
    }
end

function Quest40069:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4006901"] = self.OnSubFinish4006901,
        ["4006902"] = self.OnSubFinish4006902,
        ["4006923"] = self.OnSubFinish4006923,
        ["4006909"] = self.OnSubFinish4006909,
        ["4006903"] = self.OnSubFinish4006903,
        ["4006911"] = self.OnSubFinish4006911,
        ["4006920"] = self.OnSubFinish4006920,
        ["4006921"] = self.OnSubFinish4006921,
        ["4006922"] = self.OnSubFinish4006922,
        ["4006916"] = self.OnSubFinish4006916,
        ["4006904"] = self.OnSubFinish4006904,
        ["4006918"] = self.OnSubFinish4006918,
        ["4006905"] = self.OnSubFinish4006905,
        ["4006917"] = self.OnSubFinish4006917,
        ["4006906"] = self.OnSubFinish4006906,
        ["4006919"] = self.OnSubFinish4006919,
        ["4006907"] = self.OnSubFinish4006907,
        ["4006914"] = self.OnSubFinish4006914,
        ["4006915"] = self.OnSubFinish4006915,
        ["4006908"] = self.OnSubFinish4006908,
        ["4006912"] = self.OnSubFinish4006912,
        ["4006924"] = self.OnSubFinish4006924,
        ["4006913"] = self.OnSubFinish4006913,
        ["4006910"] = self.OnSubFinish4006910
    }
end

function Quest40069:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest40069:Start()
    print("Start")
end

function Quest40069:OnDestroy()
    print("OnDestroy")
end

function Quest40069:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest40069:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest40069:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc12616Data.alias, 20133)
    self:SafeDestroyQuestNpc(npcs.Npc1042Data.alias, 20133)
    self:SafeDestroyQuestNpc(npcs.Npc1042Data.alias, 9)
    self:SafeDestroyQuestNpc(npcs.Npc12617Data.alias, 20133)
    self:SafeDestroyQuestNpc(npcs.Npc12618Data.alias, 20133)
    self:SafeDestroyQuestNpc(npcs.Npc12619Data.alias, 20133)
    self:SafeDestroyQuestNpc(npcs.Npc12620Data.alias, 20133)
    self:SafeDestroyQuestNpc(npcs.Npc12621Data.alias, 20133)
    self:SafeDestroyQuestNpc(npcs.Npc12622Data.alias, 20133)
    self:SafeDestroyQuestNpc(npcs.XianglingData.alias, 20133)
    self:SafeDestroyQuestNpc(npcs.Npc1032Data.alias, 20133)
    self:SafeDestroyQuestNpc(npcs.Npc1032Data.alias, 9)
    self:SafeDestroyQuestNpc(npcs.Npc10095Data.alias, 20133)
    self:SafeDestroyQuestNpc(npcs.Npc10095Data.alias, 9)
    self:SafeDestroyQuestNpc(npcs.Npc1046Data.alias, 20133)
    self:SafeDestroyQuestNpc(npcs.Npc12646Data.alias, 20133)
    actorMgr:DestroyEntityActor("Q4006903_Trigger", 0, false)
    actorMgr:DestroyEntityActor("Q4006904_Trigger", 0, false)
    actorMgr:DestroyEntityActor("Q4006905_Trigger", 20133, false)
    actorMgr:DestroyEntityActor("Q4006906_Trigger", 20133, false)
    actorMgr:DestroyEntityActor("Q4006908_Trigger", 20133, false)
    actorMgr:DestroyEntityActor("Q4006909_Trigger", 0, false)
    actorMgr:DestroyEntityActor("Q4006911_Trigger", 9, false)
    actorMgr:DestroyEntityActor("Q4006912_Trigger", 20133, false)
    actorMgr:DestroyEntityActor("Q4006913_Trigger", 0, false)
    actorMgr:DestroyEntityActor("Q4006917_Trigger", 20133, false)
end

function Quest40069:CheckSubQuestState(arg1, arg2, arg3)
    local subQuestState = self:GetSubQuestState(arg1)
    local v
    if arg3 then
        v = subQuestState ~= arg2
    else
        v = subQuestState == arg2
    end

    return v
end

function Quest40069:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest40069:NpcCreateWithActionSafeCall(arg1, arg2, arg3)
    self:ActionSafeCall(function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, arg2, arg3)
    end)
end

function Quest40069:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 0 then
        actorUtils.FinishQuestID(false, 4006918)
    elseif arg1 == 1 then
        actorUtils.FinishQuestID(false, 4006919)
    elseif arg1 == 2 then
        actorUtils.FinishQuestID(false, 4006923)
    elseif arg1 == 3 then
        actorUtils.FinishQuestID(false, 4006909)
    elseif arg1 == 4 then
        actorUtils.FinishQuestID(false, 4006924)
    end
end

function Quest40069:OnSubStart4006901(arg1)
    print("OnSubStart4006901")
    self:CreateQuestNpc(arg1, npcs.Npc12616Data.id, 1)
end

function Quest40069:OnSubFinish4006901(arg1)
    print("OnSubFinish4006901")
    self:ActionSafeCall(function(arg1)
        arg1:RequestInteraction(npcs.Npc12616Data.alias)
    end)
end

function Quest40069:OnSubStart4006902(arg1)
    print("OnSubStart4006902")
end

function Quest40069:OnSubFinish4006902(arg1)
    print("OnSubFinish4006902")
    self:SafeDestroyQuestNpc(npcs.Npc1042Data.alias, 20133)
    self:SafeDestroyQuestNpc(npcs.Npc1032Data.alias, 20133)
    self:SafeDestroyQuestNpc(npcs.Npc10095Data.alias, 20133)
end

function Quest40069:OnSubStart4006923(arg1)
    print("OnSubStart4006923")
end

function Quest40069:OnSubFinish4006923(arg1)
    print("OnSubFinish4006923")
end

function Quest40069:OnSubStart4006909(arg1)
    print("OnSubStart4006909")
    actorMgr:CreateActorWithPos("Q4006909_Trigger", "Actor/Gadget/Q4006909_Trigger", 70900002, 0, {x = 457.673, y = 164.383, z = 1882.546}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 20133)
end

function Quest40069:OnSubFinish4006909(arg1)
    print("OnSubFinish4006909")
    self:NarratorOnlyTaskByData(datas.Narrator_4006902, nil, 40069)
end

function Quest40069:OnSubStart4006903(arg1)
    print("OnSubStart4006903")
    self:CreateQuestNpcWithTriggerBlack("Q4006903_Trigger", 4006903, npcs.Npc1042Data.id, 1, 5, 1)
end

function Quest40069:OnSubFinish4006903(arg1)
    print("OnSubFinish4006903")
    self:SafeDestroyQuestNpc(npcs.Npc1042Data.alias, 20133)
    self:SafeDestroyQuestNpc(npcs.Npc1032Data.alias, 20133)
    self:SafeDestroyQuestNpc(npcs.Npc10095Data.alias, 20133)
end

function Quest40069:OnSubStart4006911(arg1)
    print("OnSubStart4006911")
    self:CreateQuestNpc(arg1, npcs.Npc12646Data.id, 1)
end

function Quest40069:OnSubFinish4006911(arg1)
    print("OnSubFinish4006911")
end

function Quest40069:OnSubStart4006920(arg1)
    print("OnSubStart4006920")
    self:NpcCreateWithActionSafeCall(arg1, npcs.Npc12646Data.id, 1)
end

function Quest40069:OnSubFinish4006920(arg1)
    print("OnSubFinish4006920")
end

function Quest40069:OnSubStart4006921(arg1)
    print("OnSubStart4006921")
    self:NpcCreateWithActionSafeCall(arg1, npcs.Npc12646Data.id, 1)
end

function Quest40069:OnSubFinish4006921(arg1)
    print("OnSubFinish4006921")
end

function Quest40069:OnSubStart4006922(arg1)
    print("OnSubStart4006922")
    self:NpcCreateWithActionSafeCall(arg1, npcs.Npc12646Data.id, 1)
end

function Quest40069:OnSubFinish4006922(arg1)
    print("OnSubFinish4006922")
    self:SafeDestroyQuestNpc(npcs.Npc12646Data.alias, 20133)
end

function Quest40069:OnSubStart4006916(arg1)
    print("OnSubStart4006916")
end

function Quest40069:OnSubFinish4006916(arg1)
    print("OnSubFinish4006916")
end

function Quest40069:OnSubStart4006904(arg1)
    print("OnSubStart4006904")
    self:CreateQuestNpc(arg1, npcs.Npc12617Data.id, 2)
    actorMgr:CreateActorWithPos("Q4006904_Trigger", "Actor/Gadget/Q4006904_Trigger", 70900002, 0, {x = 297.27, y = 153.458, z = 2024.188}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 20133)
end

function Quest40069:OnSubFinish4006904(arg1)
    print("OnSubFinish4006904")
    self:SafeDestroyQuestNpc(npcs.Npc1042Data.alias, 20133)
    self:SafeDestroyQuestNpc(npcs.Npc12617Data.alias, 20133)
    self:SafeDestroyQuestNpc(npcs.Npc1032Data.alias, 20133)
    self:SafeDestroyQuestNpc(npcs.Npc10095Data.alias, 20133)
    self:ActionSafeCall(function(arg1)
        arg1:CallDelay(1, function(arg1)
            arg1:NarratorOnlyTaskByData(datas.Narrator_4006901, nil, 40069)
        end)
    end)
end

function Quest40069:OnSubStart4006918(arg1)
    print("OnSubStart4006918")
end

function Quest40069:OnSubFinish4006918(arg1)
    print("OnSubFinish4006918")
end

function Quest40069:OnSubStart4006905(arg1)
    print("OnSubStart4006905")
    actorMgr:CreateActorWithPos("Q4006905_Trigger", "Actor/Gadget/Q4006905_Trigger", 70900002, 0, {x = 336.598, y = 151.266, z = 2077.325}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 20133)
end

function Quest40069:OnSubFinish4006905(arg1)
    print("OnSubFinish4006905")
end

function Quest40069:OnSubStart4006917(arg1)
    print("OnSubStart4006917")
    actorMgr:CreateActorWithPos("Q4006917_Trigger", "Actor/Gadget/Q4006917_Trigger", 70900002, 0, {x = 368.698, y = 141.501, z = 2048.608}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 20133)
end

function Quest40069:OnSubFinish4006917(arg1)
    print("OnSubFinish4006917")
    self:EnterSceneLookCamera(sceneData:GetDummyPoint(20133, "Q4006906_N12620").pos, 0, 2, true, false)
end

function Quest40069:OnSubStart4006906(arg1)
    print("OnSubStart4006906")
    self:CreateQuestNpcWithTriggerBlack("Q4006906_Trigger", 4006906, npcs.Npc1042Data.id, 1, 25, 1)
end

function Quest40069:OnSubFinish4006906(arg1)
    print("OnSubFinish4006906")
    self:SafeDestroyQuestNpc(npcs.Npc1042Data.alias, 20133)
    self:SafeDestroyQuestNpc(npcs.Npc1032Data.alias, 20133)
    self:SafeDestroyQuestNpc(npcs.Npc10095Data.alias, 20133)
end

function Quest40069:OnSubStart4006919(arg1)
    print("OnSubStart4006919")
end

function Quest40069:OnSubFinish4006919(arg1)
    print("OnSubFinish4006919")
end

function Quest40069:OnSubStart4006907(arg1)
    print("OnSubStart4006907")
    self:NpcCreateWithActionSafeCall(arg1, npcs.Npc12620Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc12621Data.id, 2)
    if self:CheckSubQuestState(4006914, 3, false) then
        self:CreateQuestNpcById(4006908, npcs.Npc12622Data.id, 4)
    else
    end

    actorMgr:CreateActorWithPos("Q40069_FeiCryTrigger", "Actor/Gadget/Q40069_FeiCryTrigger", 70900002, 0, sceneData:GetDummyPoint(20133, "Q4006907_N12620").pos, sceneData:GetDummyPoint(20133, "Q4006907_N12620").rot, true, false, 20133)
end

function Quest40069:OnSubFinish4006907(arg1)
    print("OnSubFinish4006907")
    self:ActionSafeCall(function(arg1)
        arg1:CreateQuestNpcById(4006908, npcs.Npc12621Data.id, 3)
    end)
end

function Quest40069:OnSubStart4006914(arg1)
    print("OnSubStart4006914")
    self:CreateQuestNpc(arg1, npcs.Npc12622Data.id, 1)
    if self:CheckSubQuestState(4006907, 3, false) then
        self:CreateQuestNpcById(4006908, npcs.Npc12621Data.id, 3)
    else
    end

    actorMgr:CreateActorWithPos("Q40069_FeiCryTrigger", "Actor/Gadget/Q40069_FeiCryTrigger", 70900002, 0, sceneData:GetDummyPoint(20133, "Q4006907_N12620").pos, sceneData:GetDummyPoint(20133, "Q4006907_N12620").rot, true, false, 20133)
end

function Quest40069:OnSubFinish4006914(arg1)
    print("OnSubFinish4006914")
    self:ActionSafeCall(function(arg1)
        arg1:CreateQuestNpcById(4006908, npcs.Npc12622Data.id, 4)
    end)
end

function Quest40069:OnSubStart4006915(arg1)
    print("OnSubStart4006915")
end

function Quest40069:OnSubFinish4006915(arg1)
    print("OnSubFinish4006915")
end

function Quest40069:OnSubStart4006908(arg1)
    print("OnSubStart4006908")
    self:CreateQuestNpc(arg1, npcs.Npc12621Data.id, 3)
    self:CreateQuestNpc(arg1, npcs.Npc12622Data.id, 4)
    self:CreateQuestNpcWithTrigger("Q4006908_Trigger", 4006908, npcs.Npc12620Data.id, 2, 8)
    self:GetQuestNpcActor(npcs.Npc12620Data.alias):DoFreeStateTrigger()
    self:ActorDestroy("Q40069_FeiCryTrigger")
end

function Quest40069:OnSubFinish4006908(arg1)
    print("OnSubFinish4006908")
    self:SafeDestroyQuestNpc(npcs.Npc1042Data.alias, 20133)
    self:SafeDestroyQuestNpc(npcs.Npc12620Data.alias, 20133)
    self:SafeDestroyQuestNpc(npcs.Npc12621Data.alias, 20133)
    self:SafeDestroyQuestNpc(npcs.Npc12622Data.alias, 20133)
    self:SafeDestroyQuestNpc(npcs.Npc1032Data.alias, 20133)
    self:SafeDestroyQuestNpc(npcs.Npc10095Data.alias, 20133)
end

function Quest40069:OnSubStart4006912(arg1)
    print("OnSubStart4006912")
    self:CreateQuestNpcWithTriggerBlack("Q4006912_Trigger", 4006912, npcs.XianglingData.id, 1, 20, 1)
end

function Quest40069:OnSubFinish4006912(arg1)
    print("OnSubFinish4006912")
    self:SafeDestroyQuestNpc(npcs.Npc1042Data.alias, 20133)
    self:SafeDestroyQuestNpc(npcs.XianglingData.alias, 20133)
    self:SafeDestroyQuestNpc(npcs.Npc1046Data.alias, 20133)
    self:TransmitPlayerWithTextById(arg1, 1, datas.TextmapId, 1)
end

function Quest40069:OnSubStart4006924(arg1)
    print("OnSubStart4006924")
end

function Quest40069:OnSubFinish4006924(arg1)
    print("OnSubFinish4006924")
end

function Quest40069:OnSubStart4006913(arg1)
    print("OnSubStart4006913")
    self:CreateQuestNpcWithTriggerBlack("Q4006913_Trigger", 4006913, npcs.Npc1042Data.id, 1, 20, 1)
end

function Quest40069:OnSubFinish4006913(arg1)
    print("OnSubFinish4006913")
    self:SafeDestroyQuestNpc(npcs.Npc12616Data.alias, 20133)
    self:SafeDestroyQuestNpc(npcs.Npc1042Data.alias, 9)
    self:SafeDestroyQuestNpc(npcs.Npc1032Data.alias, 9)
    self:SafeDestroyQuestNpc(npcs.Npc10095Data.alias, 9)
end

function Quest40069:OnSubStart4006910(arg1)
    print("OnSubStart4006910")
end

function Quest40069:OnSubFinish4006910(arg1)
    print("OnSubFinish4006910")
end

return Quest40069
