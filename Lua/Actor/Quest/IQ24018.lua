require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest24018 = class("Quest24018", QuestActorProxy)
Quest24018.defaultAlias = "Quest24018"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs

function Quest24018:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest24018:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["2401801"] = self.OnSubStart2401801,
        ["2401802"] = self.OnSubStart2401802,
        ["2401803"] = self.OnSubStart2401803,
        ["2401804"] = self.OnSubStart2401804,
        ["2401805"] = self.OnSubStart2401805,
        ["2401806"] = self.OnSubStart2401806,
        ["2401807"] = self.OnSubStart2401807,
        ["2401808"] = self.OnSubStart2401808,
        ["2401809"] = self.OnSubStart2401809,
        ["2401810"] = self.OnSubStart2401810,
        ["2401811"] = self.OnSubStart2401811,
        ["2401812"] = self.OnSubStart2401812,
        ["2401813"] = self.OnSubStart2401813,
        ["2401814"] = self.OnSubStart2401814,
        ["2401815"] = self.OnSubStart2401815,
        ["2401816"] = self.OnSubStart2401816,
        ["2401817"] = self.OnSubStart2401817,
        ["2401818"] = self.OnSubStart2401818,
        ["2401819"] = self.OnSubStart2401819,
        ["2401820"] = self.OnSubStart2401820,
        ["2401821"] = self.OnSubStart2401821,
        ["2401822"] = self.OnSubStart2401822,
        ["2401823"] = self.OnSubStart2401823,
        ["2401824"] = self.OnSubStart2401824
    }
end

function Quest24018:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["2401801"] = self.OnSubFinish2401801,
        ["2401802"] = self.OnSubFinish2401802,
        ["2401803"] = self.OnSubFinish2401803,
        ["2401804"] = self.OnSubFinish2401804,
        ["2401805"] = self.OnSubFinish2401805,
        ["2401806"] = self.OnSubFinish2401806,
        ["2401807"] = self.OnSubFinish2401807,
        ["2401808"] = self.OnSubFinish2401808,
        ["2401809"] = self.OnSubFinish2401809,
        ["2401810"] = self.OnSubFinish2401810,
        ["2401811"] = self.OnSubFinish2401811,
        ["2401812"] = self.OnSubFinish2401812,
        ["2401813"] = self.OnSubFinish2401813,
        ["2401814"] = self.OnSubFinish2401814,
        ["2401815"] = self.OnSubFinish2401815,
        ["2401816"] = self.OnSubFinish2401816,
        ["2401817"] = self.OnSubFinish2401817,
        ["2401818"] = self.OnSubFinish2401818,
        ["2401819"] = self.OnSubFinish2401819,
        ["2401820"] = self.OnSubFinish2401820,
        ["2401821"] = self.OnSubFinish2401821,
        ["2401822"] = self.OnSubFinish2401822,
        ["2401823"] = self.OnSubFinish2401823,
        ["2401824"] = self.OnSubFinish2401824
    }
end

function Quest24018:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest24018:Start()
    print("Start")
end

function Quest24018:OnDestroy()
    print("OnDestroy")
end

function Quest24018:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest24018:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest24018:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc5085Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13409Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc5027Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13417Data.alias, 3)
    actorMgr:DestroyEntityActor("Q24018Trigger", 3, false)
end

function Quest24018:OnSubStart2401801(arg1)
    print("OnSubStart2401801")
    this:CreateQuestNpc(arg1, npcs.Npc5085Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13409Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc13409Data.alias):DisableInteeHeadCtrl(true)
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc5085Data.alias)
    questNpcActor:DoFreeStyle(1240, true, nil, true, true, false, false)
    questNpcActor:DisableInteeHeadCtrl(true)
end

function Quest24018:OnSubFinish2401801(arg1)
    print("OnSubFinish2401801")
    this:GetQuestNpcActor(npcs.Npc5085Data.alias):DisableInteeHeadCtrl(false)
end

function Quest24018:OnSubStart2401802(arg1)
    print("OnSubStart2401802")
end

function Quest24018:OnSubFinish2401802(arg1)
    print("OnSubFinish2401802")
end

function Quest24018:OnSubStart2401803(arg1)
    print("OnSubStart2401803")
end

function Quest24018:OnSubFinish2401803(arg1)
    print("OnSubFinish2401803")
end

function Quest24018:OnSubStart2401804(arg1)
    print("OnSubStart2401804")
end

function Quest24018:OnSubFinish2401804(arg1)
    print("OnSubFinish2401804")
end

function Quest24018:OnSubStart2401805(arg1)
    print("OnSubStart2401805")
    this:GetQuestNpcActor(npcs.Npc13409Data.alias):DisableInteeHeadCtrl(true)
end

function Quest24018:OnSubFinish2401805(arg1)
    print("OnSubFinish2401805")
end

function Quest24018:OnSubStart2401806(arg1)
    print("OnSubStart2401806")
    actorMgr:CreateActorWithPos("Q24018Trigger", "Actor/Gadget/Q24018Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q2401801_N5085").pos, sceneData:GetDummyPoint(3, "Q2401801_N5085").rot, true, false, 3)
    this:GetQuestNpcActor(npcs.Npc13409Data.alias):DisableInteeHeadCtrl(true)
end

function Quest24018:OnSubFinish2401806(arg1)
    print("OnSubFinish2401806")
    this:ActionSafeCall(function(arg1)
        this:GetQuestNpcActor(npcs.Npc13409Data.alias):DisableInteeHeadCtrl(false)
        this:DestroyQuestNpcActor(npcs.Npc5085Data.alias, 3)
        this:DestroyQuestNpcActor(npcs.Npc13409Data.alias, 3)
    end)
end

function Quest24018:OnSubStart2401807(arg1)
    print("OnSubStart2401807")
    actorMgr:CreateActorWithPos("Q24018Trigger", "Actor/Gadget/Q24018Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q2401801_N5085").pos, sceneData:GetDummyPoint(3, "Q2401801_N5085").rot, true, false, 3)
    this:GetQuestNpcActor(npcs.Npc13409Data.alias):DisableInteeHeadCtrl(true)
end

function Quest24018:OnSubFinish2401807(arg1)
    print("OnSubFinish2401807")
    this:ActionSafeCall(function(arg1)
        this:GetQuestNpcActor(npcs.Npc13409Data.alias):DisableInteeHeadCtrl(false)
        this:DestroyQuestNpcActor(npcs.Npc5085Data.alias, 3)
        this:DestroyQuestNpcActor(npcs.Npc13409Data.alias, 3)
    end)
end

function Quest24018:OnSubStart2401808(arg1)
    print("OnSubStart2401808")
    actorMgr:CreateActorWithPos("Q24018Trigger", "Actor/Gadget/Q24018Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q2401801_N5085").pos, sceneData:GetDummyPoint(3, "Q2401801_N5085").rot, true, false, 3)
    this:GetQuestNpcActor(npcs.Npc13409Data.alias):DisableInteeHeadCtrl(true)
end

function Quest24018:OnSubFinish2401808(arg1)
    print("OnSubFinish2401808")
    this:ActionSafeCall(function(arg1)
        this:GetQuestNpcActor(npcs.Npc13409Data.alias):DisableInteeHeadCtrl(false)
        this:DestroyQuestNpcActor(npcs.Npc5085Data.alias, 3)
        this:DestroyQuestNpcActor(npcs.Npc13409Data.alias, 3)
    end)
end

function Quest24018:OnSubStart2401809(arg1)
    print("OnSubStart2401809")
    this:CreateQuestNpc(arg1, npcs.Npc5027Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc13409Data.alias):DisableInteeHeadCtrl(true)
end

function Quest24018:OnSubFinish2401809(arg1)
    print("OnSubFinish2401809")
end

function Quest24018:OnSubStart2401810(arg1)
    print("OnSubStart2401810")
    this:GetQuestNpcActor(npcs.Npc13409Data.alias):DisableInteeHeadCtrl(true)
end

function Quest24018:OnSubFinish2401810(arg1)
    print("OnSubFinish2401810")
end

function Quest24018:OnSubStart2401811(arg1)
    print("OnSubStart2401811")
end

function Quest24018:OnSubFinish2401811(arg1)
    print("OnSubFinish2401811")
end

function Quest24018:OnSubStart2401812(arg1)
    print("OnSubStart2401812")
end

function Quest24018:OnSubFinish2401812(arg1)
    print("OnSubFinish2401812")
end

function Quest24018:OnSubStart2401813(arg1)
    print("OnSubStart2401813")
end

function Quest24018:OnSubFinish2401813(arg1)
    print("OnSubFinish2401813")
end

function Quest24018:OnSubStart2401814(arg1)
    print("OnSubStart2401814")
    this:GetQuestNpcActor(npcs.Npc13409Data.alias):DisableInteeHeadCtrl(true)
end

function Quest24018:OnSubFinish2401814(arg1)
    print("OnSubFinish2401814")
    this:ActionSafeCall(function(arg1)
        this:DestroyQuestNpcActor(npcs.Npc5027Data.alias, 3)
    end)
end

function Quest24018:OnSubStart2401815(arg1)
    print("OnSubStart2401815")
    actorMgr:CreateActorWithPos("Q24018Trigger", "Actor/Gadget/Q24018Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q2401801_N5085").pos, sceneData:GetDummyPoint(3, "Q2401801_N5085").rot, true, false, 3)
    this:GetQuestNpcActor(npcs.Npc13409Data.alias):DisableInteeHeadCtrl(true)
end

function Quest24018:OnSubFinish2401815(arg1)
    print("OnSubFinish2401815")
    this:ActionSafeCall(function(arg1)
        this:GetQuestNpcActor(npcs.Npc13409Data.alias):DisableInteeHeadCtrl(false)
        this:DestroyQuestNpcActor(npcs.Npc5085Data.alias, 3)
        this:DestroyQuestNpcActor(npcs.Npc13409Data.alias, 3)
    end)
end

function Quest24018:OnSubStart2401816(arg1)
    print("OnSubStart2401816")
    actorMgr:CreateActorWithPos("Q24018Trigger", "Actor/Gadget/Q24018Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q2401801_N5085").pos, sceneData:GetDummyPoint(3, "Q2401801_N5085").rot, true, false, 3)
    this:GetQuestNpcActor(npcs.Npc13409Data.alias):DisableInteeHeadCtrl(true)
end

function Quest24018:OnSubFinish2401816(arg1)
    print("OnSubFinish2401816")
    this:ActionSafeCall(function(arg1)
        this:GetQuestNpcActor(npcs.Npc13409Data.alias):DisableInteeHeadCtrl(false)
        this:DestroyQuestNpcActor(npcs.Npc5085Data.alias, 3)
        this:DestroyQuestNpcActor(npcs.Npc13409Data.alias, 3)
    end)
end

function Quest24018:OnSubStart2401817(arg1)
    print("OnSubStart2401817")
    actorMgr:CreateActorWithPos("Q24018Trigger", "Actor/Gadget/Q24018Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q2401801_N5085").pos, sceneData:GetDummyPoint(3, "Q2401801_N5085").rot, true, false, 3)
    this:GetQuestNpcActor(npcs.Npc13409Data.alias):DisableInteeHeadCtrl(true)
end

function Quest24018:OnSubFinish2401817(arg1)
    print("OnSubFinish2401817")
    this:ActionSafeCall(function(arg1)
        this:GetQuestNpcActor(npcs.Npc13409Data.alias):DisableInteeHeadCtrl(false)
        this:DestroyQuestNpcActor(npcs.Npc5085Data.alias, 3)
        this:DestroyQuestNpcActor(npcs.Npc13409Data.alias, 3)
    end)
end

function Quest24018:OnSubStart2401818(arg1)
    print("OnSubStart2401818")
    this:CreateQuestNpc(arg1, npcs.Npc13417Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc13409Data.alias):DisableInteeHeadCtrl(true)
end

function Quest24018:OnSubFinish2401818(arg1)
    print("OnSubFinish2401818")
end

function Quest24018:OnSubStart2401819(arg1)
    print("OnSubStart2401819")
    this:GetQuestNpcActor(npcs.Npc13409Data.alias):DisableInteeHeadCtrl(true)
end

function Quest24018:OnSubFinish2401819(arg1)
    print("OnSubFinish2401819")
    this:DestroyQuestNpcActor(npcs.Npc13417Data.alias, 3)
end

function Quest24018:OnSubStart2401820(arg1)
    print("OnSubStart2401820")
    actorMgr:CreateActorWithPos("Q24018Trigger", "Actor/Gadget/Q24018Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q2401801_N5085").pos, sceneData:GetDummyPoint(3, "Q2401801_N5085").rot, true, false, 3)
    this:GetQuestNpcActor(npcs.Npc13409Data.alias):DisableInteeHeadCtrl(true)
end

function Quest24018:OnSubFinish2401820(arg1)
    print("OnSubFinish2401820")
    this:ActionSafeCall(function(arg1)
        this:GetQuestNpcActor(npcs.Npc13409Data.alias):DisableInteeHeadCtrl(false)
        this:DestroyQuestNpcActor(npcs.Npc5085Data.alias, 3)
        this:DestroyQuestNpcActor(npcs.Npc13409Data.alias, 3)
    end)
end

function Quest24018:OnSubStart2401821(arg1)
    print("OnSubStart2401821")
end

function Quest24018:OnSubFinish2401821(arg1)
    print("OnSubFinish2401821")
end

function Quest24018:OnSubStart2401822(arg1)
    print("OnSubStart2401822")
end

function Quest24018:OnSubFinish2401822(arg1)
    print("OnSubFinish2401822")
end

function Quest24018:OnSubStart2401823(arg1)
    print("OnSubStart2401823")
end

function Quest24018:OnSubFinish2401823(arg1)
    print("OnSubFinish2401823")
end

function Quest24018:OnSubStart2401824(arg1)
    print("OnSubStart2401824")
end

function Quest24018:OnSubFinish2401824(arg1)
    print("OnSubFinish2401824")
end

return Quest24018
