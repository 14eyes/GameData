require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75188 = class("Quest75188", QuestActorProxy)
Quest75188.defaultAlias = "Quest75188"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest75188:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest75188:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7518802"] = self.OnSubStart7518802,
        ["7518803"] = self.OnSubStart7518803,
        ["7518804"] = self.OnSubStart7518804
    }
end

function Quest75188:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7518802"] = self.OnSubFinish7518802,
        ["7518803"] = self.OnSubFinish7518803,
        ["7518804"] = self.OnSubFinish7518804
    }
end

function Quest75188:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75188:Start()
    print("Start")
end

function Quest75188:OnDestroy()
    print("OnDestroy")
end

function Quest75188:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75188:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75188:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest75188:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest75188:NpcDestroyWithBlackscreen(arg1, arg2)
    globalActor:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "", false, true)
end

function Quest75188:OnSubStart7518802(arg1)
    print("OnSubStart7518802")
    this:CreateQuestNpc(arg1, npcs.Npc6430.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc6430.alias, 75188):DoFreeStyle(4412, true, nil, true, true, false, false)
end

function Quest75188:OnSubFinish7518802(arg1)
    print("OnSubFinish7518802")
end

function Quest75188:OnSubStart7518803(arg1)
    print("OnSubStart7518803")
    this:GetQuestNpcActor(npcs.Npc6430.alias, 75188):DoFreeStyle(4412, true, nil, true, true, false, false)
end

function Quest75188:OnSubFinish7518803(arg1)
    print("OnSubFinish7518803")
end

function Quest75188:OnSubStart7518804(arg1)
    print("OnSubStart7518804")
    this:GetQuestNpcActor(npcs.Npc6430.alias, 75188):DoFreeStyle(4412, true, nil, true, true, false, false)
end

function Quest75188:OnSubFinish7518804(arg1)
    print("OnSubFinish7518804")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc6430.alias)
end

return Quest75188
