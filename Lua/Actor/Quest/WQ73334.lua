require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73334 = class("Quest73334", QuestActorProxy)
Quest73334.defaultAlias = "Quest73334"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points
local datas

function Quest73334:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
    datas = clientData.Datas
end

function Quest73334:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7333401"] = self.OnSubStart7333401,
        ["7333402"] = self.OnSubStart7333402,
        ["7333403"] = self.OnSubStart7333403,
        ["7333408"] = self.OnSubStart7333408,
        ["7333404"] = self.OnSubStart7333404,
        ["7333405"] = self.OnSubStart7333405,
        ["7333406"] = self.OnSubStart7333406,
        ["7333410"] = self.OnSubStart7333410,
        ["7333411"] = self.OnSubStart7333411,
        ["7333413"] = self.OnSubStart7333413,
        ["7333407"] = self.OnSubStart7333407,
        ["7333409"] = self.OnSubStart7333409
    }
end

function Quest73334:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7333401"] = self.OnSubFinish7333401,
        ["7333402"] = self.OnSubFinish7333402,
        ["7333403"] = self.OnSubFinish7333403,
        ["7333408"] = self.OnSubFinish7333408,
        ["7333404"] = self.OnSubFinish7333404,
        ["7333405"] = self.OnSubFinish7333405,
        ["7333406"] = self.OnSubFinish7333406,
        ["7333410"] = self.OnSubFinish7333410,
        ["7333411"] = self.OnSubFinish7333411,
        ["7333413"] = self.OnSubFinish7333413,
        ["7333407"] = self.OnSubFinish7333407,
        ["7333409"] = self.OnSubFinish7333409
    }
end

function Quest73334:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73334:Start()
    print("Start")
end

function Quest73334:OnDestroy()
    print("OnDestroy")
end

function Quest73334:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73334:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73334:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc20987Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc20964Data.alias, 3)
    actorMgr:DestroyEntityActor("Q7333402Trigger", 3, false)
end

function Quest73334:NpcCreateWithBlackscreenInteraction(arg1, arg2, arg3, arg4)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:CreateQuestNpc(arg1, arg2, arg3)
        this:RequestInteraction(arg4)
    end)
end

function Quest73334:NpcDestroyWithBlackscreen(arg1, arg2)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "")
end

function Quest73334:NpcDestroy(arg1, arg2)
    this:SafeDestroyQuestNpc(arg1, arg2)
end

function Quest73334:OnSubStart7333401(arg1)
    print("OnSubStart7333401")
end

function Quest73334:OnSubFinish7333401(arg1)
    print("OnSubFinish7333401")
end

function Quest73334:OnSubStart7333402(arg1)
    print("OnSubStart7333402")
    actorMgr:CreateActorWithPos("Q7333402Trigger", "Actor/Gadget/Q7333402Trigger", 70900002, 0, points.TPos_Q7333402Trigger.pos, points.TPos_Q7333402Trigger.rot, true, false, 3)
end

function Quest73334:OnSubFinish7333402(arg1)
    print("OnSubFinish7333402")
end

function Quest73334:OnSubStart7333403(arg1)
    print("OnSubStart7333403")
    this:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc20987Data.id, 1, npcs.Npc20987Data.alias)
end

function Quest73334:OnSubFinish7333403(arg1)
    print("OnSubFinish7333403")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc20987Data.alias)
end

function Quest73334:OnSubStart7333408(arg1)
    print("OnSubStart7333408")
end

function Quest73334:OnSubFinish7333408(arg1)
    print("OnSubFinish7333408")
    this:NarratorOnlyTaskByData(datas.Narrator_7333402)
end

function Quest73334:OnSubStart7333404(arg1)
    print("OnSubStart7333404")
end

function Quest73334:OnSubFinish7333404(arg1)
    print("OnSubFinish7333404")
end

function Quest73334:OnSubStart7333405(arg1)
    print("OnSubStart7333405")
    this:CreateQuestNpc(arg1, npcs.Npc20964Data.id, 1)
end

function Quest73334:OnSubFinish7333405(arg1)
    print("OnSubFinish7333405")
end

function Quest73334:OnSubStart7333406(arg1)
    print("OnSubStart7333406")
end

function Quest73334:OnSubFinish7333406(arg1)
    print("OnSubFinish7333406")
end

function Quest73334:OnSubStart7333410(arg1)
    print("OnSubStart7333410")
end

function Quest73334:OnSubFinish7333410(arg1)
    print("OnSubFinish7333410")
end

function Quest73334:OnSubStart7333411(arg1)
    print("OnSubStart7333411")
end

function Quest73334:OnSubFinish7333411(arg1)
    print("OnSubFinish7333411")
end

function Quest73334:OnSubStart7333413(arg1)
    print("OnSubStart7333413")
end

function Quest73334:OnSubFinish7333413(arg1)
    print("OnSubFinish7333413")
end

function Quest73334:OnSubStart7333407(arg1)
    print("OnSubStart7333407")
end

function Quest73334:OnSubFinish7333407(arg1)
    print("OnSubFinish7333407")
    this:ActionSafeCall(function(arg1)
        this:CallDelay(1.5, function(arg1)
            this:NpcDestroy(npcs.Npc20964Data.alias, 3)
        end)
    end)
end

function Quest73334:OnSubStart7333409(arg1)
    print("OnSubStart7333409")
end

function Quest73334:OnSubFinish7333409(arg1)
    print("OnSubFinish7333409")
end

return Quest73334
