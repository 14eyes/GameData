require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74055 = class("Quest74055", QuestActorProxy)
Quest74055.defaultAlias = "Quest74055"
local clientData
local this
local mainID
local actorAlias
local subIDs
local datas

function Quest74055:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    datas = clientData.Datas
end

function Quest74055:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7405501"] = self.OnSubStart7405501,
        ["7405502"] = self.OnSubStart7405502,
        ["7405503"] = self.OnSubStart7405503
    }
end

function Quest74055:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7405501"] = self.OnSubFinish7405501,
        ["7405502"] = self.OnSubFinish7405502,
        ["7405503"] = self.OnSubFinish7405503
    }
end

function Quest74055:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74055:Start()
    print("Start")
end

function Quest74055:OnDestroy()
    print("OnDestroy")
end

function Quest74055:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74055:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74055:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest74055:OnSubStart7405501(arg1)
    print("OnSubStart7405501")
end

function Quest74055:OnSubFinish7405501(arg1)
    print("OnSubFinish7405501")
end

function Quest74055:OnSubStart7405502(arg1)
    print("OnSubStart7405502")
    this:PlayerEnterDungeonPointWithDialogs(945, 2193, 7405502, 1, datas.DialogsId, 1, nil, nil)
end

function Quest74055:OnSubFinish7405502(arg1)
    print("OnSubFinish7405502")
end

function Quest74055:OnSubStart7405503(arg1)
    print("OnSubStart7405503")
end

function Quest74055:OnSubFinish7405503(arg1)
    print("OnSubFinish7405503")
end

return Quest74055
