require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest13038 = class("Quest13038", QuestActorProxy)
Quest13038.defaultAlias = "Quest13038"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points
local datas

function Quest13038:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
    datas = clientData.Datas
end

function Quest13038:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1303801"] = self.OnSubStart1303801,
        ["1303802"] = self.OnSubStart1303802,
        ["1303803"] = self.OnSubStart1303803,
        ["1303815"] = self.OnSubStart1303815,
        ["1303809"] = self.OnSubStart1303809,
        ["1303804"] = self.OnSubStart1303804,
        ["1303805"] = self.OnSubStart1303805,
        ["1303810"] = self.OnSubStart1303810,
        ["1303814"] = self.OnSubStart1303814,
        ["1303806"] = self.OnSubStart1303806,
        ["1303816"] = self.OnSubStart1303816,
        ["1303811"] = self.OnSubStart1303811,
        ["1303807"] = self.OnSubStart1303807,
        ["1303812"] = self.OnSubStart1303812,
        ["1303813"] = self.OnSubStart1303813,
        ["1303808"] = self.OnSubStart1303808
    }
end

function Quest13038:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1303801"] = self.OnSubFinish1303801,
        ["1303802"] = self.OnSubFinish1303802,
        ["1303803"] = self.OnSubFinish1303803,
        ["1303815"] = self.OnSubFinish1303815,
        ["1303809"] = self.OnSubFinish1303809,
        ["1303804"] = self.OnSubFinish1303804,
        ["1303805"] = self.OnSubFinish1303805,
        ["1303810"] = self.OnSubFinish1303810,
        ["1303814"] = self.OnSubFinish1303814,
        ["1303806"] = self.OnSubFinish1303806,
        ["1303816"] = self.OnSubFinish1303816,
        ["1303811"] = self.OnSubFinish1303811,
        ["1303807"] = self.OnSubFinish1303807,
        ["1303812"] = self.OnSubFinish1303812,
        ["1303813"] = self.OnSubFinish1303813,
        ["1303808"] = self.OnSubFinish1303808
    }
end

function Quest13038:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest13038:Start()
    print("Start")
end

function Quest13038:OnDestroy()
    print("OnDestroy")
end

function Quest13038:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest13038:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest13038:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest13038:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest13038:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, arg5, 2)
end

function Quest13038:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, 2)
end

function Quest13038:NpcCreateWithActionSafeCall(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, arg2, arg3)
    end)
end

function Quest13038:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
    local n = 0.5
    if arg6 then
        n = 0
    end

    this:CreateQuestNpcWithTriggerBlackEx("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, n, arg5, 0.5, 2)
end

function Quest13038:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 130381501 then
        actorUtils.FinishQuestID(false, 1303815)
    end
end

function Quest13038:OnSubStart1303801(arg1)
    print("OnSubStart1303801")
end

function Quest13038:OnSubFinish1303801(arg1)
    print("OnSubFinish1303801")
end

function Quest13038:OnSubStart1303802(arg1)
    print("OnSubStart1303802")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc1058Data.id, 1303802, 0, 10, 1)
end

function Quest13038:OnSubFinish1303802(arg1)
    print("OnSubFinish1303802")
    this:SafeDestroyQuestNpc(npcs.Npc1058Data.alias, 1091)
    this:SafeDestroyQuestNpc(npcs.Npc1050Data.alias, 1091)
end

function Quest13038:OnSubStart1303803(arg1)
    print("OnSubStart1303803")
    this:NpcCreateWithNpcTrigger(npcs.Npc1085Data.id, 1303803, 0, 20)
    this:CreateQuestNpc(arg1, npcs.Npc13995Data.id, 0)
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc13995Data.alias)
    questNpcActor:PlayEmoSync("", "Cs_Emo_NPC_Common/Cs_Emo_NPC_Normal01", "Cs_Emo_NPC_Common/Cs_Emo_NPC_WinkB01", 0, false, true, true)
    questNpcActor:DisableInteeHeadCtrl(true)
    questNpcActor:DoFreeStyle(4130, true, nil, true, true, false, false)
end

function Quest13038:OnSubFinish1303803(arg1)
    print("OnSubFinish1303803")
    this:SafeDestroyQuestNpc(npcs.Npc1058Data.alias, 1091)
    this:SafeDestroyQuestNpc(npcs.Npc1050Data.alias, 1091)
end

function Quest13038:OnSubStart1303815(arg1)
    print("OnSubStart1303815")
end

function Quest13038:OnSubFinish1303815(arg1)
    print("OnSubFinish1303815")
end

function Quest13038:OnSubStart1303809(arg1)
    print("OnSubStart1303809")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc1058Data.id, 1303809, 0, 10, 1)
    this:CreateQuestNpc(arg1, npcs.Npc1085Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13995Data.id, 0)
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc1085Data.alias)
    questNpcActor:DoFreeStyle(1190, true, nil, true, true, true, true)
    questNpcActor:DisableInteeHeadCtrl(true)
    local v = this:GetQuestNpcActor(npcs.Npc13995Data.alias)
    v:PlayEmoSync("", "Cs_Emo_NPC_Common/Cs_Emo_NPC_Normal01", "Cs_Emo_NPC_Common/Cs_Emo_NPC_WinkB01", 0, false, true, true)
    v:DisableInteeHeadCtrl(true)
    v:DoFreeStyle(4130, true, nil, true, true, false, false)
end

function Quest13038:OnSubFinish1303809(arg1)
    print("OnSubFinish1303809")
    this:SafeDestroyQuestNpc(npcs.Npc1058Data.alias, 1091)
    this:SafeDestroyQuestNpc(npcs.Npc1050Data.alias, 1091)
end

function Quest13038:OnSubStart1303804(arg1)
    print("OnSubStart1303804")
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc1085Data.alias)
    questNpcActor:DoFreeStyle(1190, true, nil, true, true, true, true)
    questNpcActor:DisableInteeHeadCtrl(true)
    local v = this:GetQuestNpcActor(npcs.Npc13995Data.alias)
    v:PlayEmoSync("", "Cs_Emo_NPC_Common/Cs_Emo_NPC_Normal01", "Cs_Emo_NPC_Common/Cs_Emo_NPC_WinkB01", 0, false, true, true)
    v:DisableInteeHeadCtrl(true)
    v:DoFreeStyle(4130, true, nil, true, true, false, false)
end

function Quest13038:OnSubFinish1303804(arg1)
    print("OnSubFinish1303804")
    this:GetQuestNpcActor(npcs.Npc1085Data.alias):DisableInteeHeadCtrl(false)
    this:GetQuestNpcActor(npcs.Npc13995Data.alias):DisableInteeHeadCtrl(false)
    this:SafeDestroyQuestNpc(npcs.Npc13995Data.alias, 1091)
end

function Quest13038:OnSubStart1303805(arg1)
    print("OnSubStart1303805")
    this:CreateQuestNpc(arg1, npcs.Npc1085Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13992Data.id, 0)
    this:NpcCreateWithNpcTrigger(npcs.Npc14003Data.id, 1303805, 0, 40)
    this:GetQuestNpcActor(npcs.Npc1085Data.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
end

function Quest13038:OnSubFinish1303805(arg1)
    print("OnSubFinish1303805")
end

function Quest13038:OnSubStart1303810(arg1)
    print("OnSubStart1303810")
    this:CreateQuestNpc(arg1, npcs.Npc1058Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1050Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1085Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13995Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13992Data.id, 0)
    this:NpcCreateWithNpcTrigger(npcs.Npc14003Data.id, 1303810, 0, 40)
    this:CreateQuestNpc(arg1, npcs.Npc13997Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc13995Data.alias):SitOnChair(0, false)
    this:ClearNarratorTask()
    this:DestroyNpcTrigger("Q1303811N14003Trigger")
    this:ActorDestroy("Q1303814Trigger")
    this:GetQuestNpcActor(npcs.Npc1058Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc1050Data.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc1085Data.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
end

function Quest13038:OnSubFinish1303810(arg1)
    print("OnSubFinish1303810")
    globalActor:PlayerEnterDungeon(3, 1200, true, nil, 1)
end

function Quest13038:OnSubStart1303814(arg1)
    print("OnSubStart1303814")
    actorMgr:CreateActorWithPos("Q1303814Trigger", "Actor/Gadget/Q1303814Trigger", 70900002, 0, points.TPos_Q1303814Trigger.pos, points.TPos_Q1303814Trigger.rot, true, false, 20213)
end

function Quest13038:OnSubFinish1303814(arg1)
    print("OnSubFinish1303814")
end

function Quest13038:OnSubStart1303806(arg1)
    print("OnSubStart1303806")
    this:CreateQuestNpc(arg1, npcs.Npc1058Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1050Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1085Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13995Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13992Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc14003Data.id, 0)
    this:NpcCreateWithActionSafeCall(arg1, npcs.PaimonData.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13997Data.id, 0)
    this:QuestNarratorTask(datas.NarratorWithId130806)
    this:GetQuestNpcActor(npcs.Npc13995Data.alias):SitOnChair(0, false)
    this:GetQuestNpcActor(npcs.Npc1058Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc1050Data.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc1085Data.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
end

function Quest13038:OnSubFinish1303806(arg1)
    print("OnSubFinish1303806")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.PaimonData.alias, 20213)
end

function Quest13038:OnSubStart1303816(arg1)
    print("OnSubStart1303816")
    this:CreateQuestNpc(arg1, npcs.Npc1058Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1050Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1085Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13995Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13992Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc14003Data.id, 0)
    this:NpcCreateWithActionSafeCall(arg1, npcs.PaimonData.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13997Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc13995Data.alias):SitOnChair(0, false)
    this:QuestNarratorTask(datas.NarratorWithId130806)
    this:GetQuestNpcActor(npcs.Npc1058Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc1050Data.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc1085Data.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
end

function Quest13038:OnSubFinish1303816(arg1)
    print("OnSubFinish1303816")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.PaimonData.alias, 20213)
end

function Quest13038:OnSubStart1303811(arg1)
    print("OnSubStart1303811")
    this:CreateQuestNpc(arg1, npcs.Npc1058Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1050Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1085Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13995Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13992Data.id, 0)
    this:NpcCreateWithNpcTrigger(npcs.Npc14003Data.id, 1303811, 0, 40)
    this:CreateQuestNpc(arg1, npcs.Npc13997Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc13995Data.alias):SitOnChair(0, false)
    this:GetQuestNpcActor(npcs.Npc1058Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc1085Data.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
end

function Quest13038:OnSubFinish1303811(arg1)
    print("OnSubFinish1303811")
    this:SafeDestroyQuestNpc(npcs.Npc1050Data.alias, 20213)
end

function Quest13038:OnSubStart1303807(arg1)
    print("OnSubStart1303807")
    this:CreateQuestNpc(arg1, npcs.Npc14003Data.id, 0)
    this:NpcCreateWithActionSafeCall(arg1, npcs.PaimonData.id, 0)
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc13997Data.id, 0)
    this:ActionSafeCall(function(arg1)
        this:QuestNarratorTask(datas.NarratorWithId130807)
        this:GetQuestNpcActor(npcs.Npc13995Data.alias):SitOnChair(0, false)
    end)

    this:GetQuestNpcActor(npcs.Npc1058Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc1085Data.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
end

function Quest13038:OnSubFinish1303807(arg1)
    print("OnSubFinish1303807")
    this:ClearNarratorTask()
    this:TransmitPlayerByData(arg1, 1303807, datas.TransmitData1303807)
    this:SafeDestroyQuestNpc(npcs.PaimonData.alias, 20213)
    this:SafeDestroyQuestNpc(npcs.Npc13997Data.alias, 20213)
end

function Quest13038:OnSubStart1303812(arg1)
    print("OnSubStart1303812")
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc1026Data.id, 0)
    this:ActionSafeCall(function(arg1)
        local questNpcActor = this:GetQuestNpcActor(npcs.Npc1026Data.alias)
        questNpcActor:DoFreeStyle(1220, true, nil, true, true, false, false)
        questNpcActor:SetPlayerNpcEnergy()
    end)
end

function Quest13038:OnSubFinish1303812(arg1)
    print("OnSubFinish1303812")
    this:SafeDestroyQuestNpc(npcs.Npc1026Data.alias, 20213)
end

function Quest13038:OnSubStart1303813(arg1)
    print("OnSubStart1303813")
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc1025Data.id, 0)
    this:ActionSafeCall(function(arg1)
        local questNpcActor = this:GetQuestNpcActor(npcs.Npc1025Data.alias)
        questNpcActor:DoFreeStyle(1220, true, nil, true, true, false, false)
        questNpcActor:SetPlayerNpcEnergy()
    end)
end

function Quest13038:OnSubFinish1303813(arg1)
    print("OnSubFinish1303813")
    this:SafeDestroyQuestNpc(npcs.Npc1025Data.alias, 20213)
end

function Quest13038:OnSubStart1303808(arg1)
    print("OnSubStart1303808")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(npcs.Npc14003Data.id, 1303808, 0, 70, 1, true)
end

function Quest13038:OnSubFinish1303808(arg1)
    print("OnSubFinish1303808")
    this:SafeDestroyQuestNpc(npcs.Npc1058Data.alias, 1091)
    this:SafeDestroyQuestNpc(npcs.Npc1050Data.alias, 1091)
    this:SafeDestroyQuestNpc(npcs.Npc1085Data.alias, 1091)
    this:SafeDestroyQuestNpc(npcs.Npc13995Data.alias, 1091)
    this:SafeDestroyQuestNpc(npcs.Npc13992Data.alias, 1091)
    this:SafeDestroyQuestNpc(npcs.Npc14003Data.alias, 1091)
end

return Quest13038
