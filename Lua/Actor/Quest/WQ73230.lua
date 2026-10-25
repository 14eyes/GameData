require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73230 = class("Quest73230", QuestActorProxy)
Quest73230.defaultAlias = "Quest73230"
local clientData
local mainID
local actorAlias
local subIDs

function Quest73230:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest73230:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7323005"] = self.OnSubStart7323005,
        ["7323001"] = self.OnSubStart7323001,
        ["7323002"] = self.OnSubStart7323002,
        ["7323003"] = self.OnSubStart7323003,
        ["7323004"] = self.OnSubStart7323004,
        ["7323006"] = self.OnSubStart7323006
    }
end

function Quest73230:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7323005"] = self.OnSubFinish7323005,
        ["7323001"] = self.OnSubFinish7323001,
        ["7323002"] = self.OnSubFinish7323002,
        ["7323003"] = self.OnSubFinish7323003,
        ["7323004"] = self.OnSubFinish7323004,
        ["7323006"] = self.OnSubFinish7323006
    }
end

function Quest73230:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73230:Start()
    print("Start")
end

function Quest73230:OnDestroy()
    print("OnDestroy")
end

function Quest73230:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73230:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73230:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73230:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1 then
        actorUtils.FinishQuestID(false, 7323001)
    elseif arg1 == 2 then
        actorUtils.FinishQuestID(false, 7323002)
    elseif arg1 == 3 then
        actorUtils.FinishQuestID(false, 7323003)
    elseif arg1 == 4 then
        actorUtils.FinishQuestID(false, 7323004)
    elseif arg1 == 5 then
        actorUtils.FinishQuestID(false, 7323005)
    elseif arg1 == 6 then
        actorUtils.FinishQuestID(false, 7323006)
    end
end

function Quest73230:OnSubStart7323005(arg1)
    print("OnSubStart7323005")
end

function Quest73230:OnSubFinish7323005(arg1)
    print("OnSubFinish7323005")
end

function Quest73230:OnSubStart7323001(arg1)
    print("OnSubStart7323001")
end

function Quest73230:OnSubFinish7323001(arg1)
    print("OnSubFinish7323001")
end

function Quest73230:OnSubStart7323002(arg1)
    print("OnSubStart7323002")
end

function Quest73230:OnSubFinish7323002(arg1)
    print("OnSubFinish7323002")
end

function Quest73230:OnSubStart7323003(arg1)
    print("OnSubStart7323003")
end

function Quest73230:OnSubFinish7323003(arg1)
    print("OnSubFinish7323003")
end

function Quest73230:OnSubStart7323004(arg1)
    print("OnSubStart7323004")
end

function Quest73230:OnSubFinish7323004(arg1)
    print("OnSubFinish7323004")
end

function Quest73230:OnSubStart7323006(arg1)
    print("OnSubStart7323006")
end

function Quest73230:OnSubFinish7323006(arg1)
    print("OnSubFinish7323006")
end

return Quest73230
