require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70104 = class("Quest70104", QuestActorProxy)
Quest70104.defaultAlias = "Quest70104"
local clientData
local mainID
local actorAlias
local subIDs

function Quest70104:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest70104:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7010401"] = self.OnSubStart7010401,
        ["7010402"] = self.OnSubStart7010402,
        ["7010403"] = self.OnSubStart7010403,
        ["7010404"] = self.OnSubStart7010404,
        ["7010405"] = self.OnSubStart7010405,
        ["7010406"] = self.OnSubStart7010406,
        ["7010407"] = self.OnSubStart7010407,
        ["7010408"] = self.OnSubStart7010408,
        ["7010409"] = self.OnSubStart7010409,
        ["7010410"] = self.OnSubStart7010410
    }
end

function Quest70104:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7010401"] = self.OnSubFinish7010401,
        ["7010402"] = self.OnSubFinish7010402,
        ["7010403"] = self.OnSubFinish7010403,
        ["7010404"] = self.OnSubFinish7010404,
        ["7010405"] = self.OnSubFinish7010405,
        ["7010406"] = self.OnSubFinish7010406,
        ["7010407"] = self.OnSubFinish7010407,
        ["7010408"] = self.OnSubFinish7010408,
        ["7010409"] = self.OnSubFinish7010409,
        ["7010410"] = self.OnSubFinish7010410
    }
end

function Quest70104:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7010401"] = self.OnSubFailed7010401,
        ["7010402"] = self.OnSubFailed7010402,
        ["7010403"] = self.OnSubFailed7010403,
        ["7010404"] = self.OnSubFailed7010404,
        ["7010405"] = self.OnSubFailed7010405,
        ["7010406"] = self.OnSubFailed7010406,
        ["7010407"] = self.OnSubFailed7010407,
        ["7010408"] = self.OnSubFailed7010408,
        ["7010409"] = self.OnSubFailed7010409,
        ["7010410"] = self.OnSubFailed7010410
    }
end

function Quest70104:Start()
    print("Start")
end

function Quest70104:OnDestroy()
    print("OnDestroy")
end

function Quest70104:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70104:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70104:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest70104:OnSubStart7010401(arg1)
    print("OnSubStart7010401")
end

function Quest70104:OnSubFinish7010401(arg1)
    print("OnSubFinish7010401")
end

function Quest70104:OnSubFailed7010401(arg1)
    print("OnSubFailed7010401")
end

function Quest70104:OnSubStart7010402(arg1)
    print("OnSubStart7010402")
end

function Quest70104:OnSubFinish7010402(arg1)
    print("OnSubFinish7010402")
end

function Quest70104:OnSubFailed7010402(arg1)
    print("OnSubFailed7010402")
end

function Quest70104:OnSubStart7010403(arg1)
    print("OnSubStart7010403")
end

function Quest70104:OnSubFinish7010403(arg1)
    print("OnSubFinish7010403")
end

function Quest70104:OnSubFailed7010403(arg1)
    print("OnSubFailed7010403")
end

function Quest70104:OnSubStart7010404(arg1)
    print("OnSubStart7010404")
end

function Quest70104:OnSubFinish7010404(arg1)
    print("OnSubFinish7010404")
end

function Quest70104:OnSubFailed7010404(arg1)
    print("OnSubFailed7010404")
end

function Quest70104:OnSubStart7010405(arg1)
    print("OnSubStart7010405")
end

function Quest70104:OnSubFinish7010405(arg1)
    print("OnSubFinish7010405")
end

function Quest70104:OnSubFailed7010405(arg1)
    print("OnSubFailed7010405")
end

function Quest70104:OnSubStart7010406(arg1)
    print("OnSubStart7010406")
end

function Quest70104:OnSubFinish7010406(arg1)
    print("OnSubFinish7010406")
end

function Quest70104:OnSubFailed7010406(arg1)
    print("OnSubFailed7010406")
end

function Quest70104:OnSubStart7010407(arg1)
    print("OnSubStart7010407")
end

function Quest70104:OnSubFinish7010407(arg1)
    print("OnSubFinish7010407")
end

function Quest70104:OnSubFailed7010407(arg1)
    print("OnSubFailed7010407")
end

function Quest70104:OnSubStart7010408(arg1)
    print("OnSubStart7010408")
end

function Quest70104:OnSubFinish7010408(arg1)
    print("OnSubFinish7010408")
end

function Quest70104:OnSubFailed7010408(arg1)
    print("OnSubFailed7010408")
end

function Quest70104:OnSubStart7010409(arg1)
    print("OnSubStart7010409")
end

function Quest70104:OnSubFinish7010409(arg1)
    print("OnSubFinish7010409")
end

function Quest70104:OnSubFailed7010409(arg1)
    print("OnSubFailed7010409")
end

function Quest70104:OnSubStart7010410(arg1)
    print("OnSubStart7010410")
end

function Quest70104:OnSubFinish7010410(arg1)
    print("OnSubFinish7010410")
end

function Quest70104:OnSubFailed7010410(arg1)
    print("OnSubFailed7010410")
end

return Quest70104
