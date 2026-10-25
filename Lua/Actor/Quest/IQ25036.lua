require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest25036 = class("Quest25036", QuestActorProxy)
Quest25036.defaultAlias = "Quest25036"
local clientData
local this
local mainID
local actorAlias

function Quest25036:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest25036:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["2503601"] = self.OnSubStart2503601,
        ["2503602"] = self.OnSubStart2503602,
        ["2503603"] = self.OnSubStart2503603,
        ["2503604"] = self.OnSubStart2503604
    }
end

function Quest25036:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["2503601"] = self.OnSubFinish2503601,
        ["2503602"] = self.OnSubFinish2503602,
        ["2503603"] = self.OnSubFinish2503603,
        ["2503604"] = self.OnSubFinish2503604
    }
end

function Quest25036:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest25036:Start()
    print("Start")
end

function Quest25036:OnDestroy()
    print("OnDestroy")
end

function Quest25036:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest25036:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest25036:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest25036:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1 then
        self:SetQuestVar(2503601, 4, self:GetQuestVar(2503601, 4) + 1)
    end

    if arg1 == 2 then
        self:SetQuestVar(2503601, 4, 0)
    end
end

function Quest25036:OnSubStart2503601(arg1)
    print("OnSubStart2503601")
    actorUtils.FinishQuestID(false, 2503601)
end

function Quest25036:OnSubFinish2503601(arg1)
    print("OnSubFinish2503601")
end

function Quest25036:OnSubStart2503602(arg1)
    print("OnSubStart2503602")
    this:SetQuestVarByMainId(4, 0)
end

function Quest25036:OnSubFinish2503602(arg1)
    print("OnSubFinish2503602")
end

function Quest25036:OnSubStart2503603(arg1)
    print("OnSubStart2503603")
    this:SetQuestVarByMainId(4, 0)
end

function Quest25036:OnSubFinish2503603(arg1)
    print("OnSubFinish2503603")
end

function Quest25036:OnSubStart2503604(arg1)
    print("OnSubStart2503604")
end

function Quest25036:OnSubFinish2503604(arg1)
    print("OnSubFinish2503604")
end

return Quest25036
