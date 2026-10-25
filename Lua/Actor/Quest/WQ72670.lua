require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72670 = class("Quest72670", QuestActorProxy)
Quest72670.defaultAlias = "Quest72670"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest72670:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest72670:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7267001"] = self.OnSubStart7267001,
        ["7267002"] = self.OnSubStart7267002,
        ["7267004"] = self.OnSubStart7267004,
        ["7267005"] = self.OnSubStart7267005,
        ["7267003"] = self.OnSubStart7267003,
        ["7267006"] = self.OnSubStart7267006
    }
end

function Quest72670:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7267001"] = self.OnSubFinish7267001,
        ["7267002"] = self.OnSubFinish7267002,
        ["7267004"] = self.OnSubFinish7267004,
        ["7267005"] = self.OnSubFinish7267005,
        ["7267003"] = self.OnSubFinish7267003,
        ["7267006"] = self.OnSubFinish7267006
    }
end

function Quest72670:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest72670:Start()
    print("Start")
end

function Quest72670:OnDestroy()
    print("OnDestroy")
end

function Quest72670:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72670:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72670:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest72670:OnSubStart7267001(arg1)
    print("OnSubStart7267001")
end

function Quest72670:OnSubFinish7267001(arg1)
    print("OnSubFinish7267001")
end

function Quest72670:OnSubStart7267002(arg1)
    print("OnSubStart7267002")
end

function Quest72670:OnSubFinish7267002(arg1)
    print("OnSubFinish7267002")
end

function Quest72670:OnSubStart7267004(arg1)
    print("OnSubStart7267004")
end

function Quest72670:OnSubFinish7267004(arg1)
    print("OnSubFinish7267004")
end

function Quest72670:OnSubStart7267005(arg1)
    print("OnSubStart7267005")
end

function Quest72670:OnSubFinish7267005(arg1)
    print("OnSubFinish7267005")
    self:NarratorOnlyTaskLegacy(datas.NarratorTable, nil, "", 72670)
end

function Quest72670:OnSubStart7267003(arg1)
    print("OnSubStart7267003")
end

function Quest72670:OnSubFinish7267003(arg1)
    print("OnSubFinish7267003")
    self:ActionSafeCall(function(arg1)
        actorUtils.ShowChannellerSlabStagePage(3)
    end)
end

function Quest72670:OnSubStart7267006(arg1)
    print("OnSubStart7267006")
end

function Quest72670:OnSubFinish7267006(arg1)
    print("OnSubFinish7267006")
end

return Quest72670
