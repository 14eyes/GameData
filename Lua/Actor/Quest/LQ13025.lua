require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest13025 = class("Quest13025", QuestActorProxy)
Quest13025.defaultAlias = "Quest13025"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest13025:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest13025:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1302501"] = self.OnSubStart1302501,
        ["1302506"] = self.OnSubStart1302506,
        ["1302502"] = self.OnSubStart1302502,
        ["1302509"] = self.OnSubStart1302509,
        ["1302503"] = self.OnSubStart1302503,
        ["1302508"] = self.OnSubStart1302508,
        ["1302504"] = self.OnSubStart1302504,
        ["1302507"] = self.OnSubStart1302507,
        ["1302505"] = self.OnSubStart1302505
    }
end

function Quest13025:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1302501"] = self.OnSubFinish1302501,
        ["1302506"] = self.OnSubFinish1302506,
        ["1302502"] = self.OnSubFinish1302502,
        ["1302509"] = self.OnSubFinish1302509,
        ["1302503"] = self.OnSubFinish1302503,
        ["1302508"] = self.OnSubFinish1302508,
        ["1302504"] = self.OnSubFinish1302504,
        ["1302507"] = self.OnSubFinish1302507,
        ["1302505"] = self.OnSubFinish1302505
    }
end

function Quest13025:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["1302504"] = self.OnSubFailed1302504}
end

function Quest13025:Start()
    print("Start")
end

function Quest13025:OnDestroy()
    print("OnDestroy")
end

function Quest13025:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest13025:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest13025:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest13025:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest13025:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4)
end

function Quest13025:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, arg5)
end

function Quest13025:CallDelayNpcCreateWithNpcTriggerAndBlack(arg1, arg2, arg3, arg4, arg5)
    this:CallDelay(2, function(arg1_2)
        this:CreateQuestNpcWithTriggerBlack("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, arg5)
    end)
end

function Quest13025:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1302503 then
        actorUtils.FinishQuestID(false, 1302508)
    end
end

function Quest13025:OnSubStart1302501(arg1)
    print("OnSubStart1302501")
    this:NpcCreateWithNpcTrigger(npcs.Npc13013Data.id, 1302501, 1, 8)
    this:CreateQuestNpc(arg1, npcs.Npc13106Data.id, 3)
    this:GetQuestNpcActor(npcs.Npc13106Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc13013Data.alias):DoFreeStyle(1160, true, nil, true, true, false, false)
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc13106Data.alias)
    questNpcActor:DoFreeStyle(4121, true, nil, true, true, true, true)
    questNpcActor:PlayEmoSync("", "Cs_Emo_NPC_Common/Cs_Emo_NPC_Normal01", "Cs_Emo_NPC_Common/Cs_Emo_NPC_WinkA01", 0, false, true, true)
end

function Quest13025:OnSubFinish1302501(arg1)
    print("OnSubFinish1302501")
    this:GetQuestNpcActor(npcs.Npc13106Data.alias):DisableInteeHeadCtrl(false)
    this:SafeDestroyQuestNpc(npcs.Npc13013Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13106Data.alias, 3)
end

function Quest13025:OnSubStart1302506(arg1)
    print("OnSubStart1302506")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc13064Data.id, 1302506, 3, 8, 1)
end

function Quest13025:OnSubFinish1302506(arg1)
    print("OnSubFinish1302506")
    this:SafeDestroyQuestNpc(npcs.Npc13064Data.alias, 3)
end

function Quest13025:OnSubStart1302502(arg1)
    print("OnSubStart1302502")
    actorMgr:GetActor(npcs.Npc13066Data.alias):DisableInteeHeadCtrl(true)
end

function Quest13025:OnSubFinish1302502(arg1)
    print("OnSubFinish1302502")
    actorMgr:GetActor(npcs.Npc13066Data.alias):DisableInteeHeadCtrl(false)
end

function Quest13025:OnSubStart1302509(arg1)
    print("OnSubStart1302509")
    this:CreateQuestNpc(arg1, npcs.Npc13066Data.id, 1)
    actorMgr:CreateActorWithPos("Q1302509Trigger", "Actor/Gadget/Q1302509Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q1302504_guide").pos, sceneData:GetDummyPoint(3, "Q1302504_guide").rot, true, false, 3)
    this:GetQuestNpcActor(npcs.Npc13066Data.alias):DoFreeStyle(1160, true, nil, true, true, false, true)
end

function Quest13025:OnSubFinish1302509(arg1)
    print("OnSubFinish1302509")
    this:TransmitPlayerWithDialogTextById(arg1, 1, nil, 1, nil, nil)
    this:SafeDestroyQuestNpc(npcs.Npc13066Data.alias, 3)
end

function Quest13025:OnSubStart1302503(arg1)
    print("OnSubStart1302503")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc1052Data.id, 1302503, 1, 15, 1)
end

function Quest13025:OnSubFinish1302503(arg1)
    print("OnSubFinish1302503")
    this:SafeDestroyQuestNpc(npcs.Npc1052Data.alias, 3)
end

function Quest13025:OnSubStart1302508(arg1)
    print("OnSubStart1302508")
end

function Quest13025:OnSubFinish1302508(arg1)
    print("OnSubFinish1302508")
end

function Quest13025:OnSubStart1302504(arg1)
    print("OnSubStart1302504")
    actorMgr:CreateActorWithPos("Q1302504Trigger", "Actor/Gadget/Q1302504Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q1302504_guide").pos, sceneData:GetDummyPoint(3, "Q1302504_guide").rot, true, false, 3)
end

function Quest13025:OnSubFinish1302504(arg1)
    print("OnSubFinish1302504")
    this:ActorDestroy("Q1302504Trigger")
    this:StopNarrator()
    this:ClearNarratorTask()
end

function Quest13025:OnSubFailed1302504(arg1)
    print("OnSubFailed1302504")
    this:ActorDestroy("Q1302504Trigger")
    this:StopNarrator()
    this:ClearNarratorTask()
end

function Quest13025:OnSubStart1302507(arg1)
    print("OnSubStart1302507")
end

function Quest13025:OnSubFinish1302507(arg1)
    print("OnSubFinish1302507")
    this:NarratorOnlyTaskByData(datas.Narrator_1302502)
end

function Quest13025:OnSubStart1302505(arg1)
    print("OnSubStart1302505")
    this:CallDelayNpcCreateWithNpcTriggerAndBlack(npcs.Npc13065Data.id, 1302505, 2, 35, 1)
end

function Quest13025:OnSubFinish1302505(arg1)
    print("OnSubFinish1302505")
    this:SafeDestroyQuestNpc(npcs.Npc13065Data.alias, 3)
end

return Quest13025
