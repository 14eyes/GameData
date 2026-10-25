require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest4025 = class("Quest4025", QuestActorProxy)
Quest4025.defaultAlias = "Quest4025"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points
local datas

function Quest4025:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
    datas = clientData.Datas
end

function Quest4025:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["402501"] = self.OnSubStart402501,
        ["402502"] = self.OnSubStart402502,
        ["402503"] = self.OnSubStart402503,
        ["402504"] = self.OnSubStart402504,
        ["402505"] = self.OnSubStart402505,
        ["402506"] = self.OnSubStart402506,
        ["402507"] = self.OnSubStart402507,
        ["402508"] = self.OnSubStart402508,
        ["402509"] = self.OnSubStart402509,
        ["402512"] = self.OnSubStart402512,
        ["402510"] = self.OnSubStart402510,
        ["402511"] = self.OnSubStart402511
    }
end

function Quest4025:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["402501"] = self.OnSubFinish402501,
        ["402502"] = self.OnSubFinish402502,
        ["402503"] = self.OnSubFinish402503,
        ["402504"] = self.OnSubFinish402504,
        ["402505"] = self.OnSubFinish402505,
        ["402506"] = self.OnSubFinish402506,
        ["402507"] = self.OnSubFinish402507,
        ["402508"] = self.OnSubFinish402508,
        ["402509"] = self.OnSubFinish402509,
        ["402512"] = self.OnSubFinish402512,
        ["402510"] = self.OnSubFinish402510,
        ["402511"] = self.OnSubFinish402511
    }
end

function Quest4025:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["402510"] = self.OnSubFailed402510}
end

function Quest4025:Start()
    print("Start")
end

function Quest4025:OnDestroy()
    print("OnDestroy")
end

function Quest4025:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest4025:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest4025:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest4025:NpcDestroy(arg1, arg2)
    this:SafeDestroyQuestNpc(arg1, arg2)
end

function Quest4025:NpcCreateWithBlackscreenInteraction(arg1, arg2, arg3, arg4)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:CreateQuestNpc(arg1, arg2, arg3)
        this:RequestInteraction(arg4)
    end)
end

function Quest4025:OnSubStart402501(arg1)
    print("OnSubStart402501")
    actorMgr:CreateActorWithPos("Q402501Talk", "Actor/Gadget/Q402501Talk", 70900002, 0, points.TPos_Q402501Talk.pos, points.TPos_Q402501Talk.rot, true, false, 3)
end

function Quest4025:OnSubFinish402501(arg1)
    print("OnSubFinish402501")
    this:ActionSafeCall(function(arg1)
        this:DestroyQuestNpcActor(npcs.Npc1070Data.alias, 3)
    end)
end

function Quest4025:OnSubStart402502(arg1)
    print("OnSubStart402502")
    this:CreateQuestNpc(arg1, npcs.Npc1075Data.id, 0)
    actorMgr:CreateActorWithPos("Q402502Finish", "Actor/Gadget/Q402502Finish", 70900002, 0, points.TPos_Q402502Finish.pos, points.TPos_Q402502Finish.rot, true, false, 3)
    this:CreateQuestNpc(arg1, npcs.Npc13796Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc13796Data.alias):DoFreeStyle(1170, true, nil, true, true, false, false)
end

function Quest4025:OnSubFinish402502(arg1)
    print("OnSubFinish402502")
end

function Quest4025:OnSubStart402503(arg1)
    print("OnSubStart402503")
    this:RequestInteraction(npcs.Npc1075Data.alias)
end

function Quest4025:OnSubFinish402503(arg1)
    print("OnSubFinish402503")
    this:SafeDestroyQuestNpc(npcs.Npc1075Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13796Data.alias, 3)
end

function Quest4025:OnSubStart402504(arg1)
    print("OnSubStart402504")
    actorMgr:CreateActorWithPos("Q402504Finish", "Actor/Gadget/Q402504Finish", 70900002, 0, points.TPos_Q402504Finish.pos, points.TPos_Q402504Finish.rot, true, false, 3)
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc1077Data.id, 0)
        this:CreateQuestNpc(arg1, npcs.Npc1075Data.id, 0)
        this:GetQuestNpcActor(npcs.Npc1075Data.alias):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc1077Data.alias):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc1075Data.alias):DoFreeStyle(1220, true, nil, true, true, false, false)
        this:GetQuestNpcActor(npcs.Npc1077Data.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
        this:CreateQuestNpc(arg1, npcs.Npc13796Data.id, 0)
        this:GetQuestNpcActor(npcs.Npc13796Data.alias):DisableInteeHeadCtrl(true)
    end)
end

function Quest4025:OnSubFinish402504(arg1)
    print("OnSubFinish402504")
end

function Quest4025:OnSubStart402505(arg1)
    print("OnSubStart402505")
    this:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc1078Data.id, 0, npcs.Npc1078Data.alias)
    this:TryPauseCurAutoNarrator()
    this:ClearNarratorTask()
end

function Quest4025:OnSubFinish402505(arg1)
    print("OnSubFinish402505")
    this:NpcDestroy(npcs.Npc1075Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1077Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1078Data.alias, 3)
    this:ActionSafeCall(function(arg1)
        this:NarratorOnlyTaskByData(datas.NarratorWithId)
    end)

    this:SafeDestroyQuestNpc(npcs.Npc13796Data.alias, 3)
end

function Quest4025:OnSubStart402506(arg1)
    print("OnSubStart402506")
    this:CreateQuestNpc(arg1, npcs.Npc1071Data.id, 0)
    actorMgr:CreateActorWithPos("Q402506Finish", "Actor/Gadget/Q402506Finish", 70900002, 0, points.TPos_Q402506Finish.pos, points.TPos_Q402506Finish.rot, true, false, 3)
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc1078Data.id, 0)
        this:CreateQuestNpc(arg1, npcs.Npc1079Data.id, 0)
        this:CreateQuestNpc(arg1, npcs.Npc13533Data.id, 0)
        this:CreateQuestNpc(arg1, npcs.Npc13532Data.id, 0)
        this:GetQuestNpcActor(npcs.Npc1078Data.alias):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc1079Data.alias):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc13532Data.alias):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc13533Data.alias):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc1079Data.alias):DoFreeStyle(1192, true, nil, true, true, false, false)
        this:GetQuestNpcActor(npcs.Npc13533Data.alias):DoFreeStyle(1050, true, nil, true, true, false, false)
        this:GetQuestNpcActor(npcs.Npc13532Data.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
        this:CreateQuestNpc(arg1, npcs.Npc1072Data.id, 0)
        this:GetQuestNpcActor(npcs.Npc1071Data.alias):DoFreeStyle(1170, true, nil, true, true, false, false)
        this:GetQuestNpcActor(npcs.Npc1072Data.alias):DoFreeStyle(1230, true, nil, true, true, false, false)
        this:CreateQuestNpc(arg1, npcs.Npc5137Data.id, 0)
        this:CreateQuestNpc(arg1, npcs.Npc5149Data.id, 0)
        this:CreateQuestNpc(arg1, npcs.Npc5136Data.id, 0)
        this:CreateQuestNpc(arg1, npcs.Npc1074Data.id, 0)
        this:GetQuestNpcActor(npcs.Npc5137Data.alias):DoFreeStyle(1130, true, nil, true, true, false, false)
        this:GetQuestNpcActor(npcs.Npc5136Data.alias):DoFreeStyle(1180, true, nil, true, true, false, false)
        this:GetQuestNpcActor(npcs.Npc5149Data.alias):DoFreeStyle(1230, true, nil, true, true, false, false)
        this:GetQuestNpcActor(npcs.Npc1078Data.alias):LookAt({x = 4478.62, y = 122.4, z = 4615.388})
    end)
end

function Quest4025:OnSubFinish402506(arg1)
    print("OnSubFinish402506")
end

function Quest4025:OnSubStart402507(arg1)
    print("OnSubStart402507")
    this:RequestInteraction(npcs.Npc1071Data.alias)
    this:TryPauseCurAutoNarrator()
    this:ClearNarratorTask()
end

function Quest4025:OnSubFinish402507(arg1)
    print("OnSubFinish402507")
    this:ActionSafeCall(function(arg1)
        this:DestroyQuestNpcActor(npcs.Npc1071Data.alias, 3)
        this:DestroyQuestNpcActor(npcs.Npc1079Data.alias, 3)
        this:DestroyQuestNpcActor(npcs.Npc1078Data.alias, 3)
        this:DestroyQuestNpcActor(npcs.Npc13533Data.alias, 3)
        this:DestroyQuestNpcActor(npcs.Npc13532Data.alias, 3)
        this:NarratorOnlyTaskByData(datas.NarratorWithId_01)
        this:DestroyQuestNpcActor(npcs.Npc1072Data.alias, 3)
        this:DestroyQuestNpcActor(npcs.Npc5137Data.alias, 3)
        this:DestroyQuestNpcActor(npcs.Npc5149Data.alias, 3)
        this:DestroyQuestNpcActor(npcs.Npc5136Data.alias, 3)
        this:DestroyQuestNpcActor(npcs.Npc1074Data.alias, 3)
    end)
end

function Quest4025:OnSubStart402508(arg1)
    print("OnSubStart402508")
    this:CreateQuestNpc(arg1, npcs.Npc1076Data.id, 0)
    actorMgr:CreateActorWithPos("Q402508Finish", "Actor/Gadget/Q402508Finish", 70900002, 0, points.TPos_Q402508Finish.pos, points.TPos_Q402508Finish.rot, true, false, 3)
    actorMgr:CreateActorWithPos("Q402508Narrator", "Actor/Gadget/Q402508Narrator", 70900002, 0, {x = 3353.543, y = 456.486, z = 3788.439}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest4025:OnSubFinish402508(arg1)
    print("OnSubFinish402508")
end

function Quest4025:OnSubStart402509(arg1)
    print("OnSubStart402509")
    this:RequestInteraction(npcs.Npc1076Data.alias)
    this:TryPauseCurAutoNarrator()
    this:ClearNarratorTask()
end

function Quest4025:OnSubFinish402509(arg1)
    print("OnSubFinish402509")
    this:SafeDestroyQuestNpc(npcs.Npc1076Data.alias, 3)
end

function Quest4025:OnSubStart402512(arg1)
    print("OnSubStart402512")
    actorMgr:CreateActorWithPos("Q402512Finish", "Actor/Gadget/Q402512Finish", 70900002, 0, points.TPos_Q402512Finish.pos, points.TPos_Q402512Finish.rot, true, false, 3)
end

function Quest4025:OnSubFinish402512(arg1)
    print("OnSubFinish402512")
end

function Quest4025:OnSubStart402510(arg1)
    print("OnSubStart402510")
    actorMgr:CreateActorWithPos("Q402510Talk", "Actor/Gadget/Q402510Talk", 70900002, 0, points.TPos_Q402510Talk.pos, points.TPos_Q402510Talk.rot, true, false, 20206)
end

function Quest4025:OnSubFinish402510(arg1)
    print("OnSubFinish402510")
    self:TransmitPlayerWithTextByQuestId(402510, 1, {"QUEST_Message_Q3007"}, 2.5)
end

function Quest4025:OnSubFailed402510(arg1)
    print("OnSubFailed402510")
    this:DestroyQuestNpcActor(npcs.Npc1076Data.alias, 20206)
end

function Quest4025:OnSubStart402511(arg1)
    print("OnSubStart402511")
    this:CreateQuestNpc(arg1, npcs.Npc1076Data.id, 0)
    actorMgr:CreateActorWithPos("Q402511tALK", "Actor/Gadget/Q402511tALK", 70900002, 0, points.TPos_Q402511tALK.pos, points.TPos_Q402511tALK.rot, true, false, 3)
end

function Quest4025:OnSubFinish402511(arg1)
    print("OnSubFinish402511")
end

return Quest4025
