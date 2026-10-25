require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73238 = class("Quest73238", QuestActorProxy)
Quest73238.defaultAlias = "Quest73238"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points
local datas

function Quest73238:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
    datas = clientData.Datas
end

function Quest73238:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7323840"] = self.OnSubStart7323840,
        ["7323842"] = self.OnSubStart7323842,
        ["7323841"] = self.OnSubStart7323841,
        ["7323801"] = self.OnSubStart7323801,
        ["7323803"] = self.OnSubStart7323803,
        ["7323833"] = self.OnSubStart7323833,
        ["7323804"] = self.OnSubStart7323804,
        ["7323838"] = self.OnSubStart7323838,
        ["7323837"] = self.OnSubStart7323837,
        ["7323806"] = self.OnSubStart7323806,
        ["7323807"] = self.OnSubStart7323807,
        ["7323830"] = self.OnSubStart7323830,
        ["7323808"] = self.OnSubStart7323808,
        ["7323831"] = self.OnSubStart7323831,
        ["7323809"] = self.OnSubStart7323809,
        ["7323816"] = self.OnSubStart7323816,
        ["7323817"] = self.OnSubStart7323817,
        ["7323820"] = self.OnSubStart7323820,
        ["7323821"] = self.OnSubStart7323821,
        ["7323822"] = self.OnSubStart7323822,
        ["7323835"] = self.OnSubStart7323835,
        ["7323836"] = self.OnSubStart7323836,
        ["7323823"] = self.OnSubStart7323823,
        ["7323824"] = self.OnSubStart7323824,
        ["7323826"] = self.OnSubStart7323826,
        ["7323827"] = self.OnSubStart7323827,
        ["7323839"] = self.OnSubStart7323839,
        ["7323829"] = self.OnSubStart7323829,
        ["7323832"] = self.OnSubStart7323832,
        ["7323825"] = self.OnSubStart7323825,
        ["7323834"] = self.OnSubStart7323834
    }
end

function Quest73238:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7323840"] = self.OnSubFinish7323840,
        ["7323842"] = self.OnSubFinish7323842,
        ["7323841"] = self.OnSubFinish7323841,
        ["7323801"] = self.OnSubFinish7323801,
        ["7323803"] = self.OnSubFinish7323803,
        ["7323833"] = self.OnSubFinish7323833,
        ["7323804"] = self.OnSubFinish7323804,
        ["7323838"] = self.OnSubFinish7323838,
        ["7323837"] = self.OnSubFinish7323837,
        ["7323806"] = self.OnSubFinish7323806,
        ["7323807"] = self.OnSubFinish7323807,
        ["7323830"] = self.OnSubFinish7323830,
        ["7323808"] = self.OnSubFinish7323808,
        ["7323831"] = self.OnSubFinish7323831,
        ["7323809"] = self.OnSubFinish7323809,
        ["7323816"] = self.OnSubFinish7323816,
        ["7323817"] = self.OnSubFinish7323817,
        ["7323820"] = self.OnSubFinish7323820,
        ["7323821"] = self.OnSubFinish7323821,
        ["7323822"] = self.OnSubFinish7323822,
        ["7323835"] = self.OnSubFinish7323835,
        ["7323836"] = self.OnSubFinish7323836,
        ["7323823"] = self.OnSubFinish7323823,
        ["7323824"] = self.OnSubFinish7323824,
        ["7323826"] = self.OnSubFinish7323826,
        ["7323827"] = self.OnSubFinish7323827,
        ["7323839"] = self.OnSubFinish7323839,
        ["7323829"] = self.OnSubFinish7323829,
        ["7323832"] = self.OnSubFinish7323832,
        ["7323825"] = self.OnSubFinish7323825,
        ["7323834"] = self.OnSubFinish7323834
    }
end

function Quest73238:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73238:Start()
    print("Start")
end

function Quest73238:OnDestroy()
    print("OnDestroy")
end

function Quest73238:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73238:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73238:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.PaimonData.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc20987Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc20987Data.alias, 0)
    this:SafeDestroyQuestNpc(npcs.Npc4283Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc20927Data.alias, 3)
    actorMgr:DestroyEntityActor("Q7323803Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q7323806Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q7323808Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q7323816Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q7323820Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q7323822Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q7323824Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q7323826Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q7323832Trigger", 0, false)
    actorMgr:DestroyEntityActor("Q7323833Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q7323834Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q7323835Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q7323836Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q7323839Trigger", 3, false)
end

function Quest73238:NpcCreateWithBlackscreenInteraction(arg1, arg2, arg3, arg4)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:CreateQuestNpc(arg1, arg2, arg3)
        this:RequestInteraction(arg4)
    end)
end

function Quest73238:NpcDestroyWithBlackscreen(arg1, arg2)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "")
end

function Quest73238:NpcCreateWithActionSafeCall(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, arg2, arg3)
    end)
end

function Quest73238:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, arg5)
end

function Quest73238:OnSubStart7323840(arg1)
    print("OnSubStart7323840")
    actorMgr:CreateActorWithPos("Q7323841Trigger", "Actor/Gadget/Q7323841Trigger", 70900002, 0, points.TPos_Q7323841Trigger.pos, points.TPos_Q7323841Trigger.rot, true, false, 3)
end

function Quest73238:OnSubFinish7323840(arg1)
    print("OnSubFinish7323840")
    this:ActionSafeCall(function(arg1)
        this:NarratorOnlyTaskByData(datas.Narrator_732389945)
    end)
end

function Quest73238:OnSubStart7323842(arg1)
    print("OnSubStart7323842")
end

function Quest73238:OnSubFinish7323842(arg1)
    print("OnSubFinish7323842")
end

function Quest73238:OnSubStart7323841(arg1)
    print("OnSubStart7323841")
    this:NpcCreateWithBlackscreenInteraction(arg1, npcs.PaimonData.id, 1, npcs.PaimonData.alias)
end

function Quest73238:OnSubFinish7323841(arg1)
    print("OnSubFinish7323841")
    this:NpcDestroyWithBlackscreen(3, npcs.PaimonData.alias)
end

function Quest73238:OnSubStart7323801(arg1)
    print("OnSubStart7323801")
    this:CreateQuestNpc(arg1, npcs.Npc4019Data.id, 1)
end

function Quest73238:OnSubFinish7323801(arg1)
    print("OnSubFinish7323801")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc4019Data.alias)
end

function Quest73238:OnSubStart7323803(arg1)
    print("OnSubStart7323803")
    actorMgr:CreateActorWithPos("Q7323803Trigger", "Actor/Gadget/Q7323803Trigger", 70900002, 0, points.TPos_Q7323803Trigger.pos, points.TPos_Q7323803Trigger.rot, true, false, 3)
end

function Quest73238:OnSubFinish7323803(arg1)
    print("OnSubFinish7323803")
    this:ActionSafeCall(function(arg1)
        this:NarratorOnlyTaskByData(datas.Narrator_732389920)
    end)

    this:EnterSceneLookCamera({x = 583.6, y = 596.7, z = 6008.6}, 0, 3, false, false)
end

function Quest73238:OnSubStart7323833(arg1)
    print("OnSubStart7323833")
    actorMgr:CreateActorWithPos("Q7323833Trigger", "Actor/Gadget/Q7323833Trigger", 70900002, 0, points.TPos_Q7323833Trigger.pos, points.TPos_Q7323833Trigger.rot, true, false, 3)
end

function Quest73238:OnSubFinish7323833(arg1)
    print("OnSubFinish7323833")
    this:NarratorOnlyTaskByData(datas.Narrator_732389922)
    this:ActionSafeCall(function(arg1)
        this:CallDelay(2, function(arg1)
            this:EnterSceneLookCamera({x = -53.402, y = 215.864, z = 6196.65}, 0, 2, false, false)
        end)
    end)
end

function Quest73238:OnSubStart7323804(arg1)
    print("OnSubStart7323804")
    this:CreateQuestNpc(arg1, npcs.Npc20927Data.id, 1)
end

function Quest73238:OnSubFinish7323804(arg1)
    print("OnSubFinish7323804")
    this:ActionSafeCall(function(arg1)
        this:NarratorOnlyTaskByData(datas.Narrator_732389934)
    end)

    this:NpcDestroyWithBlackscreen(3, npcs.Npc20927Data.alias)
end

function Quest73238:OnSubStart7323838(arg1)
    print("OnSubStart7323838")
    this:ActionSafeCall(function(arg1)
        this:NotifyTo(npcs.Npc20927Data.alias, 1, true)
    end)
end

function Quest73238:OnSubFinish7323838(arg1)
    print("OnSubFinish7323838")
end

function Quest73238:OnSubStart7323837(arg1)
    print("OnSubStart7323837")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc20927Data.id, 7323837, 1, 30, 1)
    this:NotifyTo(npcs.Npc20927Data.alias, 0, true)
end

function Quest73238:OnSubFinish7323837(arg1)
    print("OnSubFinish7323837")
    this:ActionSafeCall(function(arg1)
        this:NarratorOnlyTaskByData(datas.Narrator_732389901)
    end)

    this:NpcDestroyWithBlackscreen(3, npcs.Npc20927Data.alias)
end

function Quest73238:OnSubStart7323806(arg1)
    print("OnSubStart7323806")
    actorMgr:CreateActorWithPos("Q7323806Trigger", "Actor/Gadget/Q7323806Trigger", 70900002, 0, points.TPos_Q7323806Trigger.pos, points.TPos_Q7323806Trigger.rot, true, false, 3)
    this:LightNotifyTo(npcs.Npc20987Data.alias, 0, true)
end

function Quest73238:OnSubFinish7323806(arg1)
    print("OnSubFinish7323806")
    this:ActionSafeCall(function(arg1)
        this:NarratorOnlyTaskByData(datas.Narrator_732389906)
    end)
end

function Quest73238:OnSubStart7323807(arg1)
    print("OnSubStart7323807")
end

function Quest73238:OnSubFinish7323807(arg1)
    print("OnSubFinish7323807")
end

function Quest73238:OnSubStart7323830(arg1)
    print("OnSubStart7323830")
    this:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc20987Data.id, 1, npcs.Npc20987Data.alias)
end

function Quest73238:OnSubFinish7323830(arg1)
    print("OnSubFinish7323830")
    this:ActionSafeCall(function(arg1)
        this:NarratorOnlyTaskByData(datas.Narrator_732389910)
    end)

    this:NpcDestroyWithBlackscreen(3, npcs.Npc20987Data.alias)
end

function Quest73238:OnSubStart7323808(arg1)
    print("OnSubStart7323808")
    actorMgr:CreateActorWithPos("Q7323808Trigger", "Actor/Gadget/Q7323808Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "guide_Q7323808").pos, sceneData:GetDummyPoint(3, "guide_Q7323808").rot, true, false, 3)
end

function Quest73238:OnSubFinish7323808(arg1)
    print("OnSubFinish7323808")
end

function Quest73238:OnSubStart7323831(arg1)
    print("OnSubStart7323831")
    this:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc20987Data.id, 1, npcs.Npc20987Data.alias)
end

function Quest73238:OnSubFinish7323831(arg1)
    print("OnSubFinish7323831")
    this:SafeDestroyQuestNpc(npcs.Npc20987Data.alias, 3)
end

function Quest73238:OnSubStart7323809(arg1)
    print("OnSubStart7323809")
end

function Quest73238:OnSubFinish7323809(arg1)
    print("OnSubFinish7323809")
    this:NarratorOnlyTaskByData(datas.Narrator_732389913)
end

function Quest73238:OnSubStart7323816(arg1)
    print("OnSubStart7323816")
    actorMgr:CreateActorWithPos("Q7323816Trigger", "Actor/Gadget/Q7323816Trigger", 70900002, 0, points.TPos_Q7323816Trigger.pos, points.TPos_Q7323816Trigger.rot, true, false, 3)
end

function Quest73238:OnSubFinish7323816(arg1)
    print("OnSubFinish7323816")
end

function Quest73238:OnSubStart7323817(arg1)
    print("OnSubStart7323817")
    this:CreateQuestNpc(arg1, npcs.Npc4283Data.id, 1)
end

function Quest73238:OnSubFinish7323817(arg1)
    print("OnSubFinish7323817")
    this:ActionSafeCall(function(arg1)
        this:NarratorOnlyTaskByData(datas.Narrator_732389916)
    end)

    this:ShowBlackScreenWithDialogText(0, 2, 0, nil, nil, nil, 0, false, false)
    this:NpcDestroyWithBlackscreen(3, npcs.Npc4283Data.alias)
end

function Quest73238:OnSubStart7323820(arg1)
    print("OnSubStart7323820")
    actorMgr:CreateActorWithPos("Q7323820Trigger", "Actor/Gadget/Q7323820Trigger", 70900002, 0, {x = 502.715, y = 323.739, z = 6209.426}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
    this:ActionSafeCall(function(arg1)
        this:NotifyTo(npcs.Npc4283Data.alias, 1, true)
    end)
end

function Quest73238:OnSubFinish7323820(arg1)
    print("OnSubFinish7323820")
end

function Quest73238:OnSubStart7323821(arg1)
    print("OnSubStart7323821")
    this:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc4283Data.id, 1, npcs.Npc4283Data.alias)
end

function Quest73238:OnSubFinish7323821(arg1)
    print("OnSubFinish7323821")
end

function Quest73238:OnSubStart7323822(arg1)
    print("OnSubStart7323822")
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc4283Data.id, 1)
    actorMgr:CreateActorWithPos("Q7323822Trigger", "Actor/Gadget/Q7323822Trigger", 70900002, 0, points.TPos_Q7323822Trigger.pos, points.TPos_Q7323822Trigger.rot, true, false, 3)
    actorMgr:CreateActorWithPos("Q7323825Trigger", "Actor/Gadget/Q7323825Trigger", 70900002, 0, points.TPos_Q7323825Trigger.pos, points.TPos_Q7323825Trigger.rot, true, false, 3)
end

function Quest73238:OnSubFinish7323822(arg1)
    print("OnSubFinish7323822")
end

function Quest73238:OnSubStart7323835(arg1)
    print("OnSubStart7323835")
    this:CreateQuestNpc(arg1, npcs.Npc4283Data.id, 1)
    actorMgr:CreateActorWithPos("Q7323835Trigger", "Actor/Gadget/Q7323835Trigger", 70900002, 0, points.TPos_Q7323835Trigger.pos, points.TPos_Q7323835Trigger.rot, true, false, 3)
end

function Quest73238:OnSubFinish7323835(arg1)
    print("OnSubFinish7323835")
    this:SafeDestroyQuestNpc(npcs.Npc4283Data.alias, 3)
end

function Quest73238:OnSubStart7323836(arg1)
    print("OnSubStart7323836")
    this:CreateQuestNpc(arg1, npcs.Npc4283Data.id, 1)
    actorMgr:CreateActorWithPos("Q7323836Trigger", "Actor/Gadget/Q7323836Trigger", 70900002, 0, points.TPos_Q7323836Trigger.pos, points.TPos_Q7323836Trigger.rot, true, false, 3)
end

function Quest73238:OnSubFinish7323836(arg1)
    print("OnSubFinish7323836")
    this:SafeDestroyQuestNpc(npcs.Npc4283Data.alias, 3)
end

function Quest73238:OnSubStart7323823(arg1)
    print("OnSubStart7323823")
    this:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc20987Data.id, 1, npcs.Npc20987Data.alias)
end

function Quest73238:OnSubFinish7323823(arg1)
    print("OnSubFinish7323823")
    this:LightNotifyTo(npcs.Npc4283Data.alias, 0, true)
    this:NpcDestroyWithBlackscreen(3, npcs.Npc20987Data.alias)
end

function Quest73238:OnSubStart7323824(arg1)
    print("OnSubStart7323824")
    actorMgr:CreateActorWithPos("Q7323824Trigger", "Actor/Gadget/Q7323824Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "guide_Q7323824").pos, sceneData:GetDummyPoint(3, "guide_Q7323824").rot, true, false, 3)
end

function Quest73238:OnSubFinish7323824(arg1)
    print("OnSubFinish7323824")
    this:EnterSceneLookCamera(sceneData:GetDummyPoint(3, "DUMMY_POS 331700005").pos, 0, 2, false, false)
    this:NarratorOnlyTaskByData(datas.Narrator_732389925)
end

function Quest73238:OnSubStart7323826(arg1)
    print("OnSubStart7323826")
    actorMgr:CreateActorWithPos("Q7323826Trigger", "Actor/Gadget/Q7323826Trigger", 70900002, 0, points.TPos_Q7323826Trigger.pos, points.TPos_Q7323826Trigger.rot, true, false, 3)
end

function Quest73238:OnSubFinish7323826(arg1)
    print("OnSubFinish7323826")
end

function Quest73238:OnSubStart7323827(arg1)
    print("OnSubStart7323827")
    this:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc20987Data.id, 1, npcs.Npc20987Data.alias)
end

function Quest73238:OnSubFinish7323827(arg1)
    print("OnSubFinish7323827")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc20987Data.alias)
end

function Quest73238:OnSubStart7323839(arg1)
    print("OnSubStart7323839")
    actorMgr:CreateActorWithPos("Q7323839Trigger", "Actor/Gadget/Q7323839Trigger", 70900002, 0, points.TPos_Q7323839Trigger.pos, points.TPos_Q7323839Trigger.rot, true, false, 3)
end

function Quest73238:OnSubFinish7323839(arg1)
    print("OnSubFinish7323839")
    this:ActionSafeCall(function(arg1)
        this:NarratorOnlyTaskByData(datas.Narrator_732389935)
    end)
end

function Quest73238:OnSubStart7323829(arg1)
    print("OnSubStart7323829")
    this:CreateQuestNpc(arg1, npcs.Npc4284Data.id, 1)
end

function Quest73238:OnSubFinish7323829(arg1)
    print("OnSubFinish7323829")
    this:ActionSafeCall(function(arg1)
        this:NarratorOnlyTaskByData(datas.Narrator_732389927)
    end)

    this:NpcDestroyWithBlackscreen(3, npcs.Npc4284Data.alias)
end

function Quest73238:OnSubStart7323832(arg1)
    print("OnSubStart7323832")
    actorMgr:CreateActorWithPos("Q7323832Trigger", "Actor/Gadget/Q7323832Trigger", 70900002, 0, points.TPos_Q7323832Trigger.pos, points.TPos_Q7323832Trigger.rot, true, false)
end

function Quest73238:OnSubFinish7323832(arg1)
    print("OnSubFinish7323832")
end

function Quest73238:OnSubStart7323825(arg1)
    print("OnSubStart7323825")
end

function Quest73238:OnSubFinish7323825(arg1)
    print("OnSubFinish7323825")
end

function Quest73238:OnSubStart7323834(arg1)
    print("OnSubStart7323834")
end

function Quest73238:OnSubFinish7323834(arg1)
    print("OnSubFinish7323834")
end

return Quest73238
