require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76044 = class("Quest76044", QuestActorProxy)
Quest76044.defaultAlias = "Quest76044"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest76044:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest76044:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7604401"] = self.OnSubStart7604401, ["7604402"] = self.OnSubStart7604402}
end

function Quest76044:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7604401"] = self.OnSubFinish7604401, ["7604402"] = self.OnSubFinish7604402}
end

function Quest76044:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest76044:Start()
    print("Start")
end

function Quest76044:OnDestroy()
    print("OnDestroy")
end

function Quest76044:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76044:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76044:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest76044:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest76044:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest76044:NpcCreateWithActionSafeCall(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg3, arg2, arg1)
    end)
end

function Quest76044:OnSubStart7604401(arg1)
    print("OnSubStart7604401")
    this:NpcCreateWithNpcTrigger(npcs.Npc1316.id, 0, 15, 7604401)
    this:CreateQuestNpc(arg1, npcs.Npc1317.id, 0, false, 0)
end

function Quest76044:OnSubFinish7604401(arg1)
    print("OnSubFinish7604401")
    this:SafeDestroyQuestNpc(npcs.Npc1316.alias, 1205)
    this:SafeDestroyQuestNpc(npcs.Npc1317.alias, 1205)
end

function Quest76044:OnSubStart7604402(arg1)
    print("OnSubStart7604402")
    this:ActionSafeCall(function(arg1_2)
        this:NpcCreateWithActionSafeCall(0, npcs.Npc7012.id, arg1)
        this:GetQuestNpcActor(npcs.Npc7012.alias, 76044):DoFreeStyle(1230, true, nil, true, true, false, false)
    end)
end

function Quest76044:OnSubFinish7604402(arg1)
    print("OnSubFinish7604402")
    this:SafeDestroyQuestNpc(npcs.Npc7012.alias, 1204)
end

return Quest76044
