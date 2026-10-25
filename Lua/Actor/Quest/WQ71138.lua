require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71138 = class("Quest71138", QuestActorProxy)
Quest71138.defaultAlias = "Quest71138"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs

function Quest71138:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest71138:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7113801"] = self.OnSubStart7113801}
end

function Quest71138:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7113801"] = self.OnSubFinish7113801}
end

function Quest71138:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest71138:Start()
    print("Start")
end

function Quest71138:OnDestroy()
    print("OnDestroy")
end

function Quest71138:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71138:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71138:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest71138:OnSubStart7113801(arg1)
    print("OnSubStart7113801")
    this:CreateQuestNpc(arg1, npcs.Npc2254Data.id, 0)
end

function Quest71138:OnSubFinish7113801(arg1)
    print("OnSubFinish7113801")
    this:SafeDestroyQuestNpc(npcs.Npc2254Data.alias, 3)
end

return Quest71138
