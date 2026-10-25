require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest41316 = class("Quest41316", QuestActorProxy)
Quest41316.defaultAlias = "Quest41316"
local clientData
local mainID
local actorAlias

function Quest41316:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest41316:Start()
    print("Start")
end

function Quest41316:OnDestroy()
    print("OnDestroy")
end

function Quest41316:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest41316:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest41316:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest41316:InvokeOnInteraction(arg1)
    if param == 1 then
        print("Talk 41316 Invoke")
        local actor = actorMgr:GetActor(clientData.ActorAlias)
        if actor ~= nil then
            actor:FinishQuestID(false, 4131601)
        end
    end
end

return Quest41316
