require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71078 = class("Quest71078", QuestActorProxy)
Quest71078.defaultAlias = "Quest71078"
local clientData
local mainID
local actorAlias
local subIDs

function Quest71078:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest71078:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7107801"] = self.OnSubStart7107801,
        ["7107802"] = self.OnSubStart7107802,
        ["7107803"] = self.OnSubStart7107803,
        ["7107804"] = self.OnSubStart7107804,
        ["7107805"] = self.OnSubStart7107805,
        ["7107806"] = self.OnSubStart7107806,
        ["7107807"] = self.OnSubStart7107807
    }
end

function Quest71078:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7107801"] = self.OnSubFinish7107801,
        ["7107802"] = self.OnSubFinish7107802,
        ["7107803"] = self.OnSubFinish7107803,
        ["7107804"] = self.OnSubFinish7107804,
        ["7107805"] = self.OnSubFinish7107805,
        ["7107806"] = self.OnSubFinish7107806,
        ["7107807"] = self.OnSubFinish7107807
    }
end

function Quest71078:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest71078:Start()
    print("Start")
end

function Quest71078:OnDestroy()
    print("OnDestroy")
end

function Quest71078:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71078:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71078:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest71078:OnSubStart7107801(arg1)
    print("OnSubStart7107801")
end

function Quest71078:OnSubFinish7107801(arg1)
    print("OnSubFinish7107801")
end

function Quest71078:OnSubStart7107802(arg1)
    print("OnSubStart7107802")
end

function Quest71078:OnSubFinish7107802(arg1)
    print("OnSubFinish7107802")
    self:ShowBlackScreen(0.5, 1, 0.5, nil, nil, nil, "", false, true)
end

function Quest71078:OnSubStart7107803(arg1)
    print("OnSubStart7107803")
end

function Quest71078:OnSubFinish7107803(arg1)
    print("OnSubFinish7107803")
end

function Quest71078:OnSubStart7107804(arg1)
    print("OnSubStart7107804")
end

function Quest71078:OnSubFinish7107804(arg1)
    print("OnSubFinish7107804")
end

function Quest71078:OnSubStart7107805(arg1)
    print("OnSubStart7107805")
end

function Quest71078:OnSubFinish7107805(arg1)
    print("OnSubFinish7107805")
end

function Quest71078:OnSubStart7107806(arg1)
    print("OnSubStart7107806")
end

function Quest71078:OnSubFinish7107806(arg1)
    print("OnSubFinish7107806")
end

function Quest71078:OnSubStart7107807(arg1)
    print("OnSubStart7107807")
end

function Quest71078:OnSubFinish7107807(arg1)
    print("OnSubFinish7107807")
end

return Quest71078
