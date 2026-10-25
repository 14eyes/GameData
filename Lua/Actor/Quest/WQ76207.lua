require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76207 = class("Quest76207", QuestActorProxy)
Quest76207.defaultAlias = "Quest76207"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest76207:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest76207:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7620701"] = self.OnSubStart7620701,
        ["7620702"] = self.OnSubStart7620702,
        ["7620703"] = self.OnSubStart7620703
    }
end

function Quest76207:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7620701"] = self.OnSubFinish7620701,
        ["7620702"] = self.OnSubFinish7620702,
        ["7620703"] = self.OnSubFinish7620703
    }
end

function Quest76207:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest76207:Start()
    print("Start")
end

function Quest76207:OnDestroy()
    print("OnDestroy")
end

function Quest76207:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76207:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76207:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest76207:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest76207:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest76207:NpcDestroyWithBlackscreen(arg1, arg2)
    globalActor:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "", false, true)
end

function Quest76207:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest76207:OnSubStart7620701(arg1)
    print("OnSubStart7620701")
    this:NpcCreateWithNpcTrigger(npcs.Npc22309.id, 0, 3, 7620701)
end

function Quest76207:OnSubFinish7620701(arg1)
    print("OnSubFinish7620701")
end

function Quest76207:OnSubStart7620702(arg1)
    print("OnSubStart7620702")
end

function Quest76207:OnSubFinish7620702(arg1)
    print("OnSubFinish7620702")
    this:NpcDestroyWithBlackscreen(103, npcs.Npc22309.alias)
end

function Quest76207:OnSubStart7620703(arg1)
    print("OnSubStart7620703")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7620703, 0, 30, 2, npcs.Npc7682.id)
end

function Quest76207:OnSubFinish7620703(arg1)
    print("OnSubFinish7620703")
    this:NpcDestroyWithBlackscreen(103, npcs.Npc7682.alias)
end

return Quest76207
