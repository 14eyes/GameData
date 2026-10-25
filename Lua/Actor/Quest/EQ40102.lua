require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40102 = class("Quest40102", QuestActorProxy)
Quest40102.defaultAlias = "Quest40102"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points
local datas

function Quest40102:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
    datas = clientData.Datas
end

function Quest40102:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4010201"] = self.OnSubStart4010201,
        ["4010207"] = self.OnSubStart4010207,
        ["4010202"] = self.OnSubStart4010202,
        ["4010203"] = self.OnSubStart4010203,
        ["4010204"] = self.OnSubStart4010204,
        ["4010206"] = self.OnSubStart4010206,
        ["4010205"] = self.OnSubStart4010205
    }
end

function Quest40102:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4010201"] = self.OnSubFinish4010201,
        ["4010207"] = self.OnSubFinish4010207,
        ["4010202"] = self.OnSubFinish4010202,
        ["4010203"] = self.OnSubFinish4010203,
        ["4010204"] = self.OnSubFinish4010204,
        ["4010206"] = self.OnSubFinish4010206,
        ["4010205"] = self.OnSubFinish4010205
    }
end

function Quest40102:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest40102:Start()
    print("Start")
end

function Quest40102:OnDestroy()
    print("OnDestroy")
end

function Quest40102:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest40102:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest40102:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc13161Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13161Data.alias, 1079)
    this:SafeDestroyQuestNpc(npcs.Npc1059Data.alias, 1074)
    this:SafeDestroyQuestNpc(npcs.Npc1059Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1052Data.alias, 1074)
    this:SafeDestroyQuestNpc(npcs.Npc1052Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13091Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1064Data.alias, 1079)
    this:SafeDestroyQuestNpc(npcs.Npc13259Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1054Data.alias, 3)
    this:RemoveLocalGadget(70711016, "1")
    this:RemoveLocalGadget(70290017, "2")
    actorMgr:DestroyEntityActor("Q4010204_TriggerIn", 3, false)
    actorMgr:DestroyEntityActor("Q4010206_TriggerIn", 0, false)
    actorMgr:DestroyEntityActor("Q4010207_TriggerIn", 3, false)
    actorMgr:DestroyEntityActor("Q4010201_TriggerIn", 3, false)
    actorMgr:DestroyEntityActor("Q4010203_TriggerIn", 3, false)
end

function Quest40102:OnSubStart4010201(arg1)
    print("OnSubStart4010201")
    this:CreateQuestNpcWithTrigger("Q4010201_TriggerIn", 4010201, 13161, 1, 5)
end

function Quest40102:OnSubFinish4010201(arg1)
    print("OnSubFinish4010201")
    this:SafeDestroyQuestNpc(npcs.Npc13161Data.alias, 3)
end

function Quest40102:OnSubStart4010207(arg1)
    print("OnSubStart4010207")
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc1059Data.id, 1)
        this:CreateQuestNpc(arg1, npcs.Npc1052Data.id, 2)
        this:GetQuestNpcActor(npcs.Npc1059Data.alias):SitOnChair(8010)
        this:GetQuestNpcActor(npcs.Npc1052Data.alias):SitOnChair(8010)
        this:GetQuestNpcActor(npcs.Npc1059Data.alias):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc1052Data.alias):DisableInteeHeadCtrl(true)
    end)

    this:CreateQuestNpc(arg1, npcs.Npc13091Data.id, 3)
    actorMgr:CreateActorWithPos("Q4010207_TriggerIn", "Actor/Gadget/Q4010207_TriggerIn", 70900002, 0, points.TPos_Q4010207_TriggerIn.pos, points.TPos_Q4010207_TriggerIn.rot, true, false, 3)
end

function Quest40102:OnSubFinish4010207(arg1)
    print("OnSubFinish4010207")
    this:ActionSafeCall(function(arg1)
        this:NarratorOnlyTaskByData(datas.Q4010202_NarratorWithId)
    end)

    this:EnterSceneLookCamera(sceneData:GetDummyPoint(3, "Q4010202_N13091").pos, 1.5, 2.5, true, false)
end

function Quest40102:OnSubStart4010202(arg1)
    print("OnSubStart4010202")
    this:GetQuestNpcActor(npcs.Npc1059Data.alias):SitOnChair(8010)
    this:GetQuestNpcActor(npcs.Npc1052Data.alias):SitOnChair(8010)
    this:GetQuestNpcActor(npcs.Npc1059Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1052Data.alias):DisableInteeHeadCtrl(true)
end

function Quest40102:OnSubFinish4010202(arg1)
    print("OnSubFinish4010202")
    this:TryPauseCurAutoNarrator()
    this:ClearNarratorTask()
end

function Quest40102:OnSubStart4010203(arg1)
    print("OnSubStart4010203")
    this:CreateQuestNpc(arg1, npcs.Npc1054Data.id, 2)
    this:CreateQuestNpcWithTrigger("Q4010203_TriggerIn", 4010203, 13161, 1, 12)
    this:GetQuestNpcActor(npcs.Npc1059Data.alias):SitOnChair(8010)
    this:GetQuestNpcActor(npcs.Npc1052Data.alias):SitOnChair(8010)
    this:GetQuestNpcActor(npcs.Npc1059Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1052Data.alias):DisableInteeHeadCtrl(true)
end

function Quest40102:OnSubFinish4010203(arg1)
    print("OnSubFinish4010203")
    this:SafeDestroyQuestNpc(npcs.Npc13161Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13091Data.alias, 3)
end

function Quest40102:OnSubStart4010204(arg1)
    print("OnSubStart4010204")
    this:CreateQuestNpc(arg1, npcs.Npc13259Data.id, 1)
    this:GetQuestNpcActor(npcs.Npc1059Data.alias):SitOnChair(8010)
    this:GetQuestNpcActor(npcs.Npc1052Data.alias):SitOnChair(8010)
    this:GetQuestNpcActor(npcs.Npc1059Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1052Data.alias):DisableInteeHeadCtrl(true)
end

function Quest40102:OnSubFinish4010204(arg1)
    print("OnSubFinish4010204")
    this:ShowBlackScreenWithDialogText(0.5, 1, 0.5, function(arg1)
        actorMgr:CreateActorWithPos("Q4010204_TriggerIn", "Actor/Gadget/Q4010204_TriggerIn", 70900002, 0, points.TPos_Q4010204_TriggerIn.pos, points.TPos_Q4010204_TriggerIn.rot, true, false, 3)
    end, nil, nil, 0, false, true)

    this:SafeDestroyQuestNpc(npcs.Npc13259Data.alias, 3)
end

function Quest40102:OnSubStart4010206(arg1)
    print("OnSubStart4010206")
    this:CreateQuestNpc(arg1, npcs.Npc1064Data.id, 2)
    actorMgr:CreateActorWithPos("Q4010206_TriggerIn", "Actor/Gadget/Q4010206_TriggerIn", 70900002, 0, points.TPos_Q4010206_TriggerIn.pos, points.TPos_Q4010206_TriggerIn.rot, true, false, 1079)
    this:GetQuestNpcActor(npcs.Npc1059Data.alias):SitOnChair(8010)
    this:GetQuestNpcActor(npcs.Npc1052Data.alias):SitOnChair(8010)
    this:GetQuestNpcActor(npcs.Npc1059Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1052Data.alias):DisableInteeHeadCtrl(true)
end

function Quest40102:OnSubFinish4010206(arg1)
    print("OnSubFinish4010206")
end

function Quest40102:OnSubStart4010205(arg1)
    print("OnSubStart4010205")
    this:CreateQuestNpc(arg1, npcs.Npc13161Data.id, 1)
    this:GetQuestNpcActor(npcs.Npc1059Data.alias):SitOnChair(8010)
    this:GetQuestNpcActor(npcs.Npc1052Data.alias):SitOnChair(8010)
    this:CreateLocalGadget(70711016, "1", {x = -0.231, y = 0.857, z = 10.305}, {x = 270.0, y = 234.672, z = 0.0}, 1079, nil, nil, 1, false)
    this:CreateLocalGadget(70290017, "2", {x = 0.035, y = 0.854, z = 10.497}, {x = 270.0, y = 234.672, z = 0.0}, 1079, nil, nil, 1, false)
    this:GetQuestNpcActor(npcs.Npc1059Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1052Data.alias):DisableInteeHeadCtrl(true)
end

function Quest40102:OnSubFinish4010205(arg1)
    print("OnSubFinish4010205")
    this:SafeDestroyQuestNpc(npcs.Npc13161Data.alias, 1079)
    this:SafeDestroyQuestNpc(npcs.Npc1059Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1052Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1064Data.alias, 1079)
    this:SafeDestroyQuestNpc(npcs.Npc1054Data.alias, 3)
    this:RemoveLocalGadget(70711016, "1")
    this:RemoveLocalGadget(70290017, "2")
end

return Quest40102
