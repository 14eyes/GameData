require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72656 = class("Quest72656", QuestActorProxy)
Quest72656.defaultAlias = "Quest72656"
local clientData
local mainID
local actorAlias
local subIDs

function Quest72656:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest72656:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7265601"] = self.OnSubStart7265601, ["7265602"] = self.OnSubStart7265602}
end

function Quest72656:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7265601"] = self.OnSubFinish7265601, ["7265602"] = self.OnSubFinish7265602}
end

function Quest72656:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7265601"] = self.OnSubFailed7265601, ["7265602"] = self.OnSubFailed7265602}
end

function Quest72656:Start()
    print("Start")
end

function Quest72656:OnDestroy()
    print("OnDestroy")
end

function Quest72656:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72656:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72656:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest72656:InvokeOnInteraction(arg1)
    if arg1 == 1 then
        local actor = actorMgr:GetActor(clientData.ActorAlias)
        if actor ~= nil then
            actor:FinishQuestID(false, 7265601)
        end

        print("Talk 7265601 Finishi Quest 7265601")
    end
end

function Quest72656:OnSubStart7265601(arg1)
    print("OnSubStart7265601")
end

function Quest72656:OnSubFinish7265601(arg1)
    print("OnSubFinish7265601")
end

function Quest72656:OnSubFailed7265601(arg1)
    print("OnSubFailed7265601")
end

function Quest72656:OnSubStart7265602(arg1)
    print("OnSubStart7265602")
end

function Quest72656:OnSubFinish7265602(arg1)
    print("OnSubFinish7265602")
end

function Quest72656:OnSubFailed7265602(arg1)
    print("OnSubFailed7265602")
end

return Quest72656
