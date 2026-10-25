require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71130 = class("Quest71130", QuestActorProxy)
Quest71130.defaultAlias = "Quest71130"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs

function Quest71130:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest71130:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7113001"] = self.OnSubStart7113001,
        ["7113002"] = self.OnSubStart7113002,
        ["7113003"] = self.OnSubStart7113003
    }
end

function Quest71130:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7113001"] = self.OnSubFinish7113001,
        ["7113002"] = self.OnSubFinish7113002,
        ["7113003"] = self.OnSubFinish7113003
    }
end

function Quest71130:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest71130:Start()
    print("Start")
end

function Quest71130:OnDestroy()
    print("OnDestroy")
end

function Quest71130:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71130:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71130:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest71130:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 7113001 then
        actorUtils.FinishQuestID(false, 7113001)
    end
end

function Quest71130:OnSubStart7113001(arg1)
    print("OnSubStart7113001")
    this:CreateQuestNpc(arg1, npcs.Npc2318Data.id, 0)
end

function Quest71130:OnSubFinish7113001(arg1)
    print("OnSubFinish7113001")
end

function Quest71130:OnSubStart7113002(arg1)
    print("OnSubStart7113002")
end

function Quest71130:OnSubFinish7113002(arg1)
    print("OnSubFinish7113002")
end

function Quest71130:OnSubStart7113003(arg1)
    print("OnSubStart7113003")
end

function Quest71130:OnSubFinish7113003(arg1)
    print("OnSubFinish7113003")
end

return Quest71130
