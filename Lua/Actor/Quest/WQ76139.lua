require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76139 = class("Quest76139", QuestActorProxy)
Quest76139.defaultAlias = "Quest76139"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest76139:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest76139:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7613901"] = self.OnSubStart7613901}
end

function Quest76139:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7613901"] = self.OnSubFinish7613901}
end

function Quest76139:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest76139:Start()
    print("Start")
end

function Quest76139:OnDestroy()
    print("OnDestroy")
end

function Quest76139:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76139:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76139:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest76139:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest76139:NpcCreateWithActionSafeCall(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg3, arg2, arg1)
    end)
end

function Quest76139:OnSubStart7613901(arg1)
    print("OnSubStart7613901")
    this:ActionSafeCall(function(arg1_2)
        this:NpcCreateWithActionSafeCall(0, npcs.Npc7008.id, arg1)
        this:GetQuestNpcActor(npcs.Npc7008.alias, 76139):DoFreeStyle(1190, true, nil, true, true, false, false)
    end)
end

function Quest76139:OnSubFinish7613901(arg1)
    print("OnSubFinish7613901")
    this:SafeDestroyQuestNpc(npcs.Npc7008.alias, 3)
end

return Quest76139
