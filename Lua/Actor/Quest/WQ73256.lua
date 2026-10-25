require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73256 = class("Quest73256", QuestActorProxy)
Quest73256.defaultAlias = "Quest73256"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points
local datas

function Quest73256:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
    datas = clientData.Datas
end

function Quest73256:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7325601"] = self.OnSubStart7325601,
        ["7325602"] = self.OnSubStart7325602,
        ["7325603"] = self.OnSubStart7325603,
        ["7325620"] = self.OnSubStart7325620,
        ["7325604"] = self.OnSubStart7325604,
        ["7325605"] = self.OnSubStart7325605,
        ["7325606"] = self.OnSubStart7325606,
        ["7325607"] = self.OnSubStart7325607,
        ["7325608"] = self.OnSubStart7325608,
        ["7325626"] = self.OnSubStart7325626,
        ["7325627"] = self.OnSubStart7325627,
        ["7325609"] = self.OnSubStart7325609,
        ["7325610"] = self.OnSubStart7325610,
        ["7325611"] = self.OnSubStart7325611,
        ["7325612"] = self.OnSubStart7325612,
        ["7325621"] = self.OnSubStart7325621,
        ["7325625"] = self.OnSubStart7325625,
        ["7325622"] = self.OnSubStart7325622,
        ["7325613"] = self.OnSubStart7325613,
        ["7325623"] = self.OnSubStart7325623,
        ["7325614"] = self.OnSubStart7325614,
        ["7325616"] = self.OnSubStart7325616,
        ["7325628"] = self.OnSubStart7325628,
        ["7325619"] = self.OnSubStart7325619,
        ["7325629"] = self.OnSubStart7325629,
        ["7325615"] = self.OnSubStart7325615,
        ["7325617"] = self.OnSubStart7325617,
        ["7325630"] = self.OnSubStart7325630,
        ["7325618"] = self.OnSubStart7325618,
        ["7325632"] = self.OnSubStart7325632,
        ["7325624"] = self.OnSubStart7325624,
        ["7325631"] = self.OnSubStart7325631
    }
end

function Quest73256:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7325601"] = self.OnSubFinish7325601,
        ["7325602"] = self.OnSubFinish7325602,
        ["7325603"] = self.OnSubFinish7325603,
        ["7325620"] = self.OnSubFinish7325620,
        ["7325604"] = self.OnSubFinish7325604,
        ["7325605"] = self.OnSubFinish7325605,
        ["7325606"] = self.OnSubFinish7325606,
        ["7325607"] = self.OnSubFinish7325607,
        ["7325608"] = self.OnSubFinish7325608,
        ["7325626"] = self.OnSubFinish7325626,
        ["7325627"] = self.OnSubFinish7325627,
        ["7325609"] = self.OnSubFinish7325609,
        ["7325610"] = self.OnSubFinish7325610,
        ["7325611"] = self.OnSubFinish7325611,
        ["7325612"] = self.OnSubFinish7325612,
        ["7325621"] = self.OnSubFinish7325621,
        ["7325625"] = self.OnSubFinish7325625,
        ["7325622"] = self.OnSubFinish7325622,
        ["7325613"] = self.OnSubFinish7325613,
        ["7325623"] = self.OnSubFinish7325623,
        ["7325614"] = self.OnSubFinish7325614,
        ["7325616"] = self.OnSubFinish7325616,
        ["7325628"] = self.OnSubFinish7325628,
        ["7325619"] = self.OnSubFinish7325619,
        ["7325629"] = self.OnSubFinish7325629,
        ["7325615"] = self.OnSubFinish7325615,
        ["7325617"] = self.OnSubFinish7325617,
        ["7325630"] = self.OnSubFinish7325630,
        ["7325618"] = self.OnSubFinish7325618,
        ["7325632"] = self.OnSubFinish7325632,
        ["7325624"] = self.OnSubFinish7325624,
        ["7325631"] = self.OnSubFinish7325631
    }
end

function Quest73256:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73256:Start()
    print("Start")
end

function Quest73256:OnDestroy()
    print("OnDestroy")
end

function Quest73256:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73256:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73256:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73256:NpcCreateWithBlackscreenInteraction(arg1, arg2, arg3, arg4)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:CreateQuestNpc(arg1, arg2, arg3)
        this:RequestInteraction(arg4)
    end)
end

function Quest73256:NpcDestroyWithBlackscreen(arg1, arg2)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "")
end

function Quest73256:OnSubStart7325601(arg1)
    print("OnSubStart7325601")
    actorMgr:CreateActorWithPos("Q7325601Trigger", "Actor/Gadget/Q7325601Trigger", 70900002, 0, {x = 750.981, y = 145.656, z = 6198.182}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
    actorMgr:CreateActorWithPos("Q7325602Trigger", "Actor/Gadget/Q7325602Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q7325601_guide").pos, sceneData:GetDummyPoint(3, "Q7325601_guide").rot, true, false, 3)
end

function Quest73256:OnSubFinish7325601(arg1)
    print("OnSubFinish7325601")
end

function Quest73256:OnSubStart7325602(arg1)
    print("OnSubStart7325602")
    this:PlayCutsceneIndex(7325602, function(arg1)
        actorUtils.FinishQuestID(false, 7325602)
    end, nil, nil, false)
end

function Quest73256:OnSubFinish7325602(arg1)
    print("OnSubFinish7325602")
end

function Quest73256:OnSubStart7325603(arg1)
    print("OnSubStart7325603")
    actorMgr:CreateActorWithPos("Q7325603Trigger", "Actor/Gadget/Q7325603Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q7325603_guide").pos, sceneData:GetDummyPoint(3, "Q7325603_guide").rot, true, false, 3)
end

function Quest73256:OnSubFinish7325603(arg1)
    print("OnSubFinish7325603")
end

function Quest73256:OnSubStart7325620(arg1)
    print("OnSubStart7325620")
end

function Quest73256:OnSubFinish7325620(arg1)
    print("OnSubFinish7325620")
end

function Quest73256:OnSubStart7325604(arg1)
    print("OnSubStart7325604")
    this:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc4283Data.id, 1, npcs.Npc4283Data.alias)
end

function Quest73256:OnSubFinish7325604(arg1)
    print("OnSubFinish7325604")
end

function Quest73256:OnSubStart7325605(arg1)
    print("OnSubStart7325605")
end

function Quest73256:OnSubFinish7325605(arg1)
    print("OnSubFinish7325605")
    this:NarratorOnlyTaskByData(datas.NarratorWithId05)
    this:SafeDestroyQuestNpc(npcs.Npc4283Data.alias, 3)
end

function Quest73256:OnSubStart7325606(arg1)
    print("OnSubStart7325606")
    actorMgr:CreateActorWithPos("Q7325606Trigger", "Actor/Gadget/Q7325606Trigger", 70900002, 0, {x = 935.825, y = 140.475, z = 6354.327}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest73256:OnSubFinish7325606(arg1)
    print("OnSubFinish7325606")
end

function Quest73256:OnSubStart7325607(arg1)
    print("OnSubStart7325607")
    this:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc4283Data.id, 1, npcs.Npc4283Data.alias)
end

function Quest73256:OnSubFinish7325607(arg1)
    print("OnSubFinish7325607")
end

function Quest73256:OnSubStart7325608(arg1)
    print("OnSubStart7325608")
end

function Quest73256:OnSubFinish7325608(arg1)
    print("OnSubFinish7325608")
    this:NarratorOnlyTaskByData(datas.NarratorWithId08)
end

function Quest73256:OnSubStart7325626(arg1)
    print("OnSubStart7325626")
    actorMgr:CreateActorWithPos("Q7325626Trigger", "Actor/Gadget/Q7325626Trigger", 70900002, 0, points.TPos_Q7325626Trigger.pos, points.TPos_Q7325626Trigger.rot, true, false)
end

function Quest73256:OnSubFinish7325626(arg1)
    print("OnSubFinish7325626")
end

function Quest73256:OnSubStart7325627(arg1)
    print("OnSubStart7325627")
    this:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc4283Data.id, 1, npcs.Npc4283Data.alias)
end

function Quest73256:OnSubFinish7325627(arg1)
    print("OnSubFinish7325627")
end

function Quest73256:OnSubStart7325609(arg1)
    print("OnSubStart7325609")
end

function Quest73256:OnSubFinish7325609(arg1)
    print("OnSubFinish7325609")
end

function Quest73256:OnSubStart7325610(arg1)
    print("OnSubStart7325610")
    this:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc4283Data.id, 1, npcs.Npc4283Data.alias)
end

function Quest73256:OnSubFinish7325610(arg1)
    print("OnSubFinish7325610")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc4283Data.alias)
end

function Quest73256:OnSubStart7325611(arg1)
    print("OnSubStart7325611")
    actorMgr:CreateActorWithPos("Q7325611Trigger", "Actor/Gadget/Q7325611Trigger", 70900002, 0, points.TPos_Q7325611Trigger.pos, points.TPos_Q7325611Trigger.rot, true, false, 3)
end

function Quest73256:OnSubFinish7325611(arg1)
    print("OnSubFinish7325611")
end

function Quest73256:OnSubStart7325612(arg1)
    print("OnSubStart7325612")
    this:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc4283Data.id, 1, npcs.Npc4283Data.alias)
end

function Quest73256:OnSubFinish7325612(arg1)
    print("OnSubFinish7325612")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc4283Data.alias)
end

function Quest73256:OnSubStart7325621(arg1)
    print("OnSubStart7325621")
end

function Quest73256:OnSubFinish7325621(arg1)
    print("OnSubFinish7325621")
    this:NarratorOnlyTaskByData(datas.NarratorWithId21)
    this:CallDelay(3, function(arg1)
        this:EnterSceneLookCamera({x = 984.24, y = 131.85, z = 6454.03}, 0, 3, true, true)
    end)
end

function Quest73256:OnSubStart7325625(arg1)
    print("OnSubStart7325625")
    actorMgr:CreateActorWithPos("Q7325625Trigger", "Actor/Gadget/Q7325625Trigger", 70900002, 0, points.TPos_Q7325625Trigger.pos, points.TPos_Q7325625Trigger.rot, true, false, 3)
end

function Quest73256:OnSubFinish7325625(arg1)
    print("OnSubFinish7325625")
end

function Quest73256:OnSubStart7325622(arg1)
    print("OnSubStart7325622")
end

function Quest73256:OnSubFinish7325622(arg1)
    print("OnSubFinish7325622")
end

function Quest73256:OnSubStart7325613(arg1)
    print("OnSubStart7325613")
    actorMgr:CreateActorWithPos("Q7325613Trigger", "Actor/Gadget/Q7325613Trigger", 70900002, 0, points.TPos_Q7325613Trigger.pos, points.TPos_Q7325613Trigger.rot, true, false, 3)
end

function Quest73256:OnSubFinish7325613(arg1)
    print("OnSubFinish7325613")
end

function Quest73256:OnSubStart7325623(arg1)
    print("OnSubStart7325623")
    this:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc4283Data.id, 1, npcs.Npc4283Data.alias)
end

function Quest73256:OnSubFinish7325623(arg1)
    print("OnSubFinish7325623")
end

function Quest73256:OnSubStart7325614(arg1)
    print("OnSubStart7325614")
    actorMgr:CreateActorWithPos("Q7325614Trigger", "Actor/Gadget/Q7325614Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q7325614_guide").pos, sceneData:GetDummyPoint(3, "Q7325614_guide").rot, true, false, 3)
end

function Quest73256:OnSubFinish7325614(arg1)
    print("OnSubFinish7325614")
    this:NarratorOnlyTaskByData(datas.NarratorWithId14)
end

function Quest73256:OnSubStart7325616(arg1)
    print("OnSubStart7325616")
end

function Quest73256:OnSubFinish7325616(arg1)
    print("OnSubFinish7325616")
end

function Quest73256:OnSubStart7325628(arg1)
    print("OnSubStart7325628")
    this:PlayCutsceneIndex(7325628, function(arg1)
        actorUtils.FinishQuestID(false, 7325628)
    end, nil, nil, false)
end

function Quest73256:OnSubFinish7325628(arg1)
    print("OnSubFinish7325628")
end

function Quest73256:OnSubStart7325619(arg1)
    print("OnSubStart7325619")
    this:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc20883Data.id, 1, npcs.Npc20883Data.alias)
end

function Quest73256:OnSubFinish7325619(arg1)
    print("OnSubFinish7325619")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc20883Data.alias)
end

function Quest73256:OnSubStart7325629(arg1)
    print("OnSubStart7325629")
end

function Quest73256:OnSubFinish7325629(arg1)
    print("OnSubFinish7325629")
end

function Quest73256:OnSubStart7325615(arg1)
    print("OnSubStart7325615")
end

function Quest73256:OnSubFinish7325615(arg1)
    print("OnSubFinish7325615")
end

function Quest73256:OnSubStart7325617(arg1)
    print("OnSubStart7325617")
end

function Quest73256:OnSubFinish7325617(arg1)
    print("OnSubFinish7325617")
end

function Quest73256:OnSubStart7325630(arg1)
    print("OnSubStart7325630")
end

function Quest73256:OnSubFinish7325630(arg1)
    print("OnSubFinish7325630")
end

function Quest73256:OnSubStart7325618(arg1)
    print("OnSubStart7325618")
end

function Quest73256:OnSubFinish7325618(arg1)
    print("OnSubFinish7325618")
end

function Quest73256:OnSubStart7325632(arg1)
    print("OnSubStart7325632")
    actorMgr:CreateActorWithPos("Q7325632Trigger", "Actor/Gadget/Q7325632Trigger", 70900002, 0, points.TPos_Q7325632Trigger.pos, points.TPos_Q7325632Trigger.rot, true, false, 3)
end

function Quest73256:OnSubFinish7325632(arg1)
    print("OnSubFinish7325632")
end

function Quest73256:OnSubStart7325624(arg1)
    print("OnSubStart7325624")
    this:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc4283Data.id, 1, npcs.Npc4283Data.alias)
end

function Quest73256:OnSubFinish7325624(arg1)
    print("OnSubFinish7325624")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc4283Data.alias)
end

function Quest73256:OnSubStart7325631(arg1)
    print("OnSubStart7325631")
end

function Quest73256:OnSubFinish7325631(arg1)
    print("OnSubFinish7325631")
end

return Quest73256
