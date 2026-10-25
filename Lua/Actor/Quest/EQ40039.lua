require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40039 = class("Quest40039", QuestActorProxy)
Quest40039.defaultAlias = "Quest40039"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest40039:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest40039:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4003901"] = self.OnSubStart4003901,
        ["4003902"] = self.OnSubStart4003902,
        ["4003903"] = self.OnSubStart4003903,
        ["4003904"] = self.OnSubStart4003904,
        ["4003922"] = self.OnSubStart4003922,
        ["4003905"] = self.OnSubStart4003905,
        ["4003917"] = self.OnSubStart4003917,
        ["4003910"] = self.OnSubStart4003910,
        ["4003915"] = self.OnSubStart4003915,
        ["4003906"] = self.OnSubStart4003906,
        ["4003907"] = self.OnSubStart4003907,
        ["4003921"] = self.OnSubStart4003921,
        ["4003908"] = self.OnSubStart4003908,
        ["4003916"] = self.OnSubStart4003916,
        ["4003923"] = self.OnSubStart4003923,
        ["4003918"] = self.OnSubStart4003918,
        ["4003909"] = self.OnSubStart4003909,
        ["4003919"] = self.OnSubStart4003919,
        ["4003920"] = self.OnSubStart4003920,
        ["4003911"] = self.OnSubStart4003911,
        ["4003913"] = self.OnSubStart4003913,
        ["4003924"] = self.OnSubStart4003924,
        ["4003925"] = self.OnSubStart4003925,
        ["4003914"] = self.OnSubStart4003914,
        ["4003912"] = self.OnSubStart4003912
    }
end

function Quest40039:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4003901"] = self.OnSubFinish4003901,
        ["4003902"] = self.OnSubFinish4003902,
        ["4003903"] = self.OnSubFinish4003903,
        ["4003904"] = self.OnSubFinish4003904,
        ["4003922"] = self.OnSubFinish4003922,
        ["4003905"] = self.OnSubFinish4003905,
        ["4003917"] = self.OnSubFinish4003917,
        ["4003910"] = self.OnSubFinish4003910,
        ["4003915"] = self.OnSubFinish4003915,
        ["4003906"] = self.OnSubFinish4003906,
        ["4003907"] = self.OnSubFinish4003907,
        ["4003921"] = self.OnSubFinish4003921,
        ["4003908"] = self.OnSubFinish4003908,
        ["4003916"] = self.OnSubFinish4003916,
        ["4003923"] = self.OnSubFinish4003923,
        ["4003918"] = self.OnSubFinish4003918,
        ["4003909"] = self.OnSubFinish4003909,
        ["4003919"] = self.OnSubFinish4003919,
        ["4003920"] = self.OnSubFinish4003920,
        ["4003911"] = self.OnSubFinish4003911,
        ["4003913"] = self.OnSubFinish4003913,
        ["4003924"] = self.OnSubFinish4003924,
        ["4003925"] = self.OnSubFinish4003925,
        ["4003914"] = self.OnSubFinish4003914,
        ["4003912"] = self.OnSubFinish4003912
    }
end

function Quest40039:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["4003901"] = self.OnSubFailed4003901,
        ["4003902"] = self.OnSubFailed4003902,
        ["4003903"] = self.OnSubFailed4003903,
        ["4003904"] = self.OnSubFailed4003904,
        ["4003905"] = self.OnSubFailed4003905,
        ["4003910"] = self.OnSubFailed4003910,
        ["4003915"] = self.OnSubFailed4003915,
        ["4003906"] = self.OnSubFailed4003906,
        ["4003907"] = self.OnSubFailed4003907,
        ["4003908"] = self.OnSubFailed4003908,
        ["4003918"] = self.OnSubFailed4003918,
        ["4003914"] = self.OnSubFailed4003914,
        ["4003912"] = self.OnSubFailed4003912
    }
end

function Quest40039:Start()
    print("Start")
end

function Quest40039:OnDestroy()
    print("OnDestroy")
end

function Quest40039:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest40039:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest40039:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc10211Data.alias, 1057)
    self:SafeDestroyQuestNpc(npcs.Npc1031Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc30086Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc30087Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1042Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc30101Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc30109Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc30111Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc30134Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc30135Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc30136Data.alias, 3)
    actorMgr:DestroyEntityActor("Q40039Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q40039Trigger1", 3, false)
    actorMgr:DestroyEntityActor("Q40039Trigger2", 3, false)
    actorMgr:DestroyEntityActor("Q40039Trigger3", 3, false)
    actorMgr:DestroyEntityActor("Q40039Trigger4", 3, false)
    actorMgr:DestroyEntityActor("Q40039Trigger5", 3, false)
    actorMgr:DestroyEntityActor("Q40039Trigger6", 3, false)
    actorMgr:DestroyEntityActor("Q40039Trigger8", 3, false)
    actorMgr:DestroyEntityActor("Q40039Trigger10", 3, false)
    self:LightNotifyTo(npcs.Npc2433Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc2434Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc2437Data.alias, 0, true)
end

function Quest40039:NpcCreateWithBlackscreenInteraction(arg1, arg2, arg3, arg4)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, arg2, arg3)
        arg1_2:RequestInteraction(arg4)
    end)
end

function Quest40039:OnSubStart4003901(arg1)
    print("OnSubStart4003901")
    if sceneData.currSceneID == 1057 then
        self:FinishQuestID(false, 4003901)
    end
end

function Quest40039:OnSubFinish4003901(arg1)
    print("OnSubFinish4003901")
end

function Quest40039:OnSubFailed4003901(arg1)
    print("OnSubFailed4003901")
end

function Quest40039:OnSubStart4003902(arg1)
    print("OnSubStart4003902")
    self:CreateQuestNpc(arg1, npcs.Npc10211Data.id, 0)
    self:GetQuestNpcActor(npcs.Npc10211Data.alias):DoFreeStyle(1190, true, nil, true, true, false)
    actorMgr:CreateActorWithPos("Q40039Trigger", "Actor/Gadget/Q40039Trigger", 70900002, 0, sceneData:GetDummyPoint(1057, "Q4003901_N10211").pos, sceneData:GetDummyPoint(1057, "Q4003901_N10211").rot, true, false, 1057)
end

function Quest40039:OnSubFinish4003902(arg1)
    print("OnSubFinish4003902")
    self:ActionSafeCall(function(arg1)
        arg1:DestroyQuestNpcActor(npcs.Npc10211Data.alias, 3)
    end)
end

function Quest40039:OnSubFailed4003902(arg1)
    print("OnSubFailed4003902")
end

function Quest40039:OnSubStart4003903(arg1)
    print("OnSubStart4003903")
    actorMgr:CreateActorWithPos("Q40039Trigger1", "Actor/Gadget/Q40039Trigger1", 70900002, 0, sceneData:GetDummyPoint(3, "Q4003903_N1031_311300036").pos, sceneData:GetDummyPoint(3, "Q4003903_N1031_311300036").rot, true, false, 3)
    self:CreateQuestNpc(arg1, npcs.Npc1031Data.id, 0)
    self:CreateQuestNpc(arg1, npcs.Npc1042Data.id, 0)
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc1031Data.alias)
    questNpcActor:DoFreeStyle(1220, true, nil, true, true, false)
    questNpcActor:DisableInteeHeadCtrl(true)
    self:GetQuestNpcActor(npcs.Npc1042Data.alias):DisableInteeHeadCtrl(true)
    self:NotifyTo(npcs.Npc2433Data.alias, 1, true)
    self:NotifyTo(npcs.Npc2434Data.alias, 1, true)
    self:NotifyTo(npcs.Npc2437Data.alias, 1, true)
    self:ActionSafeCall(function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc10211Data.id, 0)
    end)
end

function Quest40039:OnSubFinish4003903(arg1)
    print("OnSubFinish4003903")
    self:GetQuestNpcActor(npcs.Npc10211Data.alias):DoFreeStateTrigger()
    self:SafeDestroyQuestNpc(npcs.Npc10211Data.alias, 3)
end

function Quest40039:OnSubFailed4003903(arg1)
    print("OnSubFailed4003903")
end

function Quest40039:OnSubStart4003904(arg1)
    print("OnSubStart4003904")
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc1031Data.alias)
    questNpcActor:DoFreeStyle(1220, false, nil, true, true, false)
    questNpcActor:DisableInteeHeadCtrl(true)
    self:GetQuestNpcActor(npcs.Npc1042Data.alias):DisableInteeHeadCtrl(true)
    self:NotifyTo(npcs.Npc2433Data.alias, 1, true)
    self:NotifyTo(npcs.Npc2434Data.alias, 1, true)
    self:NotifyTo(npcs.Npc2437Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q40039Trigger10", "Actor/Gadget/Q40039Trigger10", 70900002, 0, sceneData:GetDummyPoint(3, "Q4003903_N1031_311300036").pos, sceneData:GetDummyPoint(3, "Q4003903_N1031_311300036").rot, true, false, 3)
end

function Quest40039:OnSubFinish4003904(arg1)
    print("OnSubFinish4003904")
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc1031Data.alias)
    questNpcActor:DoFreeStateTrigger()
    questNpcActor:DisableInteeHeadCtrl(false)
    self:GetQuestNpcActor(npcs.Npc1042Data.alias):DisableInteeHeadCtrl(false)
    self:SafeDestroyQuestNpc(npcs.Npc1031Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1042Data.alias, 3)
end

function Quest40039:OnSubFailed4003904(arg1)
    print("OnSubFailed4003904")
end

function Quest40039:OnSubStart4003922(arg1)
    print("OnSubStart4003922")
    actorMgr:CreateActorWithPos("Q40039Trigger2", "Actor/Gadget/Q40039Trigger2", 70900002, 0, sceneData:GetDummyPoint(3, "Q40039boat").pos, sceneData:GetDummyPoint(3, "Q40039boat").rot, true, false, 3)
    self:NotifyTo(npcs.Npc2433Data.alias, 1, true)
    self:NotifyTo(npcs.Npc2434Data.alias, 1, true)
    self:NotifyTo(npcs.Npc2437Data.alias, 1, true)
end

function Quest40039:OnSubFinish4003922(arg1)
    print("OnSubFinish4003922")
end

function Quest40039:OnSubStart4003905(arg1)
    print("OnSubStart4003905")
    actorMgr:CreateActorWithPos("Q40039Trigger6", "Actor/Gadget/Q40039Trigger6", 70900002, 0, sceneData:GetDummyPoint(3, "Q40039boat2").pos, sceneData:GetDummyPoint(3, "Q40039boat2").rot, true, false, 3)
    self:NotifyTo(npcs.Npc2433Data.alias, 1, true)
    self:NotifyTo(npcs.Npc2434Data.alias, 1, true)
    self:NotifyTo(npcs.Npc2437Data.alias, 1, true)
end

function Quest40039:OnSubFinish4003905(arg1)
    print("OnSubFinish4003905")
    self:NarratorOnlyTaskByData(datas.Narrator1, nil, 40039)
    actorMgr:DestroyEntityActor("Q40039Trigger6", 3, false)
end

function Quest40039:OnSubFailed4003905(arg1)
    print("OnSubFailed4003905")
end

function Quest40039:OnSubStart4003917(arg1)
    print("OnSubStart4003917")
    actorMgr:CreateActorWithPos("Q40039Trigger5", "Actor/Gadget/Q40039Trigger5", 70900002, 0, sceneData:GetDummyPoint(3, "Q4003905_guide_311300039").pos, sceneData:GetDummyPoint(3, "Q4003905_guide_311300039").rot, true, false, 3)
    self:NotifyTo(npcs.Npc2433Data.alias, 1, true)
    self:NotifyTo(npcs.Npc2434Data.alias, 1, true)
    self:NotifyTo(npcs.Npc2437Data.alias, 1, true)
end

function Quest40039:OnSubFinish4003917(arg1)
    print("OnSubFinish4003917")
end

function Quest40039:OnSubStart4003910(arg1)
    print("OnSubStart4003910")
    actorMgr:CreateActorWithPos("Q40039Trigger3", "Actor/Gadget/Q40039Trigger3", 70900002, 0, sceneData:GetDummyPoint(3, "Q4003910_guide").pos, sceneData:GetDummyPoint(3, "Q4003910_guide").rot, true, false, 3)
    self:NotifyTo(npcs.Npc2433Data.alias, 1, true)
    self:NotifyTo(npcs.Npc2434Data.alias, 1, true)
    self:NotifyTo(npcs.Npc2437Data.alias, 1, true)
end

function Quest40039:OnSubFinish4003910(arg1)
    print("OnSubFinish4003910")
end

function Quest40039:OnSubFailed4003910(arg1)
    print("OnSubFailed4003910")
end

function Quest40039:OnSubStart4003915(arg1)
    print("OnSubStart4003915")
    self:CallDelay(2, function(arg1_2)
        arg1_2:ShowBlackScreen(0.5, 0.5, 0.5, function(arg1_2)
            arg1_2:CreateQuestNpc(arg1, npcs.Npc1031Data.id, 0)
            arg1_2:CreateQuestNpc(arg1, npcs.Npc30101Data.id, 0)
            arg1_2:CreateQuestNpc(arg1, npcs.Npc30134Data.id, 0)
            arg1_2:CreateQuestNpc(arg1, npcs.Npc30135Data.id, 0)
            arg1_2:CreateQuestNpc(arg1, npcs.Npc30136Data.id, 0)
            arg1_2:RequestInteraction(npcs.Npc1031Data.alias)
        end, nil, nil, "", false, true)
    end)

    self:NotifyTo(npcs.Npc2433Data.alias, 1, true)
    self:NotifyTo(npcs.Npc2434Data.alias, 1, true)
    self:NotifyTo(npcs.Npc2437Data.alias, 1, true)
    self:ClearNarratorTask()
    self:StopNarrator()
end

function Quest40039:OnSubFinish4003915(arg1)
    print("OnSubFinish4003915")
    self:DestroyQuestNpcActor(npcs.Npc1031Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc30101Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc30134Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc30135Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc30136Data.alias, 3)
    self:LightNotifyTo(npcs.Npc2433Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc2434Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc2437Data.alias, 0, true)
end

function Quest40039:OnSubFailed4003915(arg1)
    print("OnSubFailed4003915")
end

function Quest40039:OnSubStart4003906(arg1)
    print("OnSubStart4003906")
end

function Quest40039:OnSubFinish4003906(arg1)
    print("OnSubFinish4003906")
end

function Quest40039:OnSubFailed4003906(arg1)
    print("OnSubFailed4003906")
end

function Quest40039:OnSubStart4003907(arg1)
    print("OnSubStart4003907")
    self:NarratorOnlyTaskByData(datas.Narrator3, nil, 40039)
end

function Quest40039:OnSubFinish4003907(arg1)
    print("OnSubFinish4003907")
end

function Quest40039:OnSubFailed4003907(arg1)
    print("OnSubFailed4003907")
end

function Quest40039:OnSubStart4003921(arg1)
    print("OnSubStart4003921")
end

function Quest40039:OnSubFinish4003921(arg1)
    print("OnSubFinish4003921")
end

function Quest40039:OnSubStart4003908(arg1)
    print("OnSubStart4003908")
    self:CallDelay(2, function(arg1_2)
        arg1_2:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc30086Data.id, 0, npcs.Npc30086Data.alias)
    end)

    self:ClearNarratorTask()
    self:StopNarrator()
end

function Quest40039:OnSubFinish4003908(arg1)
    print("OnSubFinish4003908")
    self:DestroyQuestNpcActor(npcs.Npc30086Data.alias, 3)
end

function Quest40039:OnSubFailed4003908(arg1)
    print("OnSubFailed4003908")
end

function Quest40039:OnSubStart4003916(arg1)
    print("OnSubStart4003916")
end

function Quest40039:OnSubFinish4003916(arg1)
    print("OnSubFinish4003916")
end

function Quest40039:OnSubStart4003923(arg1)
    print("OnSubStart4003923")
end

function Quest40039:OnSubFinish4003923(arg1)
    print("OnSubFinish4003923")
end

function Quest40039:OnSubStart4003918(arg1)
    print("OnSubStart4003918")
    actorMgr:CreateActorWithPos("Q40039Trigger8", "Actor/Gadget/Q40039Trigger8", 70900002, 0, sceneData:GetDummyPoint(3, "Q4003909_311300038").pos, sceneData:GetDummyPoint(3, "Q4003909_311300038").rot, true, false, 3)
end

function Quest40039:OnSubFinish4003918(arg1)
    print("OnSubFinish4003918")
end

function Quest40039:OnSubFailed4003918(arg1)
    print("OnSubFailed4003918")
end

function Quest40039:OnSubStart4003909(arg1)
    print("OnSubStart4003909")
end

function Quest40039:OnSubFinish4003909(arg1)
    print("OnSubFinish4003909")
end

function Quest40039:OnSubStart4003919(arg1)
    print("OnSubStart4003919")
end

function Quest40039:OnSubFinish4003919(arg1)
    print("OnSubFinish4003919")
end

function Quest40039:OnSubStart4003920(arg1)
    print("OnSubStart4003920")
end

function Quest40039:OnSubFinish4003920(arg1)
    print("OnSubFinish4003920")
    self:NarratorOnlyTaskByData(datas.Narrator5, nil, 40039)
end

function Quest40039:OnSubStart4003911(arg1)
    print("OnSubStart4003911")
    self:CreateQuestNpc(arg1, npcs.Npc30087Data.id, 0)
    self:CreateQuestNpc(arg1, npcs.Npc30101Data.id, 0)
    self:CreateQuestNpc(arg1, npcs.Npc30109Data.id, 0)
    self:CreateQuestNpc(arg1, npcs.Npc30111Data.id, 0)
    self:GetQuestNpcActor(npcs.Npc30109Data.alias):DoFreeStyle(1190, true, nil, true, true, false)
    self:GetQuestNpcActor(npcs.Npc30111Data.alias):DoFreeStyle(1320, true, nil, true, true, false)
    actorMgr:CreateActorWithPos("Q40039Trigger4", "Actor/Gadget/Q40039Trigger4", 70900002, 0, sceneData:GetDummyPoint(3, "Q4003910_N30087").pos, sceneData:GetDummyPoint(3, "Q4003910_N30087").rot, true, false, 3)
end

function Quest40039:OnSubFinish4003911(arg1)
    print("OnSubFinish4003911")
    self:SafeDestroyQuestNpc(npcs.Npc30087Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc30101Data.alias, 3)
    self:GetQuestNpcActor(npcs.Npc30109Data.alias):DoFreeStateTrigger()
    self:GetQuestNpcActor(npcs.Npc30111Data.alias):DoFreeStateTrigger()
    self:SafeDestroyQuestNpc(npcs.Npc30109Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc30111Data.alias, 3)
end

function Quest40039:OnSubStart4003913(arg1)
    print("OnSubStart4003913")
    self:ClearNarratorTask()
    self:StopNarrator()
end

function Quest40039:OnSubFinish4003913(arg1)
    print("OnSubFinish4003913")
end

function Quest40039:OnSubStart4003924(arg1)
    print("OnSubStart4003924")
end

function Quest40039:OnSubFinish4003924(arg1)
    print("OnSubFinish4003924")
    self:NarratorOnlyTaskByData(datas.Narrator6, function(arg1)
        arg1:FinishQuestID(false, 4003925)
    end, 40039)
end

function Quest40039:OnSubStart4003925(arg1)
    print("OnSubStart4003925")
end

function Quest40039:OnSubFinish4003925(arg1)
    print("OnSubFinish4003925")
end

function Quest40039:OnSubStart4003914(arg1)
    print("OnSubStart4003914")
    self:ClearNarratorTask()
    self:StopNarrator()
    self:CallDelay(2, function(arg1_2)
        arg1_2:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc1031Data.id, 1, npcs.Npc1031Data.alias)
    end)
end

function Quest40039:OnSubFinish4003914(arg1)
    print("OnSubFinish4003914")
end

function Quest40039:OnSubFailed4003914(arg1)
    print("OnSubFailed4003914")
end

function Quest40039:OnSubStart4003912(arg1)
    print("OnSubStart4003912")
    self:CreateQuestNpc(arg1, npcs.Npc10211Data.id, 0)
    self:CreateQuestNpc(arg1, npcs.Npc1031Data.id, 0)
    self:CreateQuestNpc(arg1, npcs.Npc1042Data.id, 0)
    self:GetQuestNpcActor(npcs.Npc10211Data.alias):SitOnChair(0)
end

function Quest40039:OnSubFinish4003912(arg1)
    print("OnSubFinish4003912")
    self:ShowBlackScreen(0.5, 0.5, 0.5, function(arg1)
        arg1:GetQuestNpcActor(npcs.Npc10211Data.alias):StandFromChair(0)
        arg1:SafeDestroyQuestNpc(npcs.Npc10211Data.alias, 3)
        arg1:SafeDestroyQuestNpc(npcs.Npc1031Data.alias, 3)
        arg1:SafeDestroyQuestNpc(npcs.Npc1042Data.alias, 3)
    end, function(arg1)
        actorUtils.ShowLanternRiteV2Page(1)
    end, nil, "", false, true)
end

function Quest40039:OnSubFailed4003912(arg1)
    print("OnSubFailed4003912")
end

return Quest40039
