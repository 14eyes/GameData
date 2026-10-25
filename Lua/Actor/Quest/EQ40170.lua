require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40170 = class("Quest40170", QuestActorProxy)
Quest40170.defaultAlias = "Quest40170"
local clientData
local this
local mainID
local actorAlias
local subIDs
local datas

function Quest40170:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    datas = clientData.Datas
end

function Quest40170:OnSubStartHandlerBuild()
    self.subStartHandlers = {["4017001"] = self.OnSubStart4017001}
end

function Quest40170:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["4017001"] = self.OnSubFinish4017001}
end

function Quest40170:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest40170:Start()
    print("Start")
end

function Quest40170:OnDestroy()
    print("OnDestroy")
end

function Quest40170:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest40170:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest40170:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest40170:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1 then
        print("TransmitPlayer1")
        this:TransmitPlayerWithQuestIdByData(4017001, 1, datas.TransmitData, nil, nil, nil)
    elseif arg1 == 2 then
        print("TransmitPlayer2")
        this:TransmitPlayerWithQuestIdByData(4017001, 2, datas.TransmitData_01, nil, nil, nil)
    elseif arg1 == 3 then
        print("TransmitPlayer3")
        this:TransmitPlayerWithQuestIdByData(4017001, 3, datas.TransmitData_01, nil, nil, nil)
    elseif arg1 == 4 then
        print("TransmitPlayer4")
        this:TransmitPlayerWithQuestIdByData(4017001, 4, datas.TransmitData, nil, nil, nil)
    end
end

function Quest40170:OnSubStart4017001(arg1)
    print("OnSubStart4017001")
end

function Quest40170:OnSubFinish4017001(arg1)
    print("OnSubFinish4017001")
end

return Quest40170
