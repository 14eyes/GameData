require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75278 = class("Quest75278", QuestActorProxy)
Quest75278.defaultAlias = "Quest75278"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest75278:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest75278:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7527802"] = self.OnSubStart7527802, ["7527801"] = self.OnSubStart7527801}
end

function Quest75278:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7527802"] = self.OnSubFinish7527802, ["7527801"] = self.OnSubFinish7527801}
end

function Quest75278:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75278:Start()
    print("Start")
end

function Quest75278:OnDestroy()
    print("OnDestroy")
end

function Quest75278:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75278:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75278:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest75278:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest75278:NpcDestroyWithBlackscreen(arg1, arg2)
    globalActor:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "", false, true)
end

function Quest75278:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest75278:OnSubStart7527802(arg1)
    print("OnSubStart7527802")
end

function Quest75278:OnSubFinish7527802(arg1)
    print("OnSubFinish7527802")
end

function Quest75278:OnSubStart7527801(arg1)
    print("OnSubStart7527801")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7527801, 0, 15, 2, npcs.Npc21960.id)
end

function Quest75278:OnSubFinish7527801(arg1)
    print("OnSubFinish7527801")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc6503.alias)
    this:NpcDestroyWithBlackscreen(3, npcs.Npc21960.alias)
end

return Quest75278
