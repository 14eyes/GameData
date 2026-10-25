require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73316 = class("Quest73316", QuestActorProxy)
Quest73316.defaultAlias = "Quest73316"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points
local datas

function Quest73316:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
    datas = clientData.Datas
end

function Quest73316:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7331601"] = self.OnSubStart7331601,
        ["7331602"] = self.OnSubStart7331602,
        ["7331603"] = self.OnSubStart7331603,
        ["7331608"] = self.OnSubStart7331608,
        ["7331604"] = self.OnSubStart7331604,
        ["7331605"] = self.OnSubStart7331605,
        ["7331613"] = self.OnSubStart7331613,
        ["7331607"] = self.OnSubStart7331607,
        ["7331609"] = self.OnSubStart7331609
    }
end

function Quest73316:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7331601"] = self.OnSubFinish7331601,
        ["7331602"] = self.OnSubFinish7331602,
        ["7331603"] = self.OnSubFinish7331603,
        ["7331608"] = self.OnSubFinish7331608,
        ["7331604"] = self.OnSubFinish7331604,
        ["7331605"] = self.OnSubFinish7331605,
        ["7331613"] = self.OnSubFinish7331613,
        ["7331607"] = self.OnSubFinish7331607,
        ["7331609"] = self.OnSubFinish7331609
    }
end

function Quest73316:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73316:Start()
    print("Start")
end

function Quest73316:OnDestroy()
    print("OnDestroy")
end

function Quest73316:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73316:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73316:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc20987Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc20962Data.alias, 3)
    actorMgr:DestroyEntityActor("Q7331602Trigger", 3, false)
end

function Quest73316:NpcCreateWithBlackscreenInteraction(arg1, arg2, arg3, arg4)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:CreateQuestNpc(arg1, arg2, arg3)
        this:RequestInteraction(arg4)
    end)
end

function Quest73316:NpcDestroyWithBlackscreen(arg1, arg2)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "")
end

function Quest73316:NpcDestroy(arg1, arg2)
    this:SafeDestroyQuestNpc(arg1, arg2)
end

function Quest73316:OnSubStart7331601(arg1)
    print("OnSubStart7331601")
end

function Quest73316:OnSubFinish7331601(arg1)
    print("OnSubFinish7331601")
end

function Quest73316:OnSubStart7331602(arg1)
    print("OnSubStart7331602")
    actorMgr:CreateActorWithPos("Q7331602Trigger", "Actor/Gadget/Q7331602Trigger", 70900002, 0, points.TPos_Q7331602Trigger.pos, points.TPos_Q7331602Trigger.rot, true, false, 3)
end

function Quest73316:OnSubFinish7331602(arg1)
    print("OnSubFinish7331602")
end

function Quest73316:OnSubStart7331603(arg1)
    print("OnSubStart7331603")
    this:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc20987Data.id, 1, npcs.Npc20987Data.alias)
end

function Quest73316:OnSubFinish7331603(arg1)
    print("OnSubFinish7331603")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc20987Data.alias)
end

function Quest73316:OnSubStart7331608(arg1)
    print("OnSubStart7331608")
end

function Quest73316:OnSubFinish7331608(arg1)
    print("OnSubFinish7331608")
    this:NarratorOnlyTaskByData(datas.Narrator_7331602)
end

function Quest73316:OnSubStart7331604(arg1)
    print("OnSubStart7331604")
end

function Quest73316:OnSubFinish7331604(arg1)
    print("OnSubFinish7331604")
end

function Quest73316:OnSubStart7331605(arg1)
    print("OnSubStart7331605")
    this:CreateQuestNpc(arg1, npcs.Npc20962Data.id, 1)
end

function Quest73316:OnSubFinish7331605(arg1)
    print("OnSubFinish7331605")
end

function Quest73316:OnSubStart7331613(arg1)
    print("OnSubStart7331613")
end

function Quest73316:OnSubFinish7331613(arg1)
    print("OnSubFinish7331613")
end

function Quest73316:OnSubStart7331607(arg1)
    print("OnSubStart7331607")
end

function Quest73316:OnSubFinish7331607(arg1)
    print("OnSubFinish7331607")
    this:ActionSafeCall(function(arg1)
        this:CallDelay(1.5, function(arg1)
            this:NpcDestroy(npcs.Npc20962Data.alias, 3)
        end)
    end)
end

function Quest73316:OnSubStart7331609(arg1)
    print("OnSubStart7331609")
end

function Quest73316:OnSubFinish7331609(arg1)
    print("OnSubFinish7331609")
end

return Quest73316
