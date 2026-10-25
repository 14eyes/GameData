require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest79006 = class("Quest79006", QuestActorProxy)
Quest79006.defaultAlias = "Quest79006"
local clientData
local mainID
local actorAlias
local subIDs
local datas

function Quest79006:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    datas = clientData.Datas
end

function Quest79006:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7900601"] = self.OnSubStart7900601,
        ["7900604"] = self.OnSubStart7900604,
        ["7900602"] = self.OnSubStart7900602,
        ["7900603"] = self.OnSubStart7900603
    }
end

function Quest79006:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7900601"] = self.OnSubFinish7900601,
        ["7900604"] = self.OnSubFinish7900604,
        ["7900602"] = self.OnSubFinish7900602,
        ["7900603"] = self.OnSubFinish7900603
    }
end

function Quest79006:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7900601"] = self.OnSubFailed7900601,
        ["7900604"] = self.OnSubFailed7900604,
        ["7900602"] = self.OnSubFailed7900602,
        ["7900603"] = self.OnSubFailed7900603
    }
end

function Quest79006:Start()
    print("Start")
end

function Quest79006:OnDestroy()
    print("OnDestroy")
end

function Quest79006:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest79006:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest79006:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest79006:OnSubStart7900601(arg1)
    print("OnSubStart7900601")
end

function Quest79006:OnSubFinish7900601(arg1)
    print("OnSubFinish7900601")
end

function Quest79006:OnSubFailed7900601(arg1)
    print("OnSubFailed7900601")
end

function Quest79006:OnSubStart7900604(arg1)
    print("OnSubStart7900604")
end

function Quest79006:OnSubFinish7900604(arg1)
    print("OnSubFinish7900604")
end

function Quest79006:OnSubFailed7900604(arg1)
    print("OnSubFailed7900604")
end

function Quest79006:OnSubStart7900602(arg1)
    print("OnSubStart7900602")
end

function Quest79006:OnSubFinish7900602(arg1)
    print("OnSubFinish7900602")
end

function Quest79006:OnSubFailed7900602(arg1)
    print("OnSubFailed7900602")
end

function Quest79006:OnSubStart7900603(arg1)
    print("OnSubStart7900603")
end

function Quest79006:OnSubFinish7900603(arg1)
    print("OnSubFinish7900603")
end

function Quest79006:OnSubFailed7900603(arg1)
    print("OnSubFailed7900603")
end

return Quest79006
