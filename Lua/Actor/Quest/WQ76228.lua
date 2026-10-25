require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76228 = class("Quest76228", QuestActorProxy)
Quest76228.defaultAlias = "Quest76228"
local clientData
local this
local mainID
local actorAlias

function Quest76228:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest76228:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7622803"] = self.OnSubStart7622803,
        ["7622805"] = self.OnSubStart7622805,
        ["7622801"] = self.OnSubStart7622801,
        ["7622804"] = self.OnSubStart7622804,
        ["7622806"] = self.OnSubStart7622806,
        ["7622802"] = self.OnSubStart7622802,
        ["7622807"] = self.OnSubStart7622807
    }
end

function Quest76228:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7622803"] = self.OnSubFinish7622803,
        ["7622805"] = self.OnSubFinish7622805,
        ["7622801"] = self.OnSubFinish7622801,
        ["7622804"] = self.OnSubFinish7622804,
        ["7622806"] = self.OnSubFinish7622806,
        ["7622802"] = self.OnSubFinish7622802,
        ["7622807"] = self.OnSubFinish7622807
    }
end

function Quest76228:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7622805"] = self.OnSubFailed7622805,
        ["7622801"] = self.OnSubFailed7622801,
        ["7622806"] = self.OnSubFailed7622806,
        ["7622802"] = self.OnSubFailed7622802
    }
end

function Quest76228:Start()
    print("Start")
end

function Quest76228:OnDestroy()
    print("OnDestroy")
end

function Quest76228:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76228:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76228:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest76228:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest76228:OnSubStart7622803(arg1)
    print("OnSubStart7622803")
end

function Quest76228:OnSubFinish7622803(arg1)
    print("OnSubFinish7622803")
end

function Quest76228:OnSubStart7622805(arg1)
    print("OnSubStart7622805")
end

function Quest76228:OnSubFinish7622805(arg1)
    print("OnSubFinish7622805")
end

function Quest76228:OnSubFailed7622805(arg1)
    print("OnSubFailed7622805")
    this:RecycleAllRes()
end

function Quest76228:OnSubStart7622801(arg1)
    print("OnSubStart7622801")
    this:PlayCutsceneIndex(7622801, function(arg1)
        actorUtils.FinishQuestID(false, 7622801)
    end, nil, nil, false)
end

function Quest76228:OnSubFinish7622801(arg1)
    print("OnSubFinish7622801")
end

function Quest76228:OnSubFailed7622801(arg1)
    print("OnSubFailed7622801")
    this:RecycleAllRes()
end

function Quest76228:OnSubStart7622804(arg1)
    print("OnSubStart7622804")
end

function Quest76228:OnSubFinish7622804(arg1)
    print("OnSubFinish7622804")
end

function Quest76228:OnSubStart7622806(arg1)
    print("OnSubStart7622806")
end

function Quest76228:OnSubFinish7622806(arg1)
    print("OnSubFinish7622806")
end

function Quest76228:OnSubFailed7622806(arg1)
    print("OnSubFailed7622806")
    this:RecycleAllRes()
end

function Quest76228:OnSubStart7622802(arg1)
    print("OnSubStart7622802")
    this:PlayCutsceneIndex(7622802, function(arg1)
        actorUtils.FinishQuestID(false, 7622802)
    end, nil, nil, false)
end

function Quest76228:OnSubFinish7622802(arg1)
    print("OnSubFinish7622802")
end

function Quest76228:OnSubFailed7622802(arg1)
    print("OnSubFailed7622802")
    this:RecycleAllRes()
end

function Quest76228:OnSubStart7622807(arg1)
    print("OnSubStart7622807")
end

function Quest76228:OnSubFinish7622807(arg1)
    print("OnSubFinish7622807")
end

return Quest76228
