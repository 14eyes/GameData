require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest25018 = class("Quest25018", QuestActorProxy)
Quest25018.defaultAlias = "Quest25018"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points
local datas

function Quest25018:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
    datas = clientData.Datas
end

function Quest25018:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["2501801"] = self.OnSubStart2501801,
        ["2501818"] = self.OnSubStart2501818,
        ["2501815"] = self.OnSubStart2501815,
        ["2501802"] = self.OnSubStart2501802,
        ["2501803"] = self.OnSubStart2501803,
        ["2501804"] = self.OnSubStart2501804,
        ["2501805"] = self.OnSubStart2501805,
        ["2501806"] = self.OnSubStart2501806,
        ["2501807"] = self.OnSubStart2501807,
        ["2501816"] = self.OnSubStart2501816,
        ["2501808"] = self.OnSubStart2501808,
        ["2501809"] = self.OnSubStart2501809,
        ["2501817"] = self.OnSubStart2501817,
        ["2501810"] = self.OnSubStart2501810,
        ["2501811"] = self.OnSubStart2501811,
        ["2501812"] = self.OnSubStart2501812,
        ["2501813"] = self.OnSubStart2501813,
        ["2501814"] = self.OnSubStart2501814
    }
end

function Quest25018:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["2501801"] = self.OnSubFinish2501801,
        ["2501818"] = self.OnSubFinish2501818,
        ["2501815"] = self.OnSubFinish2501815,
        ["2501802"] = self.OnSubFinish2501802,
        ["2501803"] = self.OnSubFinish2501803,
        ["2501804"] = self.OnSubFinish2501804,
        ["2501805"] = self.OnSubFinish2501805,
        ["2501806"] = self.OnSubFinish2501806,
        ["2501807"] = self.OnSubFinish2501807,
        ["2501816"] = self.OnSubFinish2501816,
        ["2501808"] = self.OnSubFinish2501808,
        ["2501809"] = self.OnSubFinish2501809,
        ["2501817"] = self.OnSubFinish2501817,
        ["2501810"] = self.OnSubFinish2501810,
        ["2501811"] = self.OnSubFinish2501811,
        ["2501812"] = self.OnSubFinish2501812,
        ["2501813"] = self.OnSubFinish2501813,
        ["2501814"] = self.OnSubFinish2501814
    }
end

function Quest25018:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest25018:Start()
    print("Start")
end

function Quest25018:OnDestroy()
    print("OnDestroy")
end

function Quest25018:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest25018:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest25018:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc5084Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc5083Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc6083Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc6084Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc6101Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc6103Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc6070Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc6106Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc6104Data.alias, 3)
    this:LightNotifyTo(npcs.Npc5084Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc5083Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc6101Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc6106Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc6104Data.alias, 0, true)
    actorMgr:DestroyEntityActor("Q25018Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q25018Trigger1", 3, false)
    actorMgr:DestroyEntityActor("Q25018Trigger2", 3, false)
    actorMgr:DestroyEntityActor("Q25018Trigger3", 3, false)
    actorMgr:DestroyEntityActor("Q25018Trigger4", 3, false)
    actorMgr:DestroyEntityActor("Q25018Trigger5", 3, false)
    actorMgr:DestroyEntityActor("Q25018Trigger6", 3, false)
    actorMgr:DestroyEntityActor("Q25018Trigger7", 3, false)
    actorMgr:DestroyEntityActor("Q25018Trigger8", 3, false)
end

function Quest25018:OnSubStart2501801(arg1)
    print("OnSubStart2501801")
    actorUtils.FinishQuestID(false, 2501801)
end

function Quest25018:OnSubFinish2501801(arg1)
    print("OnSubFinish2501801")
end

function Quest25018:OnSubStart2501818(arg1)
    print("OnSubStart2501818")
    this:CreateQuestNpc(arg1, npcs.Npc5084Data.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc5083Data.id, 0, false, 0)
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc5084Data.alias)
    questNpcActor:DoFreeStyle(1240, true, nil, true, true, false, false)
    questNpcActor:DisableInteeHeadCtrl(true)
    local v = this:GetQuestNpcActor(npcs.Npc5083Data.alias)
    v:DoFreeStyle(1170, true, nil, true, true, false, false)
    v:DisableInteeHeadCtrl(true)
end

function Quest25018:OnSubFinish2501818(arg1)
    print("OnSubFinish2501818")
    this:ActionSafeCall(function(arg1)
        this:ShowBlackScreenWithDialogText(0.5, 1, 0.5, function(arg1)
            this:DestroyQuestNpcActor(npcs.Npc5084Data.alias, 3)
            this:DestroyQuestNpcActor(npcs.Npc5083Data.alias, 3)
            this:NotifyTo(npcs.Npc5084Data.alias, 1, true)
            this:NotifyTo(npcs.Npc5083Data.alias, 1, true)
        end, nil, nil, 0, false, true)
    end)
end

function Quest25018:OnSubStart2501815(arg1)
    print("OnSubStart2501815")
    this:CreateQuestNpc(arg1, npcs.Npc5084Data.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc5083Data.id, 0, false, 0)
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc5084Data.alias)
    questNpcActor:DoFreeStyle(1240, true, nil, true, true, false, false)
    questNpcActor:DisableInteeHeadCtrl(true)
    local v = this:GetQuestNpcActor(npcs.Npc5083Data.alias)
    v:DoFreeStyle(1170, true, nil, true, true, false, false)
    v:DisableInteeHeadCtrl(true)
end

function Quest25018:OnSubFinish2501815(arg1)
    print("OnSubFinish2501815")
    this:ActionSafeCall(function(arg1)
        this:ShowBlackScreenWithDialogText(0.5, 1, 0.5, function(arg1)
            this:DestroyQuestNpcActor(npcs.Npc5084Data.alias, 3)
            this:DestroyQuestNpcActor(npcs.Npc5083Data.alias, 3)
            this:NotifyTo(npcs.Npc5084Data.alias, 1, true)
            this:NotifyTo(npcs.Npc5083Data.alias, 1, true)
        end, nil, nil, 0, false, true)
    end)
end

function Quest25018:OnSubStart2501802(arg1)
    print("OnSubStart2501802")
end

function Quest25018:OnSubFinish2501802(arg1)
    print("OnSubFinish2501802")
end

function Quest25018:OnSubStart2501803(arg1)
    print("OnSubStart2501803")
end

function Quest25018:OnSubFinish2501803(arg1)
    print("OnSubFinish2501803")
end

function Quest25018:OnSubStart2501804(arg1)
    print("OnSubStart2501804")
end

function Quest25018:OnSubFinish2501804(arg1)
    print("OnSubFinish2501804")
end

function Quest25018:OnSubStart2501805(arg1)
    print("OnSubStart2501805")
    this:ActionSafeCall(function(arg1)
        actorMgr:CreateActorWithPos("Q25018Trigger", "Actor/Gadget/Q25018Trigger", 70900002, 0, points.TPos_Q25018Trigger.pos, points.TPos_Q25018Trigger.rot, true, false, 3)
        this:NotifyTo(npcs.Npc5084Data.alias, 1, true)
        this:NotifyTo(npcs.Npc5083Data.alias, 1, true)
    end)
end

function Quest25018:OnSubFinish2501805(arg1)
    print("OnSubFinish2501805")
    this:ActionSafeCall(function(arg1)
        this:DestroyQuestNpcActor(npcs.Npc5084Data.alias, 3)
        this:DestroyQuestNpcActor(npcs.Npc6083Data.alias, 3)
    end)
end

function Quest25018:OnSubStart2501806(arg1)
    print("OnSubStart2501806")
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc6083Data.id, 0, false, 0)
        this:CreateQuestNpc(arg1, npcs.Npc6084Data.id, 0, false, 0)
        local questNpcActor = this:GetQuestNpcActor(npcs.Npc6083Data.alias)
        questNpcActor:DoFreeStyle(1170, true, nil, true, true, false, false)
        questNpcActor:DisableInteeHeadCtrl(true)
        local v = this:GetQuestNpcActor(npcs.Npc6084Data.alias)
        v:DoFreeStyle(1190, true, nil, true, true, false, false)
        v:DisableInteeHeadCtrl(true)
        this:NotifyTo(npcs.Npc5084Data.alias, 1, true)
        this:NotifyTo(npcs.Npc5083Data.alias, 1, true)
    end)
end

function Quest25018:OnSubFinish2501806(arg1)
    print("OnSubFinish2501806")
    this:ActionSafeCall(function(arg1)
        this:DestroyQuestNpcActor(npcs.Npc6083Data.alias, 3)
        this:DestroyQuestNpcActor(npcs.Npc6084Data.alias, 3)
        this:LightNotifyTo(npcs.Npc5084Data.alias, 0, true)
        this:LightNotifyTo(npcs.Npc5083Data.alias, 0, true)
    end)
end

function Quest25018:OnSubStart2501807(arg1)
    print("OnSubStart2501807")
    this:ActionSafeCall(function(arg1)
        actorMgr:CreateActorWithPos("Q25018Trigger1", "Actor/Gadget/Q25018Trigger1", 70900002, 0, points.TPos_Q25018Trigger1.pos, points.TPos_Q25018Trigger1.rot, true, false, 3)
        this:NotifyTo(npcs.Npc5084Data.alias, 1, true)
        this:NotifyTo(npcs.Npc5083Data.alias, 1, true)
    end)
end

function Quest25018:OnSubFinish2501807(arg1)
    print("OnSubFinish2501807")
end

function Quest25018:OnSubStart2501816(arg1)
    print("OnSubStart2501816")
    this:ActionSafeCall(function(arg1)
        actorMgr:CreateActorWithPos("Q25018Trigger2", "Actor/Gadget/Q25018Trigger2", 70900002, 0, {x = -1388.058, y = 146.659, z = 7577.873}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
        this:NotifyTo(npcs.Npc5084Data.alias, 1, true)
        this:NotifyTo(npcs.Npc5083Data.alias, 1, true)
    end)
end

function Quest25018:OnSubFinish2501816(arg1)
    print("OnSubFinish2501816")
    this:ActionSafeCall(function(arg1)
        this:DestroyQuestNpcActor(npcs.Npc5084Data.alias, 3)
        this:DestroyQuestNpcActor(npcs.Npc5083Data.alias, 3)
        this:LightNotifyTo(npcs.Npc5084Data.alias, 0, true)
        this:LightNotifyTo(npcs.Npc5083Data.alias, 0, true)
    end)
end

function Quest25018:OnSubStart2501808(arg1)
    print("OnSubStart2501808")
    this:ActionSafeCall(function(arg1_2)
        actorMgr:CreateActorWithPos("Q25018Trigger3", "Actor/Gadget/Q25018Trigger3", 70900002, 0, points.TPos_Q25018Trigger3.pos, points.TPos_Q25018Trigger3.rot, true, false, 3)
        this:CreateQuestNpc(arg1, npcs.Npc6101Data.id, 0, false, 0)
        this:GetQuestNpcActor(npcs.Npc6101Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
        this:NotifyTo(npcs.Npc5084Data.alias, 1, true)
        this:NotifyTo(npcs.Npc5083Data.alias, 1, true)
    end)
end

function Quest25018:OnSubFinish2501808(arg1)
    print("OnSubFinish2501808")
end

function Quest25018:OnSubStart2501809(arg1)
    print("OnSubStart2501809")
    this:ActionSafeCall(function(arg1)
        this:GetQuestNpcActor(npcs.Npc6101Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
        this:NotifyTo(npcs.Npc5084Data.alias, 1, true)
        this:NotifyTo(npcs.Npc5083Data.alias, 1, true)
    end)
end

function Quest25018:OnSubFinish2501809(arg1)
    print("OnSubFinish2501809")
    this:ActionSafeCall(function(arg1)
        this:SafeDestroyQuestNpc(npcs.Npc6101Data.alias, 3)
    end)
end

function Quest25018:OnSubStart2501817(arg1)
    print("OnSubStart2501817")
    this:ActionSafeCall(function(arg1)
        actorMgr:CreateActorWithPos("Q25018Trigger4", "Actor/Gadget/Q25018Trigger4", 70900002, 0, points.TPos_Q25018Trigger4.pos, points.TPos_Q25018Trigger4.rot, true, false, 3)
        this:NotifyTo(npcs.Npc6101Data.alias, 1, true)
        this:NotifyTo(npcs.Npc5084Data.alias, 1, true)
        this:NotifyTo(npcs.Npc5083Data.alias, 1, true)
    end)
end

function Quest25018:OnSubFinish2501817(arg1)
    print("OnSubFinish2501817")
    this:ActionSafeCall(function(arg1)
        this:SafeDestroyQuestNpc(npcs.Npc6101Data.alias, 3)
        this:LightNotifyTo(npcs.Npc6101Data.alias, 0, true)
        this:LightNotifyTo(npcs.Npc5084Data.alias, 0, true)
        this:LightNotifyTo(npcs.Npc5083Data.alias, 0, true)
    end)
end

function Quest25018:OnSubStart2501810(arg1)
    print("OnSubStart2501810")
    this:ActionSafeCall(function(arg1)
        actorMgr:CreateActorWithPos("Q25018Trigger5", "Actor/Gadget/Q25018Trigger5", 70900002, 0, points.TPos_Q25018Trigger5.pos, points.TPos_Q25018Trigger5.rot, true, false, 3)
        this:NotifyTo(npcs.Npc5084Data.alias, 1, true)
        this:NotifyTo(npcs.Npc5083Data.alias, 1, true)
    end)
end

function Quest25018:OnSubFinish2501810(arg1)
    print("OnSubFinish2501810")
    this:ActionSafeCall(function(arg1)
        this:DestroyQuestNpcActor(npcs.Npc5084Data.alias, 3)
        this:DestroyQuestNpcActor(npcs.Npc5083Data.alias, 3)
    end)
end

function Quest25018:OnSubStart2501811(arg1)
    print("OnSubStart2501811")
    this:ActionSafeCall(function(arg1_2)
        actorMgr:CreateActorWithPos("Q25018Trigger6", "Actor/Gadget/Q25018Trigger6", 70900002, 0, points.TPos_Q25018Trigger6.pos, points.TPos_Q25018Trigger6.rot, true, false, 3)
        this:CreateQuestNpc(arg1, npcs.Npc6103Data.id, 0, false, 0)
        this:NotifyTo(npcs.Npc6106Data.alias, 1, true)
        this:NotifyTo(npcs.Npc6104Data.alias, 1, true)
        this:NotifyTo(npcs.Npc5084Data.alias, 1, true)
        this:NotifyTo(npcs.Npc5083Data.alias, 1, true)
    end)
end

function Quest25018:OnSubFinish2501811(arg1)
    print("OnSubFinish2501811")
    this:ActionSafeCall(function(arg1)
        this:SafeDestroyQuestNpc(npcs.Npc6103Data.alias, 3)
        this:LightNotifyTo(npcs.Npc6106Data.alias, 0, true)
        this:LightNotifyTo(npcs.Npc6104Data.alias, 0, true)
        this:LightNotifyTo(npcs.Npc5084Data.alias, 0, true)
        this:LightNotifyTo(npcs.Npc5083Data.alias, 0, true)
    end)
end

function Quest25018:OnSubStart2501812(arg1)
    print("OnSubStart2501812")
    this:ActionSafeCall(function(arg1)
        actorMgr:CreateActorWithPos("Q25018Trigger7", "Actor/Gadget/Q25018Trigger7", 70900002, 0, points.TPos_Q25018Trigger7.pos, points.TPos_Q25018Trigger7.rot, true, false, 3)
        this:NotifyTo(npcs.Npc5084Data.alias, 1, true)
        this:NotifyTo(npcs.Npc5083Data.alias, 1, true)
    end)
end

function Quest25018:OnSubFinish2501812(arg1)
    print("OnSubFinish2501812")
    this:ActionSafeCall(function(arg1)
        this:DestroyQuestNpcActor(npcs.Npc5084Data.alias, 3)
        this:DestroyQuestNpcActor(npcs.Npc5083Data.alias, 3)
        this:LightNotifyTo(npcs.Npc5084Data.alias, 0, true)
        this:LightNotifyTo(npcs.Npc5083Data.alias, 0, true)
    end)
end

function Quest25018:OnSubStart2501813(arg1)
    print("OnSubStart2501813")
    this:ActionSafeCall(function(arg1_2)
        actorMgr:CreateActorWithPos("Q25018Trigger8", "Actor/Gadget/Q25018Trigger8", 70900002, 0, {x = -2736.285, y = 209.0, z = 9049.273}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
        this:CreateQuestNpc(arg1, npcs.Npc6070Data.id, 0, false, 0)
        this:GetQuestNpcActor(npcs.Npc6070Data.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
        this:NotifyTo(npcs.Npc5084Data.alias, 1, true)
        this:NotifyTo(npcs.Npc5083Data.alias, 1, true)
    end)
end

function Quest25018:OnSubFinish2501813(arg1)
    print("OnSubFinish2501813")
    this:QuestNarratorTask(datas.Narrator_2501801)
end

function Quest25018:OnSubStart2501814(arg1)
    print("OnSubStart2501814")
    this:ActionSafeCall(function(arg1)
        this:GetQuestNpcActor(npcs.Npc6070Data.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
        this:NotifyTo(npcs.Npc5084Data.alias, 1, true)
        this:NotifyTo(npcs.Npc5083Data.alias, 1, true)
    end)
end

function Quest25018:OnSubFinish2501814(arg1)
    print("OnSubFinish2501814")
    this:ActionSafeCall(function(arg1)
        this:DestroyQuestNpcActor(npcs.Npc6070Data.alias, 3)
        this:ClearNarratorTask()
        this:StopNarrator()
        this:LightNotifyTo(npcs.Npc5084Data.alias, 0, true)
        this:LightNotifyTo(npcs.Npc5083Data.alias, 0, true)
    end)
end

return Quest25018
