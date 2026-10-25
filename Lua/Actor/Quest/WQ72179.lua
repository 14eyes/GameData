require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72179 = class("Quest72179", QuestActorProxy)
Quest72179.defaultAlias = "Quest72179"
local clientData
local mainID
local actorAlias
local subIDs

function Quest72179:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest72179:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7217901"] = self.OnSubStart7217901, ["7217902"] = self.OnSubStart7217902}
end

function Quest72179:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7217901"] = self.OnSubFinish7217901, ["7217902"] = self.OnSubFinish7217902}
end

function Quest72179:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7217901"] = self.OnSubFailed7217901, ["7217902"] = self.OnSubFailed7217902}
end

function Quest72179:Start()
    print("Start")
end

function Quest72179:OnDestroy()
    print("OnDestroy")
end

function Quest72179:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72179:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72179:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest72179:OnSubStart7217901(arg1)
    print("OnSubStart7217901")
end

function Quest72179:OnSubFinish7217901(arg1)
    print("OnSubFinish7217901")
end

function Quest72179:OnSubFailed7217901(arg1)
    print("OnSubFailed7217901")
end

function Quest72179:OnSubStart7217902(arg1)
    print("OnSubStart7217902")
end

function Quest72179:OnSubFinish7217902(arg1)
    print("OnSubFinish7217902")
end

function Quest72179:OnSubFailed7217902(arg1)
    print("OnSubFailed7217902")
end

return Quest72179
