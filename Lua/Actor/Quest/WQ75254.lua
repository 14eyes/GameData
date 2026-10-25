require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75254 = class("Quest75254", QuestActorProxy)
Quest75254.defaultAlias = "Quest75254"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest75254:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest75254:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7525401"] = self.OnSubStart7525401,
        ["7525402"] = self.OnSubStart7525402,
        ["7525403"] = self.OnSubStart7525403
    }
end

function Quest75254:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7525401"] = self.OnSubFinish7525401,
        ["7525402"] = self.OnSubFinish7525402,
        ["7525403"] = self.OnSubFinish7525403
    }
end

function Quest75254:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75254:Start()
    print("Start")
end

function Quest75254:OnDestroy()
    print("OnDestroy")
end

function Quest75254:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75254:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75254:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest75254:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest75254:NpcDestroyWithBlackscreen(arg1, arg2)
    globalActor:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "", false, true)
end

function Quest75254:OnSubStart7525401(arg1)
    print("OnSubStart7525401")
    this:CreateQuestNpc(arg1, npcs.Npc6512.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc6512.alias, 75254):DoFreeStyle(1200, true, nil, true, true, false, true)
end

function Quest75254:OnSubFinish7525401(arg1)
    print("OnSubFinish7525401")
end

function Quest75254:OnSubStart7525402(arg1)
    print("OnSubStart7525402")
    this:GetQuestNpcActor(npcs.Npc6512.alias, 75254):DoFreeStyle(1200, true, nil, true, true, false, false)
end

function Quest75254:OnSubFinish7525402(arg1)
    print("OnSubFinish7525402")
end

function Quest75254:OnSubStart7525403(arg1)
    print("OnSubStart7525403")
    this:GetQuestNpcActor(npcs.Npc6512.alias, 75254):DoFreeStyle(1200, true, nil, true, true, false, false)
end

function Quest75254:OnSubFinish7525403(arg1)
    print("OnSubFinish7525403")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc6512.alias)
end

return Quest75254
