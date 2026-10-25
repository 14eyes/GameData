require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72224 = class("Quest72224", QuestActorProxy)
Quest72224.defaultAlias = "Quest72224"
local clientData
local mainID
local actorAlias
local subIDs

function Quest72224:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest72224:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7222401"] = self.OnSubStart7222401,
        ["7222402"] = self.OnSubStart7222402,
        ["7222403"] = self.OnSubStart7222403,
        ["7222404"] = self.OnSubStart7222404
    }
end

function Quest72224:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7222401"] = self.OnSubFinish7222401,
        ["7222402"] = self.OnSubFinish7222402,
        ["7222403"] = self.OnSubFinish7222403,
        ["7222404"] = self.OnSubFinish7222404
    }
end

function Quest72224:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7222401"] = self.OnSubFailed7222401,
        ["7222402"] = self.OnSubFailed7222402,
        ["7222403"] = self.OnSubFailed7222403,
        ["7222404"] = self.OnSubFailed7222404
    }
end

function Quest72224:Start()
    print("Start")
end

function Quest72224:OnDestroy()
    print("OnDestroy")
end

function Quest72224:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72224:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72224:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest72224:OnSubStart7222401(arg1)
    print("OnSubStart7222401")
end

function Quest72224:OnSubFinish7222401(arg1)
    print("OnSubFinish7222401")
end

function Quest72224:OnSubFailed7222401(arg1)
    print("OnSubFailed7222401")
end

function Quest72224:OnSubStart7222402(arg1)
    print("OnSubStart7222402")
end

function Quest72224:OnSubFinish7222402(arg1)
    print("OnSubFinish7222402")
end

function Quest72224:OnSubFailed7222402(arg1)
    print("OnSubFailed7222402")
end

function Quest72224:OnSubStart7222403(arg1)
    print("OnSubStart7222403")
end

function Quest72224:OnSubFinish7222403(arg1)
    print("OnSubFinish7222403")
end

function Quest72224:OnSubFailed7222403(arg1)
    print("OnSubFailed7222403")
end

function Quest72224:OnSubStart7222404(arg1)
    print("OnSubStart7222404")
end

function Quest72224:OnSubFinish7222404(arg1)
    print("OnSubFinish7222404")
end

function Quest72224:OnSubFailed7222404(arg1)
    print("OnSubFailed7222404")
end

return Quest72224
