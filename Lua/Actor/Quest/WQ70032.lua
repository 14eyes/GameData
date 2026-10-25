require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70032 = class("Quest70032", QuestActorProxy)
Quest70032.defaultAlias = "Quest70032"
local clientData
local mainID
local actorAlias
local subIDs

function Quest70032:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest70032:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7003201"] = self.OnSubStart7003201}
end

function Quest70032:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7003201"] = self.OnSubFinish7003201}
end

function Quest70032:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7003201"] = self.OnSubFailed7003201}
end

function Quest70032:Start()
    print("Start")
end

function Quest70032:OnDestroy()
    print("OnDestroy")
end

function Quest70032:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70032:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70032:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest70032:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1 then
        local actor = actorMgr:GetActor(clientData.ActorAlias)
        if actor:GetSubQuestState(7003201) == 2 then
            actor:FinishQuestID(false, 7003201)
        end

        print("Open MusicUI finish quest")
    end
end

function Quest70032:OnSubStart7003201(arg1)
    print("OnSubStart7003201")
end

function Quest70032:OnSubFinish7003201(arg1)
    print("OnSubFinish7003201")
end

function Quest70032:OnSubFailed7003201(arg1)
    print("OnSubFailed7003201")
end

return Quest70032
