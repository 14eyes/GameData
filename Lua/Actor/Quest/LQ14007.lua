require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest14007 = class("Quest14007", QuestActorProxy)
Quest14007.defaultAlias = "Quest14007"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points
local datas

function Quest14007:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
    datas = clientData.Datas
end

function Quest14007:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1400701"] = self.OnSubStart1400701,
        ["1400702"] = self.OnSubStart1400702,
        ["1400703"] = self.OnSubStart1400703,
        ["1400704"] = self.OnSubStart1400704,
        ["1400719"] = self.OnSubStart1400719,
        ["1400705"] = self.OnSubStart1400705,
        ["1400714"] = self.OnSubStart1400714,
        ["1400715"] = self.OnSubStart1400715,
        ["1400706"] = self.OnSubStart1400706,
        ["1400707"] = self.OnSubStart1400707,
        ["1400708"] = self.OnSubStart1400708,
        ["1400709"] = self.OnSubStart1400709,
        ["1400710"] = self.OnSubStart1400710,
        ["1400717"] = self.OnSubStart1400717,
        ["1400718"] = self.OnSubStart1400718,
        ["1400711"] = self.OnSubStart1400711,
        ["1400712"] = self.OnSubStart1400712,
        ["1400713"] = self.OnSubStart1400713,
        ["1400716"] = self.OnSubStart1400716
    }
end

function Quest14007:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1400701"] = self.OnSubFinish1400701,
        ["1400702"] = self.OnSubFinish1400702,
        ["1400703"] = self.OnSubFinish1400703,
        ["1400704"] = self.OnSubFinish1400704,
        ["1400719"] = self.OnSubFinish1400719,
        ["1400705"] = self.OnSubFinish1400705,
        ["1400714"] = self.OnSubFinish1400714,
        ["1400715"] = self.OnSubFinish1400715,
        ["1400706"] = self.OnSubFinish1400706,
        ["1400707"] = self.OnSubFinish1400707,
        ["1400708"] = self.OnSubFinish1400708,
        ["1400709"] = self.OnSubFinish1400709,
        ["1400710"] = self.OnSubFinish1400710,
        ["1400717"] = self.OnSubFinish1400717,
        ["1400718"] = self.OnSubFinish1400718,
        ["1400711"] = self.OnSubFinish1400711,
        ["1400712"] = self.OnSubFinish1400712,
        ["1400713"] = self.OnSubFinish1400713,
        ["1400716"] = self.OnSubFinish1400716
    }
end

function Quest14007:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["1400719"] = self.OnSubFailed1400719}
end

function Quest14007:Start()
    print("Start")
end

function Quest14007:OnDestroy()
    print("OnDestroy")
end

function Quest14007:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest14007:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest14007:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest14007:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1 then
        this:ActionSafeCall(function(arg1)
            this:GetQuestNpcActor(npcs.Npc5038Data.alias):DisableInteeHeadCtrl(true)
            local questNpcActor = this:GetQuestNpcActor(npcs.Npc5039Data.alias)
            questNpcActor:DisableInteeHeadCtrl(true)
            questNpcActor:DoFreeStyle(1170, true, nil, true, true, false, false)
        end)
    elseif arg1 == 2 then
        this:ActionSafeCall(function(arg1)
            local questNpcActor = this:GetQuestNpcActor(npcs.Npc13503Data.alias)
            questNpcActor:DisableInteeHeadCtrl(true)
            questNpcActor:LookAt({x = 3541.564, y = 447.7264, z = 4433.901})
            local v = this:GetQuestNpcActor(npcs.Npc5037Data.alias)
            v:DisableInteeHeadCtrl(true)
            v:DoFreeStyle(1170, true, nil, true, true, false, true)
            v:LookAt({x = 3541.961, y = 447.298, z = 4434.613})
        end)
    elseif arg1 == 3 then
        this:ActionSafeCall(function(arg1)
            local questNpcActor = this:GetQuestNpcActor(npcs.Npc1077Data.alias)
            questNpcActor:DisableInteeHeadCtrl(true)
            questNpcActor:DoFreeStyle(1220, true, nil, true, true, false, true)
            questNpcActor:LookAt({x = 3541.227, y = 446.9355, z = 4435.938})
            local v = this:GetQuestNpcActor(npcs.Npc13503Data.alias)
            v:DisableInteeHeadCtrl(true)
            v:LookAt({x = 3540.329, y = 447.448, z = 4435.753})
        end)
    end
end

function Quest14007:OnSubStart1400701(arg1)
    print("OnSubStart1400701")
    if sceneData.currSceneID == 1083 then
        self:FinishQuestID(false, 1400701)
    end

    if self:GetQuestVar(1400701, 0) == 0 then
        this:NarratorOnlyTaskByData(datas.Narrator_1400701, function(arg1)
            arg1:SetQuestVarByMainId(0, 1)
        end, 14007)
    end

    this:CreateQuestNpc(arg1, npcs.Npc1076Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc5087Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc1076Data.alias):DisableInteeHeadCtrl(true)
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc5087Data.alias)
    questNpcActor:DoFreeStyle(1190, true, nil, true, true, false, false)
    questNpcActor:DisableInteeHeadCtrl(true)
end

function Quest14007:OnSubFinish1400701(arg1)
    print("OnSubFinish1400701")
end

function Quest14007:OnSubStart1400702(arg1)
    print("OnSubStart1400702")
    this:GetQuestNpcActor(npcs.Npc1076Data.alias):DisableInteeHeadCtrl(true)
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc5087Data.alias)
    questNpcActor:DoFreeStyle(1190, true, nil, true, true, false, false)
    questNpcActor:DisableInteeHeadCtrl(true)
    actorMgr:CreateActorWithPos("Q14007Trigger2", "Actor/Gadget/Q14007Trigger2", 70900002, 0, points.TPos_Q14007Trigger2.pos, points.TPos_Q14007Trigger2.rot, true, false, 1083)
end

function Quest14007:OnSubFinish1400702(arg1)
    print("OnSubFinish1400702")
    this:ActionSafeCall(function(arg1)
        this:GetQuestNpcActor(npcs.Npc1076Data.alias):DisableInteeHeadCtrl(false)
        this:GetQuestNpcActor(npcs.Npc5087Data.alias):DisableInteeHeadCtrl(false)
        this:DestroyQuestNpcActor(npcs.Npc5087Data.alias, 1083)
        this:DestroyQuestNpcActor(npcs.Npc1076Data.alias, 1083)
        this:NarratorOnlyTaskByData(datas.Narrator_1400702, nil, 14007)
    end)
end

function Quest14007:OnSubStart1400703(arg1)
    print("OnSubStart1400703")
    this:ActionSafeCall(function(arg1_2)
        actorMgr:CreateActorWithPos("Q14007Trigger", "Actor/Gadget/Q14007Trigger", 70900002, 0, points.TPos_Q14007Trigger.pos, points.TPos_Q14007Trigger.rot, true, false, 3)
        actorMgr:CreateActorWithPos("Q14007Trigger3", "Actor/Gadget/Q14007Trigger3", 70900002, 0, points.TPos_Q14007Trigger3.pos, points.TPos_Q14007Trigger3.rot, true, false, 3)
        this:CreateQuestNpc(arg1, npcs.Npc13503Data.id, 0)
        this:CreateQuestNpc(arg1, npcs.Npc5038Data.id, 0)
        this:CreateQuestNpc(arg1, npcs.Npc5039Data.id, 0)
        this:GetQuestNpcActor(npcs.Npc5039Data.alias):DoFreeStyle(1170, true, nil, true, true, false, false)
        this:NotifyTo(npcs.Npc5040Data.alias, 1, true)
        this:NotifyTo(npcs.Npc5075Data.alias, 1, true)
        if this:GetQuestGlobalVar(402501) == 0 then
            this:CreateLocalGadget(70711239, "2", {x = -51.265, y = 1.125, z = -14.637}, {x = 0.0, y = 259.256, z = 0.0}, 1083, nil, nil, false)
            this:CreateQuestNpc(arg1, npcs.Npc13625Data.id, 0)
        end
    end)
end

function Quest14007:OnSubFinish1400703(arg1)
    print("OnSubFinish1400703")
    this:ActionSafeCall(function(arg1)
        this:DestroyQuestNpcActor(npcs.Npc5087Data.alias, 1083)
        actorMgr:DestroyEntityActor("Q14007Trigger", 3, false)
        if this:GetQuestGlobalVar(402501) == 0 then
            this:DestroyQuestNpcActor(npcs.Npc13625Data.alias, 1083)
            this:RemoveLocalGadget(70711239, "2")
        end
    end)
end

function Quest14007:OnSubStart1400704(arg1)
    print("OnSubStart1400704")
    this:ActionSafeCall(function(arg1_2)
        actorMgr:CreateActorWithPos("Q14007Trigger10", "Actor/Gadget/Q14007Trigger10", 70900002, 0, points.TPos_Q14007Trigger10.pos, points.TPos_Q14007Trigger10.rot, true, false, 3)
        this:NotifyTo(npcs.Npc5040Data.alias, 1, true)
        this:NotifyTo(npcs.Npc5075Data.alias, 1, true)
        this:GetQuestNpcActor(npcs.Npc5038Data.alias):DisableInteeHeadCtrl(true)
        local questNpcActor = this:GetQuestNpcActor(npcs.Npc5039Data.alias)
        questNpcActor:DisableInteeHeadCtrl(true)
        questNpcActor:DoFreeStyle(1170, true, nil, true, true, false, false)
        this:CreateQuestNpc(arg1, npcs.Npc5037Data.id, 0)
        this:CreateQuestNpc(arg1, npcs.Npc13503Data.id, 0)
    end)
end

function Quest14007:OnSubFinish1400704(arg1)
    print("OnSubFinish1400704")
end

function Quest14007:OnSubStart1400719(arg1)
    print("OnSubStart1400719")
    actorMgr:CreateActorWithPos("Q14007Trigger4", "Actor/Gadget/Q14007Trigger4", 70900002, 0, points.TPos_Q14007Trigger4.pos, points.TPos_Q14007Trigger4.rot, true, false, 3)
    actorMgr:CreateActorWithPos("Q14007Trigger11", "Actor/Gadget/Q14007Trigger11", 70900002, 0, {x = 3514.813, y = 452.932, z = 4429.09}, {x = 0.0, y = 354.389, z = 0.0}, true, false, 3)
    this:NotifyTo(npcs.Npc5040Data.alias, 1, true)
    this:NotifyTo(npcs.Npc5075Data.alias, 1, true)
    this:GetQuestNpcActor(npcs.Npc5038Data.alias):DisableInteeHeadCtrl(true)
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc5039Data.alias)
    questNpcActor:DisableInteeHeadCtrl(true)
    questNpcActor:DoFreeStyle(1170, true, nil, true, true, false, false)
    this:ClearNarratorTask()
    this:StopNarrator()
end

function Quest14007:OnSubFinish1400719(arg1)
    print("OnSubFinish1400719")
    this:ClearNarratorTask()
    this:StopNarrator()
end

function Quest14007:OnSubFailed1400719(arg1)
    print("OnSubFailed1400719")
    this:ClearNarratorTask()
    this:FinishTaskByCmdType(ActorCommandType.QUEST_MOVE_PAUSE_TASK)
    this:FinishTaskByCmdType(ActorCommandType.QUEST_NARRATOR_TASK)
    this:StopNarrator()
end

function Quest14007:OnSubStart1400705(arg1)
    print("OnSubStart1400705")
    actorMgr:CreateActorWithPos("Q14007Trigger1", "Actor/Gadget/Q14007Trigger1", 70900002, 0, points.TPos_Q14007Trigger1.pos, points.TPos_Q14007Trigger1.rot, true, false, 3)
    this:NotifyTo(npcs.Npc5029Data.alias, 1, true)
    this:NotifyTo(npcs.Npc5040Data.alias, 1, true)
    this:NotifyTo(npcs.Npc5075Data.alias, 1, true)
    this:GetQuestNpcActor(npcs.Npc5038Data.alias):DisableInteeHeadCtrl(true)
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc5039Data.alias)
    questNpcActor:DisableInteeHeadCtrl(true)
    questNpcActor:DoFreeStyle(1170, true, nil, true, true, false, false)
end

function Quest14007:OnSubFinish1400705(arg1)
    print("OnSubFinish1400705")
    this:ActionSafeCall(function(arg1)
        this:ClearNarratorTask()
        this:StopNarrator()
        actorMgr:DestroyEntityActor("Q14007Trigger11", 3, false)
    end)
end

function Quest14007:OnSubStart1400714(arg1)
    print("OnSubStart1400714")
    this:ActionSafeCall(function(arg1_2)
        this:NotifyTo(npcs.Npc5029Data.alias, 1, true)
        this:NotifyTo(npcs.Npc5040Data.alias, 1, true)
        this:NotifyTo(npcs.Npc5075Data.alias, 1, true)
        this:CreateQuestNpc(arg1, npcs.Npc1070Data.id, 0)
        local questNpcActor = this:GetQuestNpcActor(npcs.Npc1070Data.alias)
        questNpcActor:DoFreeStyle(1190, true, nil, true, true, false, false)
        questNpcActor:DisableInteeHeadCtrl(true)
        local v = this:GetQuestNpcActor(npcs.Npc13503Data.alias)
        v:DisableInteeHeadCtrl(true)
        v:LookAt({x = 3541.564, y = 447.7264, z = 4433.901})
        local questNpcActor2 = this:GetQuestNpcActor(npcs.Npc5037Data.alias)
        questNpcActor2:DisableInteeHeadCtrl(true)
        questNpcActor2:DoFreeStyle(1170, true, nil, true, true, false, true)
        questNpcActor2:LookAt({x = 3541.961, y = 447.298, z = 4434.613})
        this:GetQuestNpcActor(npcs.Npc5038Data.alias):DisableInteeHeadCtrl(true)
        local questNpcActor3 = this:GetQuestNpcActor(npcs.Npc5039Data.alias)
        questNpcActor3:DisableInteeHeadCtrl(true)
        questNpcActor3:DoFreeStyle(1170, true, nil, true, true, false, false)
        actorMgr:CreateActorWithPos("Q14007Trigger9", "Actor/Gadget/Q14007Trigger9", 70900002, 0, points.TPos_Q14007Trigger9.pos, points.TPos_Q14007Trigger9.rot, true, false, 3)
    end)
end

function Quest14007:OnSubFinish1400714(arg1)
    print("OnSubFinish1400714")
    this:ActionSafeCall(function(arg1)
        this:GetQuestNpcActor(npcs.Npc1070Data.alias):DisableInteeHeadCtrl(false)
        this:DestroyQuestNpcActor(npcs.Npc1070Data.alias, 3)
    end)
end

function Quest14007:OnSubStart1400715(arg1)
    print("OnSubStart1400715")
    this:ActionSafeCall(function(arg1_2)
        this:NotifyTo(npcs.Npc5029Data.alias, 1, true)
        this:NotifyTo(npcs.Npc5040Data.alias, 1, true)
        this:NotifyTo(npcs.Npc5075Data.alias, 1, true)
        this:CreateQuestNpc(arg1, npcs.Npc1077Data.id, 0)
        local questNpcActor = this:GetQuestNpcActor(npcs.Npc1077Data.alias)
        questNpcActor:DisableInteeHeadCtrl(true)
        questNpcActor:DoFreeStyle(1120, true, nil, true, true, false, false)
        local v = this:GetQuestNpcActor(npcs.Npc5037Data.alias)
        v:DisableInteeHeadCtrl(true)
        v:DoFreeStyle(1170, true, nil, true, true, false, false)
        local questNpcActor2 = this:GetQuestNpcActor(npcs.Npc13503Data.alias)
        questNpcActor2:DisableInteeHeadCtrl(true)
        questNpcActor2:LookAt({x = 3541.564, y = 447.7264, z = 4433.901})
        this:GetQuestNpcActor(npcs.Npc5038Data.alias):DisableInteeHeadCtrl(true)
        local questNpcActor3 = this:GetQuestNpcActor(npcs.Npc5039Data.alias)
        questNpcActor3:DisableInteeHeadCtrl(true)
        questNpcActor3:DoFreeStyle(1170, true, nil, true, true, false, false)
        actorMgr:CreateActorWithPos("Q14007Trigger6", "Actor/Gadget/Q14007Trigger6", 70900002, 0, points.TPos_Q14007Trigger6.pos, points.TPos_Q14007Trigger6.rot, true, false, 3)
    end)
end

function Quest14007:OnSubFinish1400715(arg1)
    print("OnSubFinish1400715")
    this:ActionSafeCall(function(arg1)
        this:GetQuestNpcActor(npcs.Npc5037Data.alias):DisableInteeHeadCtrl(false)
        this:DestroyQuestNpcActor(npcs.Npc5037Data.alias, 3)
    end)
end

function Quest14007:OnSubStart1400706(arg1)
    print("OnSubStart1400706")
    this:ActionSafeCall(function(arg1_2)
        this:NotifyTo(npcs.Npc5029Data.alias, 1, true)
        this:NotifyTo(npcs.Npc5040Data.alias, 1, true)
        this:NotifyTo(npcs.Npc5075Data.alias, 1, true)
        this:CreateQuestNpc(arg1, npcs.Npc1076Data.id, 0)
        local questNpcActor = this:GetQuestNpcActor(npcs.Npc1077Data.alias)
        questNpcActor:DisableInteeHeadCtrl(true)
        questNpcActor:DoFreeStyle(1220, true, nil, true, true, false, true)
        questNpcActor:LookAt({x = 3541.227, y = 446.9355, z = 4435.938})
        local v = this:GetQuestNpcActor(npcs.Npc13503Data.alias)
        v:DisableInteeHeadCtrl(true)
        v:LookAt({x = 3540.329, y = 447.448, z = 4435.753})
        this:GetQuestNpcActor(npcs.Npc5038Data.alias):DisableInteeHeadCtrl(true)
        local questNpcActor2 = this:GetQuestNpcActor(npcs.Npc5039Data.alias)
        questNpcActor2:DisableInteeHeadCtrl(true)
        questNpcActor2:DoFreeStyle(1170, true, nil, true, true, false, false)
        if sceneData.currSceneID == 1083 then
            arg1_2:FinishQuestID(false, 1400706)
        end
    end)
end

function Quest14007:OnSubFinish1400706(arg1)
    print("OnSubFinish1400706")
    this:LightNotifyTo(npcs.Npc5029Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc5040Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc5075Data.alias, 0, true)
    this:GetQuestNpcActor(npcs.Npc5038Data.alias):DisableInteeHeadCtrl(false)
    this:GetQuestNpcActor(npcs.Npc5039Data.alias):DisableInteeHeadCtrl(false)
    this:GetQuestNpcActor(npcs.Npc13503Data.alias):DisableInteeHeadCtrl(false)
    this:GetQuestNpcActor(npcs.Npc1077Data.alias):DisableInteeHeadCtrl(false)
    this:DestroyQuestNpcActor(npcs.Npc13503Data.alias, 3)
    this:DestroyQuestNpcActor(npcs.Npc5038Data.alias, 3)
    this:DestroyQuestNpcActor(npcs.Npc5039Data.alias, 3)
    this:DestroyQuestNpcActor(npcs.Npc1077Data.alias, 3)
end

function Quest14007:OnSubStart1400707(arg1)
    print("OnSubStart1400707")
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc1076Data.alias)
    questNpcActor:DisableInteeHeadCtrl(true)
    questNpcActor:DoFreeStyle(1190, true, nil, true, true, false, true)
    this:CreateLocalGadget(70711241, "1", {x = -54.56, y = 1.499, z = -14.57}, {x = 340.35, y = 101.203, z = 0.792}, 1083, nil, nil, false)
    this:CreateLocalGadget(70711240, "1", {x = -54.902, y = 1.781, z = -17.422}, {x = 0.0, y = 82.927, z = 0.0}, 1083, nil, nil, false)
    actorMgr:CreateActorWithPos("Q14007Trigger7", "Actor/Gadget/Q14007Trigger7", 70900002, 0, points.TPos_Q14007Trigger7.pos, points.TPos_Q14007Trigger7.rot, true, false, 1083)
end

function Quest14007:OnSubFinish1400707(arg1)
    print("OnSubFinish1400707")
    this:RemoveLocalGadget(70711241, "1")
    this:RemoveLocalGadget(70711240, "1")
end

function Quest14007:OnSubStart1400708(arg1)
    print("OnSubStart1400708")
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc1076Data.alias)
    questNpcActor:DisableInteeHeadCtrl(true)
    questNpcActor:DoFreeStyle(1190, true, nil, true, true, false, true)
end

function Quest14007:OnSubFinish1400708(arg1)
    print("OnSubFinish1400708")
end

function Quest14007:OnSubStart1400709(arg1)
    print("OnSubStart1400709")
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc1076Data.alias)
    questNpcActor:DisableInteeHeadCtrl(true)
    questNpcActor:DoFreeStyle(1190, true, nil, true, true, false, true)
end

function Quest14007:OnSubFinish1400709(arg1)
    print("OnSubFinish1400709")
end

function Quest14007:OnSubStart1400710(arg1)
    print("OnSubStart1400710")
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc1076Data.alias)
    questNpcActor:DisableInteeHeadCtrl(true)
    questNpcActor:DoFreeStyle(1190, true, nil, true, true, false, true)
end

function Quest14007:OnSubFinish1400710(arg1)
    print("OnSubFinish1400710")
end

function Quest14007:OnSubStart1400717(arg1)
    print("OnSubStart1400717")
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc1076Data.alias)
    questNpcActor:DisableInteeHeadCtrl(true)
    questNpcActor:DoFreeStyle(1190, true, nil, true, true, false, true)
end

function Quest14007:OnSubFinish1400717(arg1)
    print("OnSubFinish1400717")
end

function Quest14007:OnSubStart1400718(arg1)
    print("OnSubStart1400718")
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc1076Data.alias)
    questNpcActor:DisableInteeHeadCtrl(true)
    questNpcActor:DoFreeStyle(1190, true, nil, true, true, false, true)
end

function Quest14007:OnSubFinish1400718(arg1)
    print("OnSubFinish1400718")
end

function Quest14007:OnSubStart1400711(arg1)
    print("OnSubStart1400711")
end

function Quest14007:OnSubFinish1400711(arg1)
    print("OnSubFinish1400711")
end

function Quest14007:OnSubStart1400712(arg1)
    print("OnSubStart1400712")
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc1076Data.alias)
    questNpcActor:DisableInteeHeadCtrl(true)
    questNpcActor:DoFreeStyle(1190, true, nil, true, true, false, true)
    this:CreateLocalGadget(70711241, "2", {x = -54.563, y = 1.499, z = -16.875}, {x = 340.338, y = 102.398, z = 0.39}, 1083, nil, nil, false)
    this:CreateLocalGadget(70711240, "2", {x = -54.623, y = 1.556, z = -14.539}, {x = 0.0, y = 77.772, z = 0.0}, 1083, nil, nil, false)
end

function Quest14007:OnSubFinish1400712(arg1)
    print("OnSubFinish1400712")
end

function Quest14007:OnSubStart1400713(arg1)
    print("OnSubStart1400713")
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc1076Data.alias)
    questNpcActor:DisableInteeHeadCtrl(true)
    questNpcActor:DoFreeStyle(1190, true, nil, true, true, false, true)
    this:CreateLocalGadget(70711241, "2", {x = -54.563, y = 1.499, z = -16.875}, {x = 340.338, y = 102.398, z = 0.39}, 1083, nil, nil, false)
    this:CreateLocalGadget(70711240, "2", {x = -54.623, y = 1.556, z = -14.539}, {x = 0.0, y = 77.772, z = 0.0}, 1083, nil, nil, false)
    actorMgr:CreateActorWithPos("Q14007Trigger8", "Actor/Gadget/Q14007Trigger8", 70900002, 0, points.TPos_Q14007Trigger8.pos, points.TPos_Q14007Trigger8.rot, true, false, 1083)
end

function Quest14007:OnSubFinish1400713(arg1)
    print("OnSubFinish1400713")
    this:ActionSafeCall(function(arg1)
        this:GetQuestNpcActor(npcs.Npc1076Data.alias):DisableInteeHeadCtrl(false)
        this:DestroyQuestNpcActor(npcs.Npc1076Data.alias, 3)
        this:RemoveLocalGadget(70711241, "2")
        this:RemoveLocalGadget(70711240, "2")
    end)
end

function Quest14007:OnSubStart1400716(arg1)
    print("OnSubStart1400716")
end

function Quest14007:OnSubFinish1400716(arg1)
    print("OnSubFinish1400716")
end

return Quest14007
