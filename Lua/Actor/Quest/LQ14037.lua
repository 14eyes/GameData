require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest14037 = class("Quest14037", QuestActorProxy)
Quest14037.defaultAlias = "Quest14037"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points
local datas

function Quest14037:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
    datas = clientData.Datas
end

function Quest14037:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1403701"] = self.OnSubStart1403701,
        ["1403702"] = self.OnSubStart1403702,
        ["1403703"] = self.OnSubStart1403703,
        ["1403715"] = self.OnSubStart1403715,
        ["1403704"] = self.OnSubStart1403704,
        ["1403705"] = self.OnSubStart1403705,
        ["1403706"] = self.OnSubStart1403706,
        ["1403707"] = self.OnSubStart1403707,
        ["1403708"] = self.OnSubStart1403708,
        ["1403709"] = self.OnSubStart1403709,
        ["1403710"] = self.OnSubStart1403710,
        ["1403711"] = self.OnSubStart1403711,
        ["1403712"] = self.OnSubStart1403712,
        ["1403713"] = self.OnSubStart1403713,
        ["1403716"] = self.OnSubStart1403716,
        ["1403714"] = self.OnSubStart1403714
    }
end

function Quest14037:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1403701"] = self.OnSubFinish1403701,
        ["1403702"] = self.OnSubFinish1403702,
        ["1403703"] = self.OnSubFinish1403703,
        ["1403715"] = self.OnSubFinish1403715,
        ["1403704"] = self.OnSubFinish1403704,
        ["1403705"] = self.OnSubFinish1403705,
        ["1403706"] = self.OnSubFinish1403706,
        ["1403707"] = self.OnSubFinish1403707,
        ["1403708"] = self.OnSubFinish1403708,
        ["1403709"] = self.OnSubFinish1403709,
        ["1403710"] = self.OnSubFinish1403710,
        ["1403711"] = self.OnSubFinish1403711,
        ["1403712"] = self.OnSubFinish1403712,
        ["1403713"] = self.OnSubFinish1403713,
        ["1403716"] = self.OnSubFinish1403716,
        ["1403714"] = self.OnSubFinish1403714
    }
end

function Quest14037:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest14037:Start()
    print("Start")
end

function Quest14037:OnDestroy()
    print("OnDestroy")
end

function Quest14037:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest14037:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest14037:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest14037:OnSubStart1403701(arg1)
    print("OnSubStart1403701")
    actorMgr:CreateActorWithPos("Q14037Trigger", "Actor/Gadget/Q14037Trigger", 70900002, 0, {x = -1997.617, y = 201.0, z = 2422.531}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
    this:CreateQuestNpc(arg1, npcs.Npc1050Data.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc4169Data.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc14258Data.id, 0, false, 0)
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc1050Data.alias)
    questNpcActor:DisableInteeHeadCtrl(true)
    questNpcActor:DoFreeStyle(1170, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc4169Data.alias):DisableInteeHeadCtrl(true)
    local v = this:GetQuestNpcActor(npcs.Npc14258Data.alias)
    v:DoFreeStyle(1190, true, nil, true, true, false, true)
    v:DisableInteeHeadCtrl(true)
    this:NotifyTo(npcs.Npc4152Data.alias, 1, true)
    this:NotifyTo(npcs.Npc4112Data.alias, 1, true)
end

function Quest14037:OnSubFinish1403701(arg1)
    print("OnSubFinish1403701")
end

function Quest14037:OnSubStart1403702(arg1)
    print("OnSubStart1403702")
    actorMgr:CreateActorWithPos("Q14037Trigger7", "Actor/Gadget/Q14037Trigger7", 70900002, 0, {x = -1997.617, y = 201.0, z = 2422.531}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc1050Data.alias)
    questNpcActor:DisableInteeHeadCtrl(true)
    questNpcActor:DoFreeStyle(1170, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc4169Data.alias):DisableInteeHeadCtrl(true)
    local v = this:GetQuestNpcActor(npcs.Npc14258Data.alias)
    v:DoFreeStyle(1190, true, nil, true, true, false, true)
    v:DisableInteeHeadCtrl(true)
    this:NotifyTo(npcs.Npc4152Data.alias, 1, true)
    this:NotifyTo(npcs.Npc4112Data.alias, 1, true)
end

function Quest14037:OnSubFinish1403702(arg1)
    print("OnSubFinish1403702")
    this:GetQuestNpcActor(npcs.Npc1050Data.alias):DisableInteeHeadCtrl(false)
    this:GetQuestNpcActor(npcs.Npc4169Data.alias):DisableInteeHeadCtrl(false)
    this:DestroyQuestNpcActor(npcs.Npc1050Data.alias, 3)
    this:DestroyQuestNpcActor(npcs.Npc4169Data.alias, 3)
end

function Quest14037:OnSubStart1403703(arg1)
    print("OnSubStart1403703")
    actorMgr:CreateActorWithPos("Q14037Trigger2", "Actor/Gadget/Q14037Trigger2", 70900002, 0, points.TPos_Q14037Trigger2.pos, points.TPos_Q14037Trigger2.rot, true, false, 3)
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc14258Data.alias)
    questNpcActor:DoFreeStyle(1190, true, nil, true, true, false, true)
    questNpcActor:DisableInteeHeadCtrl(true)
    this:NotifyTo(npcs.Npc4152Data.alias, 1, true)
    this:NotifyTo(npcs.Npc4112Data.alias, 1, true)
end

function Quest14037:OnSubFinish1403703(arg1)
    print("OnSubFinish1403703")
end

function Quest14037:OnSubStart1403715(arg1)
    print("OnSubStart1403715")
    actorMgr:CreateActorWithPos("Q14037Trigger3", "Actor/Gadget/Q14037Trigger3", 70900002, 0, {x = -1993.995, y = 201.0, z = 2417.0}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc14258Data.alias)
    questNpcActor:DoFreeStyle(1190, true, nil, true, true, false, true)
    questNpcActor:DisableInteeHeadCtrl(true)
    this:NotifyTo(npcs.Npc4152Data.alias, 1, true)
    this:NotifyTo(npcs.Npc4112Data.alias, 1, true)
end

function Quest14037:OnSubFinish1403715(arg1)
    print("OnSubFinish1403715")
    this:ActionSafeCall(function(arg1)
        this:QuestNarratorTask(datas.Narrator_1403701)
        this:DestroyQuestNpcActor(npcs.Npc1090Data.alias, 3)
        this:DestroyQuestNpcActor(npcs.Npc1050Data.alias, 3)
        this:DestroyQuestNpcActor(npcs.Npc14258Data.alias, 3)
    end)
end

function Quest14037:OnSubStart1403704(arg1)
    print("OnSubStart1403704")
    this:ActionSafeCall(function(arg1_2)
        actorMgr:CreateActorWithPos("Q14037Trigger1", "Actor/Gadget/Q14037Trigger1", 70900002, 0, {x = -1897.0, y = 250.644, z = 2497.153}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
        this:CreateQuestNpc(arg1, npcs.Npc14115Data.id, 0, false, 0)
        this:CreateQuestNpc(arg1, npcs.Npc14116Data.id, 0, false, 0)
        this:CreateQuestNpc(arg1, npcs.Npc14117Data.id, 0, false, 0)
        this:CreateQuestNpc(arg1, npcs.Npc1050Data.id, 0, false, 0)
        this:CreateQuestNpc(arg1, npcs.Npc14258Data.id, 0, false, 0)
        local questNpcActor = this:GetQuestNpcActor(npcs.Npc14115Data.alias)
        questNpcActor:DoFreeStyle(1170, true, nil, true, true, false, false)
        questNpcActor:DisableInteeHeadCtrl(true)
        local v = this:GetQuestNpcActor(npcs.Npc14116Data.alias)
        v:DoFreeStyle(1190, true, nil, true, true, false, false)
        v:DisableInteeHeadCtrl(true)
        local questNpcActor2 = this:GetQuestNpcActor(npcs.Npc14117Data.alias)
        questNpcActor2:DoFreeStyle(1120, true, nil, true, true, false, false)
        questNpcActor2:DisableInteeHeadCtrl(true)
        local questNpcActor3 = this:GetQuestNpcActor(npcs.Npc14258Data.alias)
        questNpcActor3:DoFreeStyle(1190, true, nil, true, true, false, true)
        questNpcActor3:DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc1050Data.alias):DoFreeStyle(1190, true, nil, true, true, false, true)
        this:NotifyTo(npcs.Npc4140Data.alias, 1, true)
        this:NotifyTo(npcs.Npc4141Data.alias, 1, true)
        this:NotifyTo(npcs.Npc4139Data.alias, 1, true)
        this:NotifyTo(npcs.Npc4137Data.alias, 1, true)
        this:NotifyTo(npcs.Npc4138Data.alias, 1, true)
        this:NotifyTo(npcs.Npc4136Data.alias, 1, true)
        this:NotifyTo(npcs.Npc4135Data.alias, 1, true)
        this:NotifyTo(npcs.Npc4152Data.alias, 1, true)
        this:NotifyTo(npcs.Npc4112Data.alias, 1, true)
        this:NotifyTo(npcs.Npc12679Data.alias, 1, true)
        this:NotifyTo(npcs.Npc12720Data.alias, 1, true)
        this:NotifyTo(npcs.Npc12719Data.alias, 1, true)
    end)
end

function Quest14037:OnSubFinish1403704(arg1)
    print("OnSubFinish1403704")
    this:DestroyQuestNpcActor(npcs.Npc14258Data.alias, 3)
    this:LightNotifyTo(npcs.Npc4152Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc4112Data.alias, 0, true)
end

function Quest14037:OnSubStart1403705(arg1)
    print("OnSubStart1403705")
    actorMgr:CreateActorWithPos("Q14037Trigger8", "Actor/Gadget/Q14037Trigger8", 70900002, 0, {x = -1897.0, y = 250.644, z = 2497.153}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc14115Data.alias)
    questNpcActor:DoFreeStyle(1170, true, nil, true, true, false, false)
    questNpcActor:DisableInteeHeadCtrl(true)
    local v = this:GetQuestNpcActor(npcs.Npc14116Data.alias)
    v:DoFreeStyle(1190, true, nil, true, true, false, false)
    v:DisableInteeHeadCtrl(true)
    local questNpcActor2 = this:GetQuestNpcActor(npcs.Npc14117Data.alias)
    questNpcActor2:DoFreeStyle(1120, true, nil, true, true, false, false)
    questNpcActor2:DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1050Data.alias):DoFreeStyle(1190, true, nil, true, true, false, true)
    this:NotifyTo(npcs.Npc4140Data.alias, 1, true)
    this:NotifyTo(npcs.Npc4141Data.alias, 1, true)
    this:NotifyTo(npcs.Npc4139Data.alias, 1, true)
    this:NotifyTo(npcs.Npc4137Data.alias, 1, true)
    this:NotifyTo(npcs.Npc4138Data.alias, 1, true)
    this:NotifyTo(npcs.Npc4136Data.alias, 1, true)
    this:NotifyTo(npcs.Npc4135Data.alias, 1, true)
    this:NotifyTo(npcs.Npc12679Data.alias, 1, true)
    this:NotifyTo(npcs.Npc12720Data.alias, 1, true)
    this:NotifyTo(npcs.Npc12719Data.alias, 1, true)
end

function Quest14037:OnSubFinish1403705(arg1)
    print("OnSubFinish1403705")
    this:ActionSafeCall(function(arg1)
        this:GetQuestNpcActor(npcs.Npc14115Data.alias):DisableInteeHeadCtrl(false)
        this:GetQuestNpcActor(npcs.Npc14116Data.alias):DisableInteeHeadCtrl(false)
        this:GetQuestNpcActor(npcs.Npc14117Data.alias):DisableInteeHeadCtrl(false)
        this:DestroyQuestNpcActor(npcs.Npc14116Data.alias, 3)
        this:DestroyQuestNpcActor(npcs.Npc14117Data.alias, 3)
        this:ClearNarratorTask()
        this:StopNarrator()
    end)
end

function Quest14037:OnSubStart1403706(arg1)
    print("OnSubStart1403706")
    this:ActionSafeCall(function(arg1)
        actorMgr:CreateActorWithPos("Q14037Trigger4", "Actor/Gadget/Q14037Trigger4", 70900002, 0, points.TPos_Q14037Trigger4.pos, points.TPos_Q14037Trigger4.rot, true, false, 1097)
        local questNpcActor = this:GetQuestNpcActor(npcs.Npc14115Data.alias)
        questNpcActor:DisableInteeHeadCtrl(true)
        questNpcActor:DoFreeStyle(1190, true, nil, true, true, false, true)
        this:GetQuestNpcActor(npcs.Npc1050Data.alias):DoFreeStyle(1190, true, nil, true, true, false, true)
        this:NotifyTo(npcs.Npc4140Data.alias, 1, true)
        this:NotifyTo(npcs.Npc4141Data.alias, 1, true)
        this:NotifyTo(npcs.Npc4139Data.alias, 1, true)
        this:NotifyTo(npcs.Npc4137Data.alias, 1, true)
        this:NotifyTo(npcs.Npc4138Data.alias, 1, true)
        this:NotifyTo(npcs.Npc4136Data.alias, 1, true)
        this:NotifyTo(npcs.Npc4135Data.alias, 1, true)
        this:NotifyTo(npcs.Npc12679Data.alias, 1, true)
        this:NotifyTo(npcs.Npc12720Data.alias, 1, true)
        this:NotifyTo(npcs.Npc12719Data.alias, 1, true)
    end)
end

function Quest14037:OnSubFinish1403706(arg1)
    print("OnSubFinish1403706")
    this:ActionSafeCall(function(arg1)
        this:DestroyQuestNpcActor(npcs.Npc1050Data.alias, 1097)
        this:DestroyQuestNpcActor(npcs.Npc14116Data.alias, 1097)
    end)
end

function Quest14037:OnSubStart1403707(arg1)
    print("OnSubStart1403707")
    this:ActionSafeCall(function(arg1)
        actorMgr:CreateActorWithPos("Q14037Trigger6", "Actor/Gadget/Q14037Trigger6", 70900002, 0, points.TPos_Q14037Trigger6.pos, points.TPos_Q14037Trigger6.rot, true, false, 3)
        this:NotifyTo(npcs.Npc4140Data.alias, 1, true)
        this:NotifyTo(npcs.Npc4141Data.alias, 1, true)
        this:NotifyTo(npcs.Npc4139Data.alias, 1, true)
        this:NotifyTo(npcs.Npc4137Data.alias, 1, true)
        this:NotifyTo(npcs.Npc4138Data.alias, 1, true)
        this:NotifyTo(npcs.Npc4136Data.alias, 1, true)
        this:NotifyTo(npcs.Npc4135Data.alias, 1, true)
        this:NotifyTo(npcs.Npc12679Data.alias, 1, true)
        this:NotifyTo(npcs.Npc12720Data.alias, 1, true)
        this:NotifyTo(npcs.Npc12719Data.alias, 1, true)
    end)
end

function Quest14037:OnSubFinish1403707(arg1)
    print("OnSubFinish1403707")
    this:DestroyQuestNpcActor(npcs.Npc14115Data.alias, 3)
end

function Quest14037:OnSubStart1403708(arg1)
    print("OnSubStart1403708")
    this:CreateQuestNpc(arg1, npcs.Npc14309Data.id, 0, false, 0)
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc14309Data.alias)
    questNpcActor:DisableInteeHeadCtrl(true)
    questNpcActor:PlayEmoSync("", "Cs_Emo_NPC_Common/Cs_Emo_NPC_Normal01", "Cs_Emo_NPC_Common/Cs_Emo_NPC_WinkB01", 0, false, true, true)
end

function Quest14037:OnSubFinish1403708(arg1)
    print("OnSubFinish1403708")
end

function Quest14037:OnSubStart1403709(arg1)
    print("OnSubStart1403709")
end

function Quest14037:OnSubFinish1403709(arg1)
    print("OnSubFinish1403709")
end

function Quest14037:OnSubStart1403710(arg1)
    print("OnSubStart1403710")
end

function Quest14037:OnSubFinish1403710(arg1)
    print("OnSubFinish1403710")
end

function Quest14037:OnSubStart1403711(arg1)
    print("OnSubStart1403711")
end

function Quest14037:OnSubFinish1403711(arg1)
    print("OnSubFinish1403711")
end

function Quest14037:OnSubStart1403712(arg1)
    print("OnSubStart1403712")
    this:CreateLocalGadget(70294030, "2", {x = -1900.72, y = 243.26, z = 2487.586}, {x = 271.147, y = 106.776, z = 234.085}, 3, nil, nil, false, 0, true)
    this:CreateLocalGadget(70294031, "2", {x = -1900.876, y = 243.227, z = 2487.063}, {x = 333.44, y = 344.659, z = 292.277}, 3, nil, nil, false, 0, true)
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc14309Data.alias)
    questNpcActor:DisableInteeHeadCtrl(true)
    questNpcActor:PlayEmoSync("", "Cs_Emo_NPC_Common/Cs_Emo_NPC_Normal01", "Cs_Emo_NPC_Common/Cs_Emo_NPC_WinkB01", 0, false, true, true)
    local v = this:GetQuestNpcActor(npcs.Npc14116Data.alias)
    v:DisableInteeHeadCtrl(true)
    v:DoFreeStyle(1190, true, nil, true, true, false, true)
    local questNpcActor2 = this:GetQuestNpcActor(npcs.Npc14117Data.alias)
    questNpcActor2:DisableInteeHeadCtrl(true)
    questNpcActor2:DoFreeStyle(1110, true, nil, true, true, false, true)
    local questNpcActor3 = this:GetQuestNpcActor(npcs.Npc1090Data.alias)
    questNpcActor3:DisableInteeHeadCtrl(true)
    questNpcActor3:DoFreeStyle(1280, true, nil, true, true, false, true)
    this:NotifyTo(npcs.Npc4140Data.alias, 1, true)
    this:NotifyTo(npcs.Npc4141Data.alias, 1, true)
    this:NotifyTo(npcs.Npc4139Data.alias, 1, true)
    this:NotifyTo(npcs.Npc4137Data.alias, 1, true)
    this:NotifyTo(npcs.Npc4138Data.alias, 1, true)
    this:NotifyTo(npcs.Npc4136Data.alias, 1, true)
    this:NotifyTo(npcs.Npc4135Data.alias, 1, true)
    this:NotifyTo(npcs.Npc12679Data.alias, 1, true)
    this:NotifyTo(npcs.Npc12720Data.alias, 1, true)
    this:NotifyTo(npcs.Npc12719Data.alias, 1, true)
end

function Quest14037:OnSubFinish1403712(arg1)
    print("OnSubFinish1403712")
end

function Quest14037:OnSubStart1403713(arg1)
    print("OnSubStart1403713")
    actorMgr:CreateActorWithPos("Q14037Trigger10", "Actor/Gadget/Q14037Trigger10", 70900002, 0, points.TPos_Q14037Trigger10.pos, points.TPos_Q14037Trigger10.rot, true, false, 3)
    this:CreateLocalGadget(70294030, "2", {x = -1900.72, y = 243.26, z = 2487.586}, {x = 271.147, y = 106.776, z = 234.085}, 3, nil, nil, false, 0, true)
    this:CreateLocalGadget(70294031, "2", {x = -1900.876, y = 243.227, z = 2487.063}, {x = 333.44, y = 344.659, z = 292.277}, 3, nil, nil, false, 0, true)
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc14309Data.alias)
    questNpcActor:DisableInteeHeadCtrl(true)
    questNpcActor:PlayEmoSync("", "Cs_Emo_NPC_Common/Cs_Emo_NPC_Normal01", "Cs_Emo_NPC_Common/Cs_Emo_NPC_WinkB01", 0, false, true, true)
    local v = this:GetQuestNpcActor(npcs.Npc14116Data.alias)
    v:DisableInteeHeadCtrl(true)
    v:DoFreeStyle(1190, true, nil, true, true, false, true)
    local questNpcActor2 = this:GetQuestNpcActor(npcs.Npc14117Data.alias)
    questNpcActor2:DisableInteeHeadCtrl(true)
    questNpcActor2:DoFreeStyle(1110, true, nil, true, true, false, true)
    local questNpcActor3 = this:GetQuestNpcActor(npcs.Npc1090Data.alias)
    questNpcActor3:DisableInteeHeadCtrl(true)
    questNpcActor3:DoFreeStyle(1280, true, nil, true, true, false, true)
    this:NotifyTo(npcs.Npc4140Data.alias, 1, true)
    this:NotifyTo(npcs.Npc4141Data.alias, 1, true)
    this:NotifyTo(npcs.Npc4139Data.alias, 1, true)
    this:NotifyTo(npcs.Npc4137Data.alias, 1, true)
    this:NotifyTo(npcs.Npc4138Data.alias, 1, true)
    this:NotifyTo(npcs.Npc4136Data.alias, 1, true)
    this:NotifyTo(npcs.Npc4135Data.alias, 1, true)
    this:NotifyTo(npcs.Npc12679Data.alias, 1, true)
    this:NotifyTo(npcs.Npc12720Data.alias, 1, true)
    this:NotifyTo(npcs.Npc12719Data.alias, 1, true)
end

function Quest14037:OnSubFinish1403713(arg1)
    print("OnSubFinish1403713")
    this:ActionSafeCall(function(arg1_2)
        this:RemoveLocalGadget(70294030, "2")
        this:RemoveLocalGadget(70294031, "2")
        this:DestroyQuestNpcActor(npcs.Npc1090Data.alias, 3)
        this:DestroyQuestNpcActor(npcs.Npc14309Data.alias, 3)
        this:DestroyQuestNpcActor(npcs.Npc14116Data.alias, 3)
        this:DestroyQuestNpcActor(npcs.Npc14117Data.alias, 3)
        this:TransmitPlayerWithDialogTextById(arg1, 1, datas.DialogsId, 1, nil, nil)
    end)
end

function Quest14037:OnSubStart1403716(arg1)
    print("OnSubStart1403716")
    actorMgr:CreateActorWithPos("Q14037Trigger5", "Actor/Gadget/Q14037Trigger5", 70900002, 0, points.TPos_Q14037Trigger5.pos, points.TPos_Q14037Trigger5.rot, true, false, 1096)
    this:NotifyTo(npcs.Npc4140Data.alias, 1, true)
    this:NotifyTo(npcs.Npc4141Data.alias, 1, true)
    this:NotifyTo(npcs.Npc4139Data.alias, 1, true)
    this:NotifyTo(npcs.Npc4137Data.alias, 1, true)
    this:NotifyTo(npcs.Npc4138Data.alias, 1, true)
    this:NotifyTo(npcs.Npc4136Data.alias, 1, true)
    this:NotifyTo(npcs.Npc4135Data.alias, 1, true)
    this:NotifyTo(npcs.Npc12679Data.alias, 1, true)
    this:NotifyTo(npcs.Npc12720Data.alias, 1, true)
    this:NotifyTo(npcs.Npc12719Data.alias, 1, true)
end

function Quest14037:OnSubFinish1403716(arg1)
    print("OnSubFinish1403716")
    this:ActionSafeCall(function(arg1)
        this:LightNotifyTo(npcs.Npc4140Data.alias, 0, true)
        this:LightNotifyTo(npcs.Npc4141Data.alias, 0, true)
        this:LightNotifyTo(npcs.Npc4139Data.alias, 0, true)
        this:LightNotifyTo(npcs.Npc4137Data.alias, 0, true)
        this:LightNotifyTo(npcs.Npc4138Data.alias, 0, true)
        this:LightNotifyTo(npcs.Npc4136Data.alias, 0, true)
        this:LightNotifyTo(npcs.Npc4135Data.alias, 0, true)
        this:LightNotifyTo(npcs.Npc12679Data.alias, 0, true)
        this:LightNotifyTo(npcs.Npc12720Data.alias, 0, true)
        this:LightNotifyTo(npcs.Npc12719Data.alias, 0, true)
    end)
end

function Quest14037:OnSubStart1403714(arg1)
    print("OnSubStart1403714")
    this:ActionSafeCall(function(arg1_2)
        actorMgr:CreateActorWithPos("Q14037Trigger9", "Actor/Gadget/Q14037Trigger9", 70900002, 0, points.TPos_Q14037Trigger9.pos, points.TPos_Q14037Trigger9.rot, true, false, 3)
        this:CreateQuestNpc(arg1, npcs.Npc1050Data.id, 0, false, 0)
        this:CreateQuestNpc(arg1, npcs.Npc4169Data.id, 0, false, 0)
        this:CreateQuestNpc(arg1, npcs.Npc14121Data.id, 0, false, 0)
        this:CreateQuestNpc(arg1, npcs.Npc14122Data.id, 0, false, 0)
        this:CreateQuestNpc(arg1, npcs.Npc14258Data.id, 0, false, 0)
        this:CreateQuestNpc(arg1, npcs.Npc14260Data.id, 0, false, 0)
        this:CreateQuestNpc(arg1, npcs.Npc14309Data.id, 0, false, 0)
        local questNpcActor = this:GetQuestNpcActor(npcs.Npc1050Data.alias)
        questNpcActor:DoFreeStyle(1190, true, nil, true, true, false, true)
        questNpcActor:DisableInteeHeadCtrl(true)
        local v = this:GetQuestNpcActor(npcs.Npc4169Data.alias)
        v:DoFreeStyle(1170, true, nil, true, true, false, true)
        v:DisableInteeHeadCtrl(true)
        local questNpcActor2 = this:GetQuestNpcActor(npcs.Npc1090Data.alias)
        questNpcActor2:DoFreeStyle(1190, true, nil, true, true, false, true)
        questNpcActor2:DisableInteeHeadCtrl(true)
        local questNpcActor3 = this:GetQuestNpcActor(npcs.Npc14309Data.alias)
        questNpcActor3:DisableInteeHeadCtrl(true)
        questNpcActor3:PlayEmoSync("", "Cs_Emo_NPC_Common/Cs_Emo_NPC_Normal01", "Cs_Emo_NPC_Common/Cs_Emo_NPC_WinkB01", 0, false, true, true)
        questNpcActor3:LookAt({x = 14.216, y = 1.339, z = 12.47})
        local questNpcActor4 = this:GetQuestNpcActor(npcs.Npc14258Data.alias)
        questNpcActor4:DoFreeStyle(1170, true, nil, true, true, false, true)
        questNpcActor4:DisableInteeHeadCtrl(true)
        local questNpcActor5 = this:GetQuestNpcActor(npcs.Npc14260Data.alias)
        questNpcActor5:DoFreeStyle(1190, true, nil, true, true, false, true)
        questNpcActor5:DisableInteeHeadCtrl(true)
        this:NotifyTo(npcs.Npc4140Data.alias, 1, true)
        this:NotifyTo(npcs.Npc4141Data.alias, 1, true)
        this:NotifyTo(npcs.Npc4139Data.alias, 1, true)
        this:NotifyTo(npcs.Npc4137Data.alias, 1, true)
        this:NotifyTo(npcs.Npc4138Data.alias, 1, true)
        this:NotifyTo(npcs.Npc4136Data.alias, 1, true)
        this:NotifyTo(npcs.Npc4135Data.alias, 1, true)
        this:NotifyTo(npcs.Npc12679Data.alias, 1, true)
        this:NotifyTo(npcs.Npc12720Data.alias, 1, true)
        this:NotifyTo(npcs.Npc12719Data.alias, 1, true)
    end)
end

function Quest14037:OnSubFinish1403714(arg1)
    print("OnSubFinish1403714")
    this:ActionSafeCall(function(arg1)
        this:DestroyQuestNpcActor(npcs.Npc1050Data.alias, 3)
        this:DestroyQuestNpcActor(npcs.Npc4169Data.alias, 3)
        this:DestroyQuestNpcActor(npcs.Npc1090Data.alias, 1096)
        this:DestroyQuestNpcActor(npcs.Npc14309Data.alias, 1096)
        this:DestroyQuestNpcActor(npcs.Npc14258Data.alias, 3)
        this:DestroyQuestNpcActor(npcs.Npc14260Data.alias, 3)
        this:LightNotifyTo(npcs.Npc4140Data.alias, 0, true)
        this:LightNotifyTo(npcs.Npc4141Data.alias, 0, true)
        this:LightNotifyTo(npcs.Npc4139Data.alias, 0, true)
        this:LightNotifyTo(npcs.Npc4137Data.alias, 0, true)
        this:LightNotifyTo(npcs.Npc4138Data.alias, 0, true)
        this:LightNotifyTo(npcs.Npc4136Data.alias, 0, true)
        this:LightNotifyTo(npcs.Npc4135Data.alias, 0, true)
        this:LightNotifyTo(npcs.Npc12679Data.alias, 0, true)
        this:LightNotifyTo(npcs.Npc12720Data.alias, 0, true)
        this:LightNotifyTo(npcs.Npc12719Data.alias, 0, true)
    end)
end

return Quest14037
