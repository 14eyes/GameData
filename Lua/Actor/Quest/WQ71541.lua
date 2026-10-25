require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71541 = class("Quest71541", QuestActorProxy)
Quest71541.defaultAlias = "Quest71541"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest71541:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest71541:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7154101"] = self.OnSubStart7154101}
end

function Quest71541:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7154101"] = self.OnSubFinish7154101}
end

function Quest71541:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest71541:Start()
    print("Start")
end

function Quest71541:OnDestroy()
    print("OnDestroy")
end

function Quest71541:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71541:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71541:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:SafeDestroyQuestNpc(npcs.Npc30708.alias, 3)
end

function Quest71541:OnSubStart7154101(arg1)
    print("OnSubStart7154101")
    this:CreateQuestNpc(arg1, npcs.Npc30708.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc30708.alias, 71541):DoFreeStyle(1190, true, nil, true, true, false, false)
end

function Quest71541:OnSubFinish7154101(arg1)
    print("OnSubFinish7154101")
    this:SafeDestroyQuestNpc(npcs.Npc30708.alias, 3)
end

return Quest71541
