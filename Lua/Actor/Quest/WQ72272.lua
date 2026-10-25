require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72272 = class("Quest72272", QuestActorProxy)
Quest72272.defaultAlias = "Quest72272"
local clientData
local mainID
local actorAlias
local subIDs

function Quest72272:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest72272:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7227201"] = self.OnSubStart7227201}
end

function Quest72272:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7227201"] = self.OnSubFinish7227201}
end

function Quest72272:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest72272:Start()
    print("Start")
end

function Quest72272:OnDestroy()
    print("OnDestroy")
end

function Quest72272:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72272:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72272:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest72272:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    print("InvokeOnInteraction")
    if arg1 == 1 then
        local actor = actorMgr:GetActor(clientData.ActorAlias)
        if actor ~= nil then
            self:ActionSafeCall(function()
                actor:FinishQuestID(false, 7227201)
            end)
        end
    elseif arg1 == 2 then
        self:SetQuestVarByMainId(1, 1)
    end
end

function Quest72272:OnSubStart7227201(arg1)
    print("OnSubStart7227201")
end

function Quest72272:OnSubFinish7227201(arg1)
    print("OnSubFinish7227201")
end

return Quest72272
