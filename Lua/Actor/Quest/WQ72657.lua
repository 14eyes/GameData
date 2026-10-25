require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72657 = class("Quest72657", QuestActorProxy)
Quest72657.defaultAlias = "Quest72657"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest72657:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest72657:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7265701"] = self.OnSubStart7265701, ["7265702"] = self.OnSubStart7265702}
end

function Quest72657:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7265701"] = self.OnSubFinish7265701, ["7265702"] = self.OnSubFinish7265702}
end

function Quest72657:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7265701"] = self.OnSubFailed7265701, ["7265702"] = self.OnSubFailed7265702}
end

function Quest72657:Start()
    print("Start")
end

function Quest72657:OnDestroy()
    print("OnDestroy")
end

function Quest72657:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72657:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72657:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest72657:OnSubStart7265701(arg1)
    print("OnSubStart7265701")
end

function Quest72657:OnSubFinish7265701(arg1)
    print("OnSubFinish7265701")
end

function Quest72657:OnSubFailed7265701(arg1)
    print("OnSubFailed7265701")
end

function Quest72657:OnSubStart7265702(arg1)
    print("OnSubStart7265702")
    actorMgr:CreateActorWithPos(datas.Q72657Trigger_.alias, datas.Q72657Trigger_.script, datas.Q72657Trigger_.id, 0, datas.Q72657Trigger_.point.pos, datas.Q72657Trigger_.point.rot, true, false, 3)
end

function Quest72657:OnSubFinish7265702(arg1)
    print("OnSubFinish7265702")
    actorMgr:DestroyEntityActor(datas.Q72657Trigger_.alias, 3, false)
end

function Quest72657:OnSubFailed7265702(arg1)
    print("OnSubFailed7265702")
end

return Quest72657
