require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75651 = class("Quest75651", QuestActorProxy)
Quest75651.defaultAlias = "Quest75651"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs

function Quest75651:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest75651:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7565101"] = self.OnSubStart7565101}
end

function Quest75651:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7565101"] = self.OnSubFinish7565101}
end

function Quest75651:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75651:Start()
    print("Start")
end

function Quest75651:OnDestroy()
    print("OnDestroy")
end

function Quest75651:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75651:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75651:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:SafeDestroyQuestNpc(npcs.Npc5026Data.alias, 3)
    this:DestroyNpcTrigger("Q7565101N5026Trigger")
end

function Quest75651:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, 2)
end

function Quest75651:OnSubStart7565101(arg1)
    print("OnSubStart7565101")
    this:NpcCreateWithNpcTrigger(npcs.Npc5026Data.id, 7565101, 0, 10)
end

function Quest75651:OnSubFinish7565101(arg1)
    print("OnSubFinish7565101")
    this:SafeDestroyQuestNpc(npcs.Npc5026Data.alias, 3)
    this:ActionSafeCall(function(arg1)
        actorUtils.ShowContext("PhotoGraphV5DetailPage")
    end)
end

return Quest75651
