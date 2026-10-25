require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72271 = class("Quest72271", QuestActorProxy)
Quest72271.defaultAlias = "Quest72271"
local clientData
local mainID
local actorAlias
local subIDs

function Quest72271:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest72271:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7227101"] = self.OnSubStart7227101}
end

function Quest72271:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7227101"] = self.OnSubFinish7227101}
end

function Quest72271:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest72271:Start()
    print("Start")
end

function Quest72271:OnDestroy()
    print("OnDestroy")
end

function Quest72271:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72271:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72271:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest72271:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    print("InvokeOnInteraction")
    if arg1 == 1 then
        local actor = actorMgr:GetActor(clientData.ActorAlias)
        if actor ~= nil then
            self:ActionSafeCall(function()
                actor:FinishQuestID(false, 7227101)
            end)
        end
    elseif arg1 == 2 then
        self:SetQuestVarByMainId(1, 1)
    end
end

function Quest72271:OnSubStart7227101(arg1)
    print("OnSubStart7227101")
end

function Quest72271:OnSubFinish7227101(arg1)
    print("OnSubFinish7227101")
end

return Quest72271
