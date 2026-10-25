require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest15021 = class("Quest15021", QuestActorProxy)
Quest15021.defaultAlias = "Quest15021"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest15021:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest15021:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1502101"] = self.OnSubStart1502101,
        ["1502102"] = self.OnSubStart1502102,
        ["1502108"] = self.OnSubStart1502108,
        ["1502103"] = self.OnSubStart1502103,
        ["1502104"] = self.OnSubStart1502104,
        ["1502105"] = self.OnSubStart1502105,
        ["1502109"] = self.OnSubStart1502109,
        ["1502106"] = self.OnSubStart1502106,
        ["1502107"] = self.OnSubStart1502107
    }
end

function Quest15021:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1502101"] = self.OnSubFinish1502101,
        ["1502102"] = self.OnSubFinish1502102,
        ["1502108"] = self.OnSubFinish1502108,
        ["1502103"] = self.OnSubFinish1502103,
        ["1502104"] = self.OnSubFinish1502104,
        ["1502105"] = self.OnSubFinish1502105,
        ["1502109"] = self.OnSubFinish1502109,
        ["1502106"] = self.OnSubFinish1502106,
        ["1502107"] = self.OnSubFinish1502107
    }
end

function Quest15021:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["1502107"] = self.OnSubFailed1502107}
end

function Quest15021:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest15021:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest15021:OnSubStart1502101(arg1)
    print("OnSubStart1502101")
    this:CreateQuestNpc(arg1, npcs.Npc1092.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1092.alias, 15021):DoFreeStyle(1120, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc21648.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc21648.alias, 15021):DoFreeStyle(1230, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc15001.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc15001.alias, 15021):DoFreeStyle(1160, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc15002.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc15002.alias, 15021):DoFreeStyle(4441, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc6237.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc6237.alias, 15021):DoFreeStyle(1230, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc15000.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc15000.alias, 15021):DoFreeStyle(3, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Npc15054.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc15055.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc15030.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc15030.alias, 15021):DoFreeStyle(5, true, nil, true, true, false, true)
    actorMgr:CreateActorWithPos("Q1502101Trigger", "Actor/Gadget/Q1502101Trigger", 70900002, 0, points._Q1502101TriggerPoint_.pos, points._Q1502101TriggerPoint_.rot, true, false, nil)
    actorMgr:CreateActorWithPos("Q1502101Trigger_1", "Actor/Gadget/Q1502101Trigger_1", 70900002, 0, points._Q1502101Trigger_1Point_.pos, points._Q1502101Trigger_1Point_.rot, true, false, nil)
    this:TryStartTribalAutoTrack(arg1)
end

function Quest15021:OnSubFinish1502101(arg1)
    print("OnSubFinish1502101")
    this:SafeDestroyQuestNpc(npcs.Npc1092.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21648.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc15001.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc15002.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc6237.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc15054.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc15055.alias, 3)
    this:ClearNarratorTask()
    this:ActionSafeCall(function(arg1)
        actorUtils.ShowContext("ChapterBeginDialog", 2063)
        this:QuestNarratorTask(datas.NarratorWithId_1502101, nil)
        this:SetNavigationByMainId(15021, true)
    end)
end

function Quest15021:OnSubStart1502102(arg1)
    print("OnSubStart1502102")
    this:CreateQuestNpc(arg1, npcs.Npc21712.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc21712.alias, 15021):DoFreeStyle(4190, true, nil, true, true, false, false)
    this:NpcCreateWithNpcTrigger(npcs.Npc21713.id, 0, 30, 1502102)
    this:GetQuestNpcActor(npcs.Npc21713.alias, 15021):DoFreeStyle(1080, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc21714.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc21714.alias, 15021):DoFreeStyle(1070, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc14500.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc14500.alias, 15021):DoFreeStyle(13, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc15000.alias, 15021):DoFreeStyle(3, true, nil, true, true, true, true)
    this:GetQuestNpcActor(npcs.Npc15030.alias, 15021):DoFreeStyle(5, true, nil, true, true, true, true)
end

function Quest15021:OnSubFinish1502102(arg1)
    print("OnSubFinish1502102")
    this:SafeDestroyQuestNpc(npcs.Npc14500.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc15000.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc15030.alias, 3)
    this:ActionSafeCall(function(arg1)
        this:CallDelayByQuest("", 0.5, function(arg1)
            this:QuestNarratorTask(datas.NarratorWithId_1502102, nil)
        end)
    end)
end

function Quest15021:OnSubStart1502108(arg1)
    print("OnSubStart1502108")
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc1092.id, 0, false, 0)
        this:CreateQuestNpc(arg1, npcs.Npc21712.id, 0, false, 0)
        this:GetQuestNpcActor(npcs.Npc21712.alias, 15021):DoFreeStyle(1130, true, nil, true, true, false, true)
        this:CreateQuestNpc(arg1, npcs.Npc21713.id, 0, false, 0)
        this:GetQuestNpcActor(npcs.Npc21713.alias, 15021):DoFreeStyle(1160, true, nil, true, true, false, true)
        this:CreateQuestNpc(arg1, npcs.Npc21714.id, 0, false, 0)
        this:GetQuestNpcActor(npcs.Npc21714.alias, 15021):DoFreeStyle(1240, true, nil, true, true, false, true)
        this:CreateQuestNpc(arg1, npcs.Npc21654.id, 0, false, 0)
        this:GetQuestNpcActor(npcs.Npc21654.alias, 15021):DoFreeStyle(1050, true, nil, true, true, false, true)
        this:CreateQuestNpc(arg1, npcs.Npc21648.id, 0, false, 0)
        this:GetQuestNpcActor(npcs.Npc21648.alias, 15021):DoFreeStyle(1170, true, nil, true, true, false, true)
        this:CreateQuestNpc(arg1, npcs.Npc21647.id, 0, false, 0)
        this:GetQuestNpcActor(npcs.Npc21647.alias, 15021):DoFreeStyle(1230, true, nil, true, true, false, true)
        this:GetQuestNpcActor(npcs.Npc21654.alias, 15021):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc21647.alias, 15021):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc21648.alias, 15021):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc21712.alias, 15021):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc21713.alias, 15021):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc21714.alias, 15021):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc1092.alias, 15021):DisableInteeHeadCtrl(true)
    end)
end

function Quest15021:OnSubFinish1502108(arg1)
    print("OnSubFinish1502108")
    this:SafeDestroyQuestNpc(npcs.Npc1092.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21712.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21713.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21714.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21648.alias, 3)
end

function Quest15021:OnSubStart1502103(arg1)
    print("OnSubStart1502103")
    this:NpcCreateWithNpcTrigger(npcs.Npc6228.id, 0, 10, 1502103)
    this:GetQuestNpcActor(npcs.Npc21654.alias, 15021):DoFreeStyle(1050, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc21647.alias, 15021):DoFreeStyle(1230, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc21654.alias, 15021):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc21647.alias, 15021):DisableInteeHeadCtrl(true)
end

function Quest15021:OnSubFinish1502103(arg1)
    print("OnSubFinish1502103")
    this:SafeDestroyQuestNpc(npcs.Npc6228.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21654.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21647.alias, 3)
end

function Quest15021:OnSubStart1502104(arg1)
    print("OnSubStart1502104")
    this:NpcCreateWithNpcTriggerAndBlackscreen(1502104, 0, 40, 1, npcs.Npc14499.id)
end

function Quest15021:OnSubFinish1502104(arg1)
    print("OnSubFinish1502104")
    this:SafeDestroyQuestNpc(npcs.Npc14499.alias, 3)
    globalActor:ChangeDay24Time(10, true)
end

function Quest15021:OnSubStart1502105(arg1)
    print("OnSubStart1502105")
    this:NpcCreateWithNpcTriggerAndBlackscreen(1502105, 0, 40, 1, npcs.Npc14500.id)
end

function Quest15021:OnSubFinish1502105(arg1)
    print("OnSubFinish1502105")
    this:NatsaurusVehicleOff()
end

function Quest15021:OnSubStart1502109(arg1)
    print("OnSubStart1502109")
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc14500.id, 0, false, 0)
        this:CreateQuestNpc(arg1, npcs.Npc14499.id, 0, false, 0)
        this:GetQuestNpcActor(npcs.Npc14500.alias, 15021):DoFreeStyle(3, true, nil, true, true, false, true)
        this:GetQuestNpcActor(npcs.Npc14499.alias, 15021):DoFreeStyle(3, true, nil, true, true, false, true)
    end)

    actorMgr:CreateActorWithPos("Q1502109Trigger", "Actor/Gadget/Q1502109Trigger", 70900002, 0, points._Q1502109TriggerPoint_.pos, points._Q1502109TriggerPoint_.rot, true, false, 3)
end

function Quest15021:OnSubFinish1502109(arg1)
    print("OnSubFinish1502109")
end

function Quest15021:OnSubStart1502106(arg1)
    print("OnSubStart1502106")
    this:GetQuestNpcActor(npcs.Npc14500.alias, 15021):DoFreeStyle(3, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc14499.alias, 15021):DoFreeStyle(3, true, nil, true, true, false, true)
    this:ActionSafeCall(function(arg1)
        this:QuestNarratorTask(datas.NarratorWithId_1502103, nil)
    end)
end

function Quest15021:OnSubFinish1502106(arg1)
    print("OnSubFinish1502106")
end

function Quest15021:OnSubStart1502107(arg1)
    print("OnSubStart1502107")
    this:GetQuestNpcActor(npcs.Npc14500.alias, 15021):DoFreeStyle(3, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc14499.alias, 15021):DoFreeStyle(3, true, nil, true, true, false, true)
    this:CallDelayByQuest("Q1502107", 2, function(arg1)
        this:RequestInteraction(npcs.Npc14500.alias, "", true)
    end)
end

function Quest15021:OnSubFinish1502107(arg1)
    print("OnSubFinish1502107")
    this:SafeDestroyQuestNpc(npcs.Npc14500.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14499.alias, 3)
end

function Quest15021:OnSubFailed1502107(arg1)
    print("OnSubFailed1502107")
    this:UnCallDelayByQuest("Q1502107")
end

return Quest15021
