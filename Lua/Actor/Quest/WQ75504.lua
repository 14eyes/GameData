require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75504 = class("Quest75504", QuestActorProxy)
Quest75504.defaultAlias = "Quest75504"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest75504:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest75504:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7550401"] = self.OnSubStart7550401}
end

function Quest75504:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7550401"] = self.OnSubFinish7550401}
end

function Quest75504:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75504:Start()
    print("Start")
end

function Quest75504:OnDestroy()
    print("OnDestroy")
end

function Quest75504:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75504:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75504:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:SafeDestroyQuestNpc(npcs.Npc30609.alias, 3)
end

function Quest75504:OnSubStart7550401(arg1)
    print("OnSubStart7550401")
    this:CreateQuestNpc(arg1, npcs.Npc30609.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc30609.alias, 75504):DoFreeStyle(1230, true, nil, true, true, false, false)
end

function Quest75504:OnSubFinish7550401(arg1)
    print("OnSubFinish7550401")
    this:SafeDestroyQuestNpc(npcs.Npc30609.alias, 3)
end

return Quest75504
