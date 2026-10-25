require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest4023 = class("Quest4023", QuestActorProxy)
Quest4023.defaultAlias = "Quest4023"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points

function Quest4023:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest4023:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["402301"] = self.OnSubStart402301,
        ["402302"] = self.OnSubStart402302,
        ["402311"] = self.OnSubStart402311,
        ["402303"] = self.OnSubStart402303,
        ["402304"] = self.OnSubStart402304,
        ["402305"] = self.OnSubStart402305,
        ["402306"] = self.OnSubStart402306,
        ["402307"] = self.OnSubStart402307,
        ["402308"] = self.OnSubStart402308,
        ["402312"] = self.OnSubStart402312,
        ["402309"] = self.OnSubStart402309,
        ["402310"] = self.OnSubStart402310
    }
end

function Quest4023:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["402301"] = self.OnSubFinish402301,
        ["402302"] = self.OnSubFinish402302,
        ["402311"] = self.OnSubFinish402311,
        ["402303"] = self.OnSubFinish402303,
        ["402304"] = self.OnSubFinish402304,
        ["402305"] = self.OnSubFinish402305,
        ["402306"] = self.OnSubFinish402306,
        ["402307"] = self.OnSubFinish402307,
        ["402308"] = self.OnSubFinish402308,
        ["402312"] = self.OnSubFinish402312,
        ["402309"] = self.OnSubFinish402309,
        ["402310"] = self.OnSubFinish402310
    }
end

function Quest4023:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest4023:Start()
    print("Start")
end

function Quest4023:OnDestroy()
    print("OnDestroy")
end

function Quest4023:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest4023:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest4023:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest4023:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, arg5, 2)
end

function Quest4023:NpcDestroy(arg1, arg2)
    this:SafeDestroyQuestNpc(arg1, arg2)
end

function Quest4023:NpcCreateWithBlackscreenInteraction(arg1, arg2, arg3, arg4)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:CreateQuestNpc(arg1, arg2, arg3)
        this:RequestInteraction(arg4)
    end)
end

function Quest4023:OnSubStart402301(arg1)
    print("OnSubStart402301")
end

function Quest4023:OnSubFinish402301(arg1)
    print("OnSubFinish402301")
end

function Quest4023:OnSubStart402302(arg1)
    print("OnSubStart402302")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.PaimonData.id, 402302, 0, 5, 1)
end

function Quest4023:OnSubFinish402302(arg1)
    print("OnSubFinish402302")
    this:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
end

function Quest4023:OnSubStart402311(arg1)
    print("OnSubStart402311")
    this:CreateQuestNpc(arg1, npcs.Npc5202Data.id, 0)
end

function Quest4023:OnSubFinish402311(arg1)
    print("OnSubFinish402311")
    this:SafeDestroyQuestNpc(npcs.Npc5202Data.alias, 3)
end

function Quest4023:OnSubStart402303(arg1)
    print("OnSubStart402303")
    this:CreateQuestNpc(arg1, npcs.Npc1078Data.id, 0)
    actorMgr:CreateActorWithPos("Q402303finish", "Actor/Gadget/Q402303finish", 70900002, 0, {x = 1.446, y = 21.791, z = 0.778}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 1086)
    this:GetQuestNpcActor(npcs.Npc1078Data.alias):SitOnChair(0, false)
end

function Quest4023:OnSubFinish402303(arg1)
    print("OnSubFinish402303")
end

function Quest4023:OnSubStart402304(arg1)
    print("OnSubStart402304")
    this:RequestInteraction(npcs.Npc1078Data.alias)
end

function Quest4023:OnSubFinish402304(arg1)
    print("OnSubFinish402304")
    this:SafeDestroyQuestNpc(npcs.Npc1078Data.alias, 1086)
end

function Quest4023:OnSubStart402305(arg1)
    print("OnSubStart402305")
    this:CreateQuestNpc(arg1, npcs.Npc1076Data.id, 0)
    actorMgr:CreateActorWithPos("Q402305finish", "Actor/Gadget/Q402305finish", 70900002, 0, {x = -26.684, y = 0.022, z = -20.627}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 1083)
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc1079Data.id, 0)
        this:CreateQuestNpc(arg1, npcs.Npc1078Data.id, 0)
        this:GetQuestNpcActor(npcs.Npc1078Data.alias):DisableInteeHeadCtrl(true)
        local questNpcActor = this:GetQuestNpcActor(npcs.Npc1079Data.alias)
        questNpcActor:DisableInteeHeadCtrl(true)
        questNpcActor:DoFreeStyle(1130, true, nil, true, true, false, false)
        actorMgr:DestroyNpcActorByAlias("Npc107614009")
    end)

    this:GetQuestNpcActor(npcs.Npc1076Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc5087Data.id, 0)
end

function Quest4023:OnSubFinish402305(arg1)
    print("OnSubFinish402305")
end

function Quest4023:OnSubStart402306(arg1)
    print("OnSubStart402306")
    this:RequestInteraction(npcs.Npc1076Data.alias)
end

function Quest4023:OnSubFinish402306(arg1)
    print("OnSubFinish402306")
    this:SafeDestroyQuestNpc(npcs.Npc1076Data.alias, 1083)
    this:NpcDestroy(npcs.Npc1078Data.alias, 1086)
    this:NpcDestroy(npcs.Npc1079Data.alias, 1086)
    this:SafeDestroyQuestNpc(npcs.Npc5087Data.alias, 1083)
end

function Quest4023:OnSubStart402307(arg1)
    print("OnSubStart402307")
    actorMgr:CreateActorWithPos("Q402307talk", "Actor/Gadget/Q402307talk", 70900002, 0, points.TPos_Q402307talk.pos, points.TPos_Q402307talk.rot, true, false, 3)
    this:CreateQuestNpc(arg1, npcs.Npc13727Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc13727Data.alias):DoFreeStyle(4120, true, nil, true, true, false, false)
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc1076Data.id, 0)
        this:GetQuestNpcActor(npcs.Npc1076Data.alias):DoFreeStyle(1190, true, nil, true, true, false, true)
    end)

    this:NotifyTo(npcs.Npc5237Data.alias, 1, true)
end

function Quest4023:OnSubFinish402307(arg1)
    print("OnSubFinish402307")
    this:ActionSafeCall(function(arg1)
        this:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
    end)
end

function Quest4023:OnSubStart402308(arg1)
    print("OnSubStart402308")
    this:GetQuestNpcActor(npcs.Npc13727Data.alias):DoFreeStyle(4120, true, nil, true, true, false, false)
    actorMgr:CreateActorWithPos("Q402308Talk", "Actor/Gadget/Q402308Talk", 70900002, 0, {x = 2730.844, y = 387.293, z = 4184.209}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
    this:NotifyTo(npcs.Npc5237Data.alias, 1, true)
end

function Quest4023:OnSubFinish402308(arg1)
    print("OnSubFinish402308")
    this:SafeDestroyQuestNpc(npcs.Npc13727Data.alias, 3)
    this:DestroyQuestNpcActor(npcs.Npc1076Data.alias, 1083)
end

function Quest4023:OnSubStart402312(arg1)
    print("OnSubStart402312")
    this:CreateQuestNpc(arg1, npcs.Npc1075Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc1075Data.alias):DoFreeStyle(1130, true, nil, true, true, false, false)
    actorMgr:CreateActorWithPos("Q402312Talk", "Actor/Gadget/Q402312Talk", 70900002, 0, {x = 2816.725, y = 373.181, z = 4178.414}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc13728Data.id, 0)
        this:CreateQuestNpc(arg1, npcs.Npc13729Data.id, 0)
        this:GetQuestNpcActor(npcs.Npc13728Data.alias):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc13729Data.alias):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc13728Data.alias):DoFreeStyle(1240, true, nil, true, true, false, false)
        this:GetQuestNpcActor(npcs.Npc13729Data.alias):DoFreeStyle(4120, true, nil, true, true, false, false)
        this:CreateQuestNpc(arg1, npcs.Npc13727Data.id, 0)
        local questNpcActor = this:GetQuestNpcActor(npcs.Npc13727Data.alias)
        questNpcActor:DoFreeStyle(4120, true, nil, true, true, false, false)
        questNpcActor:DisableInteeHeadCtrl(true)
        this:CreateQuestNpc(arg1, npcs.Npc13731Data.id, 0)
        local v = this:GetQuestNpcActor(npcs.Npc13731Data.alias)
        v:DoFreeStyle(1280, true, nil, true, true, false, false)
        v:DisableInteeHeadCtrl(true)
    end)

    this:CreateQuestNpc(arg1, npcs.Npc13732Data.id, 0)
    this:NotifyTo(npcs.Npc5237Data.alias, 1, true)
end

function Quest4023:OnSubFinish402312(arg1)
    print("OnSubFinish402312")
    this:SafeDestroyQuestNpc(npcs.Npc1075Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13728Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13729Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13732Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13727Data.alias, 3)
    this:LightNotifyTo(npcs.Npc5237Data.alias, 0, true)
    this:DestroyQuestNpcActor(npcs.Npc13731Data.alias, 3)
end

function Quest4023:OnSubStart402309(arg1)
    print("OnSubStart402309")
    actorMgr:CreateActorWithPos("Q402309finish", "Actor/Gadget/Q402309finish", 70900002, 0, points.TPos_Q402309finish.pos, points.TPos_Q402309finish.rot, true, false, 3)
end

function Quest4023:OnSubFinish402309(arg1)
    print("OnSubFinish402309")
end

function Quest4023:OnSubStart402310(arg1)
    print("OnSubStart402310")
    this:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc1075Data.id, 0, npcs.Npc1075Data.alias)
end

function Quest4023:OnSubFinish402310(arg1)
    print("OnSubFinish402310")
    this:SafeDestroyQuestNpc(npcs.Npc1075Data.alias, 3)
end

return Quest4023
