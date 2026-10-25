require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73234 = class("Quest73234", QuestActorProxy)
Quest73234.defaultAlias = "Quest73234"
local clientData
local mainID
local actorAlias
local subIDs
local datas

function Quest73234:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    datas = clientData.Datas
end

function Quest73234:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7323401"] = self.OnSubStart7323401,
        ["7323403"] = self.OnSubStart7323403,
        ["7323404"] = self.OnSubStart7323404,
        ["7323402"] = self.OnSubStart7323402
    }
end

function Quest73234:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7323401"] = self.OnSubFinish7323401,
        ["7323403"] = self.OnSubFinish7323403,
        ["7323404"] = self.OnSubFinish7323404,
        ["7323402"] = self.OnSubFinish7323402
    }
end

function Quest73234:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73234:Start()
    print("Start")
end

function Quest73234:OnDestroy()
    print("OnDestroy")
end

function Quest73234:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73234:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73234:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73234:OnSubStart7323401(arg1)
    print("OnSubStart7323401")
end

function Quest73234:OnSubFinish7323401(arg1)
    print("OnSubFinish7323401")
end

function Quest73234:OnSubStart7323403(arg1)
    print("OnSubStart7323403")
end

function Quest73234:OnSubFinish7323403(arg1)
    print("OnSubFinish7323403")
    self:CallDelay(7, function(arg1)
        arg1:NarratorOnlyTaskByData(datas.NarratorWithId)
    end)
end

function Quest73234:OnSubStart7323404(arg1)
    print("OnSubStart7323404")
end

function Quest73234:OnSubFinish7323404(arg1)
    print("OnSubFinish7323404")
    self:NarratorOnlyTaskByData(datas.NarratorWithId00)
end

function Quest73234:OnSubStart7323402(arg1)
    print("OnSubStart7323402")
end

function Quest73234:OnSubFinish7323402(arg1)
    print("OnSubFinish7323402")
    self:CallDelay(7, function(arg1)
        arg1:NarratorOnlyTaskByData(datas.NarratorWithId02)
    end)
end

return Quest73234
