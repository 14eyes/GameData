require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40137 = class("Quest40137", QuestActorProxy)
Quest40137.defaultAlias = "Quest40137"
local clientData
local this
local mainID
local actorAlias
local subIDs

function Quest40137:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest40137:OnSubStartHandlerBuild()
    self.subStartHandlers = {["4013701"] = self.OnSubStart4013701}
end

function Quest40137:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["4013701"] = self.OnSubFinish4013701}
end

function Quest40137:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest40137:Start()
    print("Start")
end

function Quest40137:OnDestroy()
    print("OnDestroy")
end

function Quest40137:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest40137:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest40137:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest40137:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1 then
        self:SetQuestVarByMainId(0, 2)
    elseif arg1 == 2 then
        self:SetQuestVarByMainId(0, 1)
    elseif arg1 == 3 then
        self:SetQuestVarByMainId(1, 2)
    elseif arg1 == 4 then
        self:SetQuestVarByMainId(1, 1)
    end
end

function Quest40137:OnSubStart4013701(arg1)
    print("OnSubStart4013701")
    this:SetQuestVarByMainId(0, 1)
    this:SetQuestVarByMainId(1, 1)
end

function Quest40137:OnSubFinish4013701(arg1)
    print("OnSubFinish4013701")
end

return Quest40137
