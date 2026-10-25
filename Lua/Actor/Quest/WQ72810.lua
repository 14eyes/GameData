require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72810 = class("Quest72810", QuestActorProxy)
Quest72810.defaultAlias = "Quest72810"
local clientData
local mainID
local actorAlias
local subIDs

function Quest72810:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest72810:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7281001"] = self.OnSubStart7281001,
        ["7281002"] = self.OnSubStart7281002,
        ["7281003"] = self.OnSubStart7281003
    }
end

function Quest72810:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7281001"] = self.OnSubFinish7281001,
        ["7281002"] = self.OnSubFinish7281002,
        ["7281003"] = self.OnSubFinish7281003
    }
end

function Quest72810:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7281001"] = self.OnSubFailed7281001,
        ["7281002"] = self.OnSubFailed7281002,
        ["7281003"] = self.OnSubFailed7281003
    }
end

function Quest72810:Start()
    print("Start")
end

function Quest72810:OnDestroy()
    print("OnDestroy")
end

function Quest72810:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72810:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72810:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest72810:OnSubStart7281001(arg1)
    print("OnSubStart7281001")
end

function Quest72810:OnSubFinish7281001(arg1)
    print("OnSubFinish7281001")
end

function Quest72810:OnSubFailed7281001(arg1)
    print("OnSubFailed7281001")
end

function Quest72810:OnSubStart7281002(arg1)
    print("OnSubStart7281002")
end

function Quest72810:OnSubFinish7281002(arg1)
    print("OnSubFinish7281002")
end

function Quest72810:OnSubFailed7281002(arg1)
    print("OnSubFailed7281002")
end

function Quest72810:OnSubStart7281003(arg1)
    print("OnSubStart7281003")
end

function Quest72810:OnSubFinish7281003(arg1)
    print("OnSubFinish7281003")
end

function Quest72810:OnSubFailed7281003(arg1)
    print("OnSubFailed7281003")
end

return Quest72810
