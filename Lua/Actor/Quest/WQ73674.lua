require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73674 = class("Quest73674", QuestActorProxy)
Quest73674.defaultAlias = "Quest73674"
local clientData
local mainID
local actorAlias
local subIDs

function Quest73674:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest73674:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7367402"] = self.OnSubStart7367402,
        ["7367401"] = self.OnSubStart7367401,
        ["7367403"] = self.OnSubStart7367403,
        ["7367404"] = self.OnSubStart7367404
    }
end

function Quest73674:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7367402"] = self.OnSubFinish7367402,
        ["7367401"] = self.OnSubFinish7367401,
        ["7367403"] = self.OnSubFinish7367403,
        ["7367404"] = self.OnSubFinish7367404
    }
end

function Quest73674:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73674:Start()
    print("Start")
end

function Quest73674:OnDestroy()
    print("OnDestroy")
end

function Quest73674:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73674:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73674:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73674:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1 then
        local actor = actorMgr:GetActor(clientData.ActorAlias)
        if actor:GetSubQuestState(7367403) == 2 then
            actor:FinishQuestID(false, 7367403)
        end

        print("TreasureHunt3 Seelie show 1")
    end

    if arg1 == 2 then
        local actor = actorMgr:GetActor(clientData.ActorAlias)
        if actor:GetSubQuestState(7367404) == 2 then
            actor:FinishQuestID(false, 7367404)
        end

        print("TreasureHunt3 Seelie show 2")
    end
end

function Quest73674:OnSubStart7367402(arg1)
    print("OnSubStart7367402")
    actorUtils.FinishQuestID(false, 7367402)
end

function Quest73674:OnSubFinish7367402(arg1)
    print("OnSubFinish7367402")
end

function Quest73674:OnSubStart7367401(arg1)
    print("OnSubStart7367401")
end

function Quest73674:OnSubFinish7367401(arg1)
    print("OnSubFinish7367401")
    self:ActionSafeCall(function(arg1)
        arg1:ShowTutorialDialog(1184)
    end)
end

function Quest73674:OnSubStart7367403(arg1)
    print("OnSubStart7367403")
end

function Quest73674:OnSubFinish7367403(arg1)
    print("OnSubFinish7367403")
end

function Quest73674:OnSubStart7367404(arg1)
    print("OnSubStart7367404")
end

function Quest73674:OnSubFinish7367404(arg1)
    print("OnSubFinish7367404")
end

return Quest73674
