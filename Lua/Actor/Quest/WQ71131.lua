require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71131 = class("Quest71131", QuestActorProxy)
Quest71131.defaultAlias = "Quest71131"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs

function Quest71131:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest71131:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7113101"] = self.OnSubStart7113101,
        ["7113102"] = self.OnSubStart7113102,
        ["7113103"] = self.OnSubStart7113103
    }
end

function Quest71131:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7113101"] = self.OnSubFinish7113101,
        ["7113102"] = self.OnSubFinish7113102,
        ["7113103"] = self.OnSubFinish7113103
    }
end

function Quest71131:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest71131:Start()
    print("Start")
end

function Quest71131:OnDestroy()
    print("OnDestroy")
end

function Quest71131:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71131:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71131:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest71131:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 7113101 then
        actorUtils.FinishQuestID(false, 7113101)
    end
end

function Quest71131:OnSubStart7113101(arg1)
    print("OnSubStart7113101")
    this:CreateQuestNpc(arg1, npcs.Npc2317Data.id, 0)
end

function Quest71131:OnSubFinish7113101(arg1)
    print("OnSubFinish7113101")
end

function Quest71131:OnSubStart7113102(arg1)
    print("OnSubStart7113102")
end

function Quest71131:OnSubFinish7113102(arg1)
    print("OnSubFinish7113102")
end

function Quest71131:OnSubStart7113103(arg1)
    print("OnSubStart7113103")
end

function Quest71131:OnSubFinish7113103(arg1)
    print("OnSubFinish7113103")
end

return Quest71131
