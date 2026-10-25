require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74048 = class("Quest74048", QuestActorProxy)
Quest74048.defaultAlias = "Quest74048"
local clientData
local this
local mainID
local actorAlias
local subIDs
local datas

function Quest74048:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    datas = clientData.Datas
end

function Quest74048:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7404801"] = self.OnSubStart7404801,
        ["7404802"] = self.OnSubStart7404802,
        ["7404803"] = self.OnSubStart7404803,
        ["7404804"] = self.OnSubStart7404804
    }
end

function Quest74048:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7404801"] = self.OnSubFinish7404801,
        ["7404802"] = self.OnSubFinish7404802,
        ["7404803"] = self.OnSubFinish7404803,
        ["7404804"] = self.OnSubFinish7404804
    }
end

function Quest74048:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74048:Start()
    print("Start")
end

function Quest74048:OnDestroy()
    print("OnDestroy")
end

function Quest74048:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74048:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74048:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest74048:OnSubStart7404801(arg1)
    print("OnSubStart7404801")
    actorUtils.FinishQuestID(false, 7404801)
end

function Quest74048:OnSubFinish7404801(arg1)
    print("OnSubFinish7404801")
end

function Quest74048:OnSubStart7404802(arg1)
    print("OnSubStart7404802")
end

function Quest74048:OnSubFinish7404802(arg1)
    print("OnSubFinish7404802")
    this:TransmitPlayerWithDialogTextById(arg1, 1, datas.DialogsId, 3, nil, nil)
end

function Quest74048:OnSubStart7404803(arg1)
    print("OnSubStart7404803")
end

function Quest74048:OnSubFinish7404803(arg1)
    print("OnSubFinish7404803")
    this:TransmitPlayerWithDialogTextById(arg1, 1, datas.DialogsId, 3, nil, nil)
end

function Quest74048:OnSubStart7404804(arg1)
    print("OnSubStart7404804")
    actorUtils.FinishQuestID(false, 7404804)
end

function Quest74048:OnSubFinish7404804(arg1)
    print("OnSubFinish7404804")
end

return Quest74048
