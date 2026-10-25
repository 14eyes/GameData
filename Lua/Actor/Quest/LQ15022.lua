require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest15022 = class("Quest15022", QuestActorProxy)
Quest15022.defaultAlias = "Quest15022"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest15022:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest15022:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1502215"] = self.OnSubStart1502215,
        ["1502201"] = self.OnSubStart1502201,
        ["1502202"] = self.OnSubStart1502202,
        ["1502203"] = self.OnSubStart1502203,
        ["1502204"] = self.OnSubStart1502204,
        ["1502213"] = self.OnSubStart1502213,
        ["1502207"] = self.OnSubStart1502207,
        ["1502208"] = self.OnSubStart1502208,
        ["1502209"] = self.OnSubStart1502209,
        ["1502210"] = self.OnSubStart1502210,
        ["1502205"] = self.OnSubStart1502205,
        ["1502214"] = self.OnSubStart1502214,
        ["1502211"] = self.OnSubStart1502211,
        ["1502212"] = self.OnSubStart1502212,
        ["1502206"] = self.OnSubStart1502206
    }
end

function Quest15022:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1502215"] = self.OnSubFinish1502215,
        ["1502201"] = self.OnSubFinish1502201,
        ["1502202"] = self.OnSubFinish1502202,
        ["1502203"] = self.OnSubFinish1502203,
        ["1502204"] = self.OnSubFinish1502204,
        ["1502213"] = self.OnSubFinish1502213,
        ["1502207"] = self.OnSubFinish1502207,
        ["1502208"] = self.OnSubFinish1502208,
        ["1502209"] = self.OnSubFinish1502209,
        ["1502210"] = self.OnSubFinish1502210,
        ["1502205"] = self.OnSubFinish1502205,
        ["1502214"] = self.OnSubFinish1502214,
        ["1502211"] = self.OnSubFinish1502211,
        ["1502212"] = self.OnSubFinish1502212,
        ["1502206"] = self.OnSubFinish1502206
    }
end

function Quest15022:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["1502210"] = self.OnSubFailed1502210,
        ["1502205"] = self.OnSubFailed1502205,
        ["1502211"] = self.OnSubFailed1502211,
        ["1502212"] = self.OnSubFailed1502212,
        ["1502206"] = self.OnSubFailed1502206
    }
end

function Quest15022:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest15022:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest15022:OnSubStart1502215(arg1)
    print("OnSubStart1502215")
    actorUtils.FinishQuestID(false, 1502215)
end

function Quest15022:OnSubFinish1502215(arg1)
    print("OnSubFinish1502215")
    this:ActionSafeCall(function(arg1_2)
        this:TransmitPlayerById(arg1, 1, nil, nil, nil)
    end)
end

function Quest15022:OnSubStart1502201(arg1)
    print("OnSubStart1502201")
    this:NpcCreateWithNpcTriggerAndBlackscreen(1502201, 0, 15, 1, npcs.Npc1095.id)
end

function Quest15022:OnSubFinish1502201(arg1)
    print("OnSubFinish1502201")
    this:SafeDestroyQuestNpc(npcs.Npc1095.alias, 3)
end

function Quest15022:OnSubStart1502202(arg1)
    print("OnSubStart1502202")
    this:NpcCreateWithNpcTriggerAndBlackscreen(1502202, 0, 6, 1, npcs.Npc1095.id)
end

function Quest15022:OnSubFinish1502202(arg1)
    print("OnSubFinish1502202")
end

function Quest15022:OnSubStart1502203(arg1)
    print("OnSubStart1502203")
    this:CreateQuestNpc(arg1, npcs.Npc6228.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc6228.alias, 15022):DoFreeStyle(1230, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Npc1095.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc6237.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc6237.alias, 15022):DoFreeStyle(1060, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Npc21647.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc21647.alias, 15022):DoFreeStyle(1230, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Npc21653.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc21653.alias, 15022):DoFreeStyle(1120, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Npc21654.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc21654.alias, 15022):DoFreeStyle(1090, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Npc21648.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc21648.alias, 15022):DoFreeStyle(1170, true, nil, true, true, false, true)
    this:CreateSpeechBubbleTask(21653, 150229701, 5, true, 8, 15, true, false)
    this:CreateSpeechBubbleTask(6237, 150229702, 7, true, 8, 15, true, false)
    this:CreateSpeechBubbleTask(21647, 150229703, 9, true, 8, 15, true, false)
    this:CreateSpeechBubbleTask(21654, 150229704, 8, true, 8, 15, true, false)
    this:GetQuestNpcActor(npcs.Npc21648.alias, 15022):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc6228.alias, 15022):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc21647.alias, 15022):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc21654.alias, 15022):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc6237.alias, 15022):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc21653.alias, 15022):DisableInteeHeadCtrl(true)
end

function Quest15022:OnSubFinish1502203(arg1)
    print("OnSubFinish1502203")
    this:SafeDestroyQuestNpc(npcs.Npc1095.alias, 3)
end

function Quest15022:OnSubStart1502204(arg1)
    print("OnSubStart1502204")
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc6228.id, 0, false, 0)
        this:CreateQuestNpc(arg1, npcs.Npc6247.id, 0, false, 0)
        this:GetQuestNpcActor(npcs.Npc6228.alias, 15022):DoFreeStyle(1230, true, nil, true, true, false, true)
        this:GetQuestNpcActor(npcs.Npc21647.alias, 15022):DoFreeStyle(1230, true, nil, true, true, false, true)
        this:GetQuestNpcActor(npcs.Npc6237.alias, 15022):DoFreeStyle(1060, true, nil, true, true, false, true)
        this:GetQuestNpcActor(npcs.Npc21653.alias, 15022):DoFreeStyle(1120, true, nil, true, true, false, true)
        this:GetQuestNpcActor(npcs.Npc21654.alias, 15022):DoFreeStyle(1090, true, nil, true, true, false, true)
        this:CreateQuestNpc(arg1, npcs.Npc21648.id, 0, false, 0)
        this:GetQuestNpcActor(npcs.Npc21648.alias, 15022):DoFreeStyle(1170, true, nil, true, true, false, true)
        this:GetQuestNpcActor(npcs.Npc21648.alias, 15022):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc6228.alias, 15022):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc21647.alias, 15022):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc21654.alias, 15022):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc6237.alias, 15022):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc21653.alias, 15022):DisableInteeHeadCtrl(true)
        this:CreateSpeechBubbleTask(21653, 150229701, 0, true, 8, 15, true, false)
        this:CreateSpeechBubbleTask(6237, 150229702, 0, true, 8, 15, true, false)
        this:CreateSpeechBubbleTask(21647, 150229703, 0, true, 8, 15, true, false)
        this:CreateSpeechBubbleTask(21654, 150229704, 8, true, 8, 15, true, false)
    end)
end

function Quest15022:OnSubFinish1502204(arg1)
    print("OnSubFinish1502204")
    this:SafeDestroyQuestNpc(npcs.Npc6228.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc6247.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21647.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc6237.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21653.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21654.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21648.alias, 3)
end

function Quest15022:OnSubStart1502213(arg1)
    print("OnSubStart1502213")
    actorMgr:CreateActorWithPos("Q1502213Trigger", "Actor/Gadget/Q1502213Trigger", 70900002, 0, points._Q1502213TriggerPoint_.pos, points._Q1502213TriggerPoint_.rot, true, false, 3)
end

function Quest15022:OnSubFinish1502213(arg1)
    print("OnSubFinish1502213")
end

function Quest15022:OnSubStart1502207(arg1)
    print("OnSubStart1502207")
end

function Quest15022:OnSubFinish1502207(arg1)
    print("OnSubFinish1502207")
end

function Quest15022:OnSubStart1502208(arg1)
    print("OnSubStart1502208")
    actorMgr:CreateActorWithPos("Q1502208_Narrator", "Actor/Gadget/Q1502208_Narrator", 70900002, 0, points._Q1502208_NarratorPoint_.pos, points._Q1502208_NarratorPoint_.rot, true, false, 3)
end

function Quest15022:OnSubFinish1502208(arg1)
    print("OnSubFinish1502208")
    this:ActorDestroy("Q1502208_Narrator")
end

function Quest15022:OnSubStart1502209(arg1)
    print("OnSubStart1502209")
end

function Quest15022:OnSubFinish1502209(arg1)
    print("OnSubFinish1502209")
end

function Quest15022:OnSubStart1502210(arg1)
    print("OnSubStart1502210")
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc6247.id, 0, false, 0)
    end)
end

function Quest15022:OnSubFinish1502210(arg1)
    print("OnSubFinish1502210")
    this:SafeDestroyQuestNpc(npcs.Npc6247.alias, 3)
end

function Quest15022:OnSubFailed1502210(arg1)
    print("OnSubFailed1502210")
    this:SafeDestroyQuestNpc(npcs.Npc6247.alias, 3)
    this:ActorDestroy("Q1502208_Narrator")
end

function Quest15022:OnSubStart1502205(arg1)
    print("OnSubStart1502205")
    this:NpcCreateWithNpcTriggerAndBlackscreen(1502205, 0, 20, 1, npcs.Npc1092.id)
    actorMgr:CreateActorWithPos("Q1502205Trigger", "Actor/Gadget/Q1502205Trigger", 70900002, 0, points._Q1502205TriggerPoint_.pos, points._Q1502205TriggerPoint_.rot, true, false, nil)
end

function Quest15022:OnSubFinish1502205(arg1)
    print("OnSubFinish1502205")
    this:SafeDestroyQuestNpc(npcs.Npc1092.alias, 3)
    globalActor:ChangeDay24Time(14, true)
    this:ActorDestroy("Q1502205Trigger")
end

function Quest15022:OnSubFailed1502205(arg1)
    print("OnSubFailed1502205")
    this:ActorDestroy("Q1502205N1092Trigger")
    this:DestroyQuestNpcActor(npcs.Npc1092.alias, 3)
    this:ActorDestroy("Q1502205Trigger")
end

function Quest15022:OnSubStart1502214(arg1)
    print("OnSubStart1502214")
    actorMgr:CreateActorWithPos("Q1502214Trigger", "Actor/Gadget/Q1502214Trigger", 70900002, 0, points._Q1502214TriggerPoint_.pos, points._Q1502214TriggerPoint_.rot, true, false, 3)
    actorMgr:CreateActorWithPos("Q1502214Trigger_1", "Actor/Gadget/Q1502214Trigger_1", 70900002, 0, points._Q1502214Trigger_1Point_.pos, points._Q1502214Trigger_1Point_.rot, true, false, nil)
end

function Quest15022:OnSubFinish1502214(arg1)
    print("OnSubFinish1502214")
    this:ActorDestroy("Q1502214Trigger")
    this:ActorDestroy("Q1502214Trigger_1")
end

function Quest15022:OnSubStart1502211(arg1)
    print("OnSubStart1502211")
    actorMgr:CreateActorWithPos("Q1502211Trigger", "Actor/Gadget/Q1502211Trigger", 70900002, 0, points._Q1502211TriggerPoint_.pos, points._Q1502211TriggerPoint_.rot, true, false, nil)
end

function Quest15022:OnSubFinish1502211(arg1)
    print("OnSubFinish1502211")
end

function Quest15022:OnSubFailed1502211(arg1)
    print("OnSubFailed1502211")
    this:ActorDestroy("Q1502211Trigger")
end

function Quest15022:OnSubStart1502212(arg1)
    print("OnSubStart1502212")
    actorMgr:CreateActorWithPos("Q1502212Trigger_fail", "Actor/Gadget/Q1502212Trigger_fail", 70900002, 0, points._Q1502212Trigger_failPoint_.pos, points._Q1502212Trigger_failPoint_.rot, true, false, nil)
    actorMgr:CreateActorWithPos("Q1502212Trigger_Waring", "Actor/Gadget/Q1502212Trigger_Waring", 70900002, 0, points._Q1502212Trigger_WaringPoint_.pos, points._Q1502212Trigger_WaringPoint_.rot, true, false, nil)
    actorMgr:CreateActorWithPos("Q1502212_Finish", "Actor/Gadget/Q1502212_Finish", 70900002, 0, points._Q1502212_FinishPoint_.pos, points._Q1502212_FinishPoint_.rot, true, false, nil)
    actorMgr:CreateActorWithPos("Q1502212_Finish2", "Actor/Gadget/Q1502212_Finish2", 70900002, 0, points._Q1502212_Finish2Point_.pos, points._Q1502212_Finish2Point_.rot, true, false, nil)
end

function Quest15022:OnSubFinish1502212(arg1)
    print("OnSubFinish1502212")
    this:ActorDestroy("Q1502212Trigger_fail")
    this:ActorDestroy("Q1502212Trigger_Waring")
    this:ActorDestroy("Q1502212_Finish")
    this:ActorDestroy("Q1502212_Finish2")
end

function Quest15022:OnSubFailed1502212(arg1)
    print("OnSubFailed1502212")
    this:ActorDestroy("Q1502212Trigger_fail")
    this:ActorDestroy("Q1502212Trigger_Waring")
    this:ActorDestroy("Q1502212_Finish")
    this:ActorDestroy("Q1502212_Finish2")
end

function Quest15022:OnSubStart1502206(arg1)
    print("OnSubStart1502206")
    this:CallDelayByQuest("Q1502206_1", 2, function(arg1)
        this:NpcCreateWithNpcTriggerAndBlackscreen(1502206, 0, 50, 1, npcs.Npc1092.id)
        actorMgr:CreateActorWithPos("Q1502206Trigger_fail", "Actor/Gadget/Q1502206Trigger_fail", 70900002, 0, points._Q1502206Trigger_failPoint_.pos, points._Q1502206Trigger_failPoint_.rot, true, false, nil)
    end)
end

function Quest15022:OnSubFinish1502206(arg1)
    print("OnSubFinish1502206")
    this:DestroyQuestNpcActor(npcs.Npc1092.alias, 3)
    this:ActorDestroy("Q1502206Trigger_fail")
    this:ActionSafeCall(function(arg1)
        globalActor:PlayerEnterDungeon(0, 1224, false, nil, 0)
    end)
end

function Quest15022:OnSubFailed1502206(arg1)
    print("OnSubFailed1502206")
    this:UnCallDelayByQuest("Q1502206_1")
    this:ActorDestroy("Q1502206N1092Trigger")
end

return Quest15022
