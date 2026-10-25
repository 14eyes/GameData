require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73225 = class("Quest73225", QuestActorProxy)
Quest73225.defaultAlias = "Quest73225"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest73225:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest73225:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7322501"] = self.OnSubStart7322501,
        ["7322517"] = self.OnSubStart7322517,
        ["7322518"] = self.OnSubStart7322518,
        ["7322519"] = self.OnSubStart7322519,
        ["7322512"] = self.OnSubStart7322512,
        ["7322526"] = self.OnSubStart7322526,
        ["7322527"] = self.OnSubStart7322527,
        ["7322502"] = self.OnSubStart7322502,
        ["7322513"] = self.OnSubStart7322513,
        ["7322503"] = self.OnSubStart7322503,
        ["7322504"] = self.OnSubStart7322504,
        ["7322505"] = self.OnSubStart7322505,
        ["7322506"] = self.OnSubStart7322506,
        ["7322514"] = self.OnSubStart7322514,
        ["7322507"] = self.OnSubStart7322507,
        ["7322523"] = self.OnSubStart7322523,
        ["7322508"] = self.OnSubStart7322508,
        ["7322509"] = self.OnSubStart7322509,
        ["7322510"] = self.OnSubStart7322510,
        ["7322521"] = self.OnSubStart7322521,
        ["7322522"] = self.OnSubStart7322522,
        ["7322515"] = self.OnSubStart7322515,
        ["7322516"] = self.OnSubStart7322516,
        ["7322520"] = self.OnSubStart7322520,
        ["7322524"] = self.OnSubStart7322524,
        ["7322525"] = self.OnSubStart7322525,
        ["7322511"] = self.OnSubStart7322511
    }
end

function Quest73225:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7322501"] = self.OnSubFinish7322501,
        ["7322517"] = self.OnSubFinish7322517,
        ["7322518"] = self.OnSubFinish7322518,
        ["7322519"] = self.OnSubFinish7322519,
        ["7322512"] = self.OnSubFinish7322512,
        ["7322526"] = self.OnSubFinish7322526,
        ["7322527"] = self.OnSubFinish7322527,
        ["7322502"] = self.OnSubFinish7322502,
        ["7322513"] = self.OnSubFinish7322513,
        ["7322503"] = self.OnSubFinish7322503,
        ["7322504"] = self.OnSubFinish7322504,
        ["7322505"] = self.OnSubFinish7322505,
        ["7322506"] = self.OnSubFinish7322506,
        ["7322514"] = self.OnSubFinish7322514,
        ["7322507"] = self.OnSubFinish7322507,
        ["7322523"] = self.OnSubFinish7322523,
        ["7322508"] = self.OnSubFinish7322508,
        ["7322509"] = self.OnSubFinish7322509,
        ["7322510"] = self.OnSubFinish7322510,
        ["7322521"] = self.OnSubFinish7322521,
        ["7322522"] = self.OnSubFinish7322522,
        ["7322515"] = self.OnSubFinish7322515,
        ["7322516"] = self.OnSubFinish7322516,
        ["7322520"] = self.OnSubFinish7322520,
        ["7322524"] = self.OnSubFinish7322524,
        ["7322525"] = self.OnSubFinish7322525,
        ["7322511"] = self.OnSubFinish7322511
    }
end

function Quest73225:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73225:Start()
    print("Start")
end

function Quest73225:OnDestroy()
    print("OnDestroy")
end

function Quest73225:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73225:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73225:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc4291Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc4296Data.alias, 3)
    actorMgr:DestroyEntityActor("Q73225Trigger", 0, false)
    actorMgr:DestroyEntityActor("Q73225Trigger1", 0, false)
    actorMgr:DestroyEntityActor("Q73225Trigger7322512", 0, false)
    actorMgr:DestroyEntityActor("Q73225Trigger7322515", 0, false)
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc4291Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc4296Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc20932Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc4298Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc4299Data.alias, 3)
    actorMgr:DestroyEntityActor("Q73225Trigger1", 0, false)
    actorMgr:DestroyEntityActor("Q73225Trigger7322501", 3, false)
    actorMgr:DestroyEntityActor("Q73225Trigger7322502", 3, false)
    actorMgr:DestroyEntityActor("Q73225Trigger7322502reminder", 3, false)
    actorMgr:DestroyEntityActor("Q73225Trigger7322512", 3, false)
    actorMgr:DestroyEntityActor("Q73225Trigger7322515", 3, false)
    actorMgr:DestroyEntityActor("Q73225Trigger7322523", 3, false)
    actorMgr:DestroyEntityActor("Q73225Trigger7322524", 3, false)
    actorMgr:DestroyEntityActor("Q73225Trigger7322526", 3, false)
    actorMgr:DestroyEntityActor("Q73225Trigger7322527", 3, false)
    actorMgr:DestroyEntityActor("Q7322524TriggerFail", 3, false)
    actorMgr:DestroyEntityActor("Q7322524TriggerFinish", 3, false)
end

function Quest73225:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest73225:NpcDestroyWithBlackscreen(arg1, arg2)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest73225:NpcCreateWithBlackscreen(arg1, arg2, arg3)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:CreateQuestNpc(arg1, arg2, arg3)
    end)
end

function Quest73225:OnSubStart7322501(arg1)
    print("OnSubStart7322501")
    this:CreateQuestNpc(arg1, npcs.Npc4296Data.id, 1)
    actorMgr:CreateActorWithPos("Q73225Trigger7322501", "Actor/Gadget/Q73225Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q7322501_guide_2759").pos, sceneData:GetDummyPoint(3, "Q7322501_guide_2759").rot, true, false)
end

function Quest73225:OnSubFinish7322501(arg1)
    print("OnSubFinish7322501")
    this:NarratorOnlyTaskByData(datas.NarratorWithId7322501, nil, 73225)
end

function Quest73225:OnSubStart7322517(arg1)
    print("OnSubStart7322517")
    this:CreateQuestNpc(arg1, npcs.Npc20932Data.id, 1)
end

function Quest73225:OnSubFinish7322517(arg1)
    print("OnSubFinish7322517")
end

function Quest73225:OnSubStart7322518(arg1)
    print("OnSubStart7322518")
    this:CreateQuestNpc(arg1, npcs.Npc20932Data.id, 1)
end

function Quest73225:OnSubFinish7322518(arg1)
    print("OnSubFinish7322518")
end

function Quest73225:OnSubStart7322519(arg1)
    print("OnSubStart7322519")
    this:CreateQuestNpc(arg1, npcs.Npc20932Data.id, 1)
end

function Quest73225:OnSubFinish7322519(arg1)
    print("OnSubFinish7322519")
    this:SafeDestroyQuestNpc(npcs.Npc20932Data.alias, 3)
end

function Quest73225:OnSubStart7322512(arg1)
    print("OnSubStart7322512")
    actorMgr:CreateActorWithPos("Q73225Trigger7322512", "Actor/Gadget/Q73225Trigger7322512", 70900002, 0, sceneData:GetDummyPoint(3, "Q7322512_guide").pos, sceneData:GetDummyPoint(3, "Q7322512_guide").rot, true, false, 3)
end

function Quest73225:OnSubFinish7322512(arg1)
    print("OnSubFinish7322512")
end

function Quest73225:OnSubStart7322526(arg1)
    print("OnSubStart7322526")
    actorMgr:CreateActorWithPos("Q73225Trigger7322526", "Actor/Gadget/Q73225Trigger7322526", 70900002, 0, sceneData:GetDummyPoint(3, "Q7322526_guide").pos, sceneData:GetDummyPoint(3, "Q7322526_guide").rot, true, false, 3)
end

function Quest73225:OnSubFinish7322526(arg1)
    print("OnSubFinish7322526")
end

function Quest73225:OnSubStart7322527(arg1)
    print("OnSubStart7322527")
    actorMgr:CreateActorWithPos("Q73225Trigger7322527", "Actor/Gadget/Q73225Trigger7322527", 70900002, 0, sceneData:GetDummyPoint(3, "Q7322527_guide").pos, sceneData:GetDummyPoint(3, "Q7322527_guide").rot, true, false, 3)
end

function Quest73225:OnSubFinish7322527(arg1)
    print("OnSubFinish7322527")
end

function Quest73225:OnSubStart7322502(arg1)
    print("OnSubStart7322502")
    this:CreateQuestNpc(arg1, npcs.Npc4296Data.id, 1)
    actorMgr:CreateActorWithPos("Q73225Trigger7322502", "Actor/Gadget/Q73225Trigger7322502", 70900002, 0, sceneData:GetDummyPoint(3, "Q7322503_guide").pos, sceneData:GetDummyPoint(3, "Q7322503_guide").rot, true, false, 3)
    this:NarratorOnlyTaskByData(datas.NarratorWithId7322502)
    actorMgr:CreateActorWithPos("Q73225Trigger7322502reminder", "Actor/Gadget/Q73225Trigger7322502reminder", 70900002, 0, sceneData:GetDummyPoint(3, "Q7322502").pos, sceneData:GetDummyPoint(3, "Q7322502").rot, true, false, 3)
end

function Quest73225:OnSubFinish7322502(arg1)
    print("OnSubFinish7322502")
    this:ShowBlackScreen(0.5, 1, 0.5, nil, nil, nil, "", false, true)
end

function Quest73225:OnSubStart7322513(arg1)
    print("OnSubStart7322513")
    this:CreateQuestNpc(arg1, npcs.Npc4296Data.id, 1)
    this:RequestInteraction(npcs.Npc4296Data.alias)
end

function Quest73225:OnSubFinish7322513(arg1)
    print("OnSubFinish7322513")
    this:SafeDestroyQuestNpc(npcs.Npc4296Data.alias, 3)
end

function Quest73225:OnSubStart7322503(arg1)
    print("OnSubStart7322503")
end

function Quest73225:OnSubFinish7322503(arg1)
    print("OnSubFinish7322503")
    this:ShowBlackScreen(0.5, 1, 0.5, nil, nil, nil, "", false, true)
end

function Quest73225:OnSubStart7322504(arg1)
    print("OnSubStart7322504")
    this:CreateQuestNpc(arg1, npcs.Npc4296Data.id, 1)
    this:RequestInteraction(npcs.Npc4296Data.alias)
end

function Quest73225:OnSubFinish7322504(arg1)
    print("OnSubFinish7322504")
    this:SafeDestroyQuestNpc(npcs.Npc4296Data.alias, 3)
end

function Quest73225:OnSubStart7322505(arg1)
    print("OnSubStart7322505")
end

function Quest73225:OnSubFinish7322505(arg1)
    print("OnSubFinish7322505")
    this:NpcCreateWithBlackscreen(arg1, npcs.Npc4296Data.id, 1)
end

function Quest73225:OnSubStart7322506(arg1)
    print("OnSubStart7322506")
end

function Quest73225:OnSubFinish7322506(arg1)
    print("OnSubFinish7322506")
end

function Quest73225:OnSubStart7322514(arg1)
    print("OnSubStart7322514")
    this:RequestInteraction(npcs.Npc4296Data.alias)
end

function Quest73225:OnSubFinish7322514(arg1)
    print("OnSubFinish7322514")
    this:CreateQuestNpc(arg1, npcs.Npc4291Data.id, 1)
    this:TransmitPlayerWithTextById(arg1, 1, datas.TextmapId, 4)
    this:NpcDestroyWithBlackscreen(3, npcs.Npc4296Data.alias)
end

function Quest73225:OnSubStart7322507(arg1)
    print("OnSubStart7322507")
end

function Quest73225:OnSubFinish7322507(arg1)
    print("OnSubFinish7322507")
end

function Quest73225:OnSubStart7322523(arg1)
    print("OnSubStart7322523")
    this:CreateQuestNpc(arg1, npcs.Npc4291Data.id, 1)
    this:CreateQuestNpc(arg1, npcs.Npc4298Data.id, 2)
    this:CreateQuestNpc(arg1, npcs.Npc4299Data.id, 3)
    actorMgr:CreateActorWithPos("Q73225Trigger7322523", "Actor/Gadget/Q73225Trigger7322523", 70900002, 0, sceneData:GetDummyPoint(3, "Q7322514_N4291").pos, sceneData:GetDummyPoint(3, "Q7322514_N4291").rot, true, false, 3)
end

function Quest73225:OnSubFinish7322523(arg1)
    print("OnSubFinish7322523")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc4298Data.alias)
    this:NpcDestroyWithBlackscreen(3, npcs.Npc4299Data.alias)
end

function Quest73225:OnSubStart7322508(arg1)
    print("OnSubStart7322508")
    this:RequestInteraction(npcs.Npc4291Data.alias)
end

function Quest73225:OnSubFinish7322508(arg1)
    print("OnSubFinish7322508")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc4291Data.alias)
end

function Quest73225:OnSubStart7322509(arg1)
    print("OnSubStart7322509")
end

function Quest73225:OnSubFinish7322509(arg1)
    print("OnSubFinish7322509")
end

function Quest73225:OnSubStart7322510(arg1)
    print("OnSubStart7322510")
end

function Quest73225:OnSubFinish7322510(arg1)
    print("OnSubFinish7322510")
end

function Quest73225:OnSubStart7322521(arg1)
    print("OnSubStart7322521")
end

function Quest73225:OnSubFinish7322521(arg1)
    print("OnSubFinish7322521")
end

function Quest73225:OnSubStart7322522(arg1)
    print("OnSubStart7322522")
end

function Quest73225:OnSubFinish7322522(arg1)
    print("OnSubFinish7322522")
end

function Quest73225:OnSubStart7322515(arg1)
    print("OnSubStart7322515")
    this:CreateQuestNpc(arg1, npcs.Npc4291Data.id, 1)
    actorMgr:CreateActorWithPos("Q73225Trigger7322515", "Actor/Gadget/Q73225Trigger7322515", 70900002, 0, sceneData:GetDummyPoint(3, "Q7322516_guide").pos, sceneData:GetDummyPoint(3, "Q7322516_guide").rot, true, false, 3)
end

function Quest73225:OnSubFinish7322515(arg1)
    print("OnSubFinish7322515")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc4291Data.alias)
end

function Quest73225:OnSubStart7322516(arg1)
    print("OnSubStart7322516")
end

function Quest73225:OnSubFinish7322516(arg1)
    print("OnSubFinish7322516")
    this:NpcCreateWithBlackscreen(arg1, npcs.Npc4291Data.id, 1)
    this:TransmitPlayerById(arg1, 1)
end

function Quest73225:OnSubStart7322520(arg1)
    print("OnSubStart7322520")
    this:CreateQuestNpc(arg1, npcs.Npc4296Data.id, 2)
    this:RequestInteraction(npcs.Npc4291Data.alias)
    this:RequestInteraction(npcs.Npc4296Data.alias)
end

function Quest73225:OnSubFinish7322520(arg1)
    print("OnSubFinish7322520")
    this:ShowBlackScreen(0, 2, 0, function(arg1_2)
        this:TransmitPlayerWithTextById(arg1, 1, datas.TextmapId7322520, 4)
        this:NpcDestroyWithBlackscreen(3, npcs.Npc4291Data.alias)
    end, nil, nil, "", false, true)

    this:NpcDestroyWithBlackscreen(3, npcs.Npc4291Data.alias)
end

function Quest73225:OnSubStart7322524(arg1)
    print("OnSubStart7322524")
    this:CreateQuestNpc(arg1, npcs.Npc4296Data.id, 1)
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc4296Data.id, 1)
        this:CallDelay(1.5, function(arg1)
            local questNpcActor = this:GetQuestNpcActor(npcs.Npc4296Data.alias, 73225)
            this:NpcBeFollowTaskByRoutePointsWithDiffLen(questNpcActor, datas.RoutePointsData, 4, 2, -1, nil, nil, nil, nil, nil, nil, true)
            this:NpcForceAvatarWalkByDist(questNpcActor, 3, 5)
        end)

        actorMgr:CreateActorWithPos("Q7322524TriggerFinish", "Actor/Gadget/Q7322524TriggerFinish", 70900002, 0, sceneData:GetDummyPoint(3, "Q7322511_N20723_3033").pos, sceneData:GetDummyPoint(3, "Q7322511_N20723_3033").rot, true, false, 3)
        actorMgr:CreateActorWithPos("Q7322524TriggerFail", "Actor/Gadget/Q7322524TriggerFail", 70900002, 0, sceneData:GetDummyPoint(3, "Q7322511_N20723_3033").pos, sceneData:GetDummyPoint(3, "Q7322511_N20723_3033").rot, true, false, 3)
    end)
end

function Quest73225:OnSubFinish7322524(arg1)
    print("OnSubFinish7322524")
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc4296Data.alias, 73225)
    questNpcActor:ClearFollowTask()
    this:NpcResetForceAvatarWalk(questNpcActor)
    this:ActorDestroy("Q7322524TriggerFail")
end

function Quest73225:OnSubStart7322525(arg1)
    print("OnSubStart7322525")
end

function Quest73225:OnSubFinish7322525(arg1)
    print("OnSubFinish7322525")
end

function Quest73225:OnSubStart7322511(arg1)
    print("OnSubStart7322511")
    this:NpcCreateWithBlackscreen(arg1, npcs.Npc4296Data.id, 1)
    this:RequestInteraction(npcs.Npc4296Data.alias)
end

function Quest73225:OnSubFinish7322511(arg1)
    print("OnSubFinish7322511")
    this:SafeDestroyQuestNpc(npcs.Npc4296Data.alias, 3)
end

return Quest73225
