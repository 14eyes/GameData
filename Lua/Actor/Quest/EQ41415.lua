require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest41415 = class("Quest41415", QuestActorProxy)
Quest41415.defaultAlias = "Quest41415"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest41415:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest41415:OnSubStartHandlerBuild()
    self.subStartHandlers = {["4141501"] = self.OnSubStart4141501}
end

function Quest41415:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["4141501"] = self.OnSubFinish4141501}
end

function Quest41415:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["4141501"] = self.OnSubFailed4141501}
end

function Quest41415:Start()
    print("Start")
end

function Quest41415:OnDestroy()
    print("OnDestroy")
end

function Quest41415:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest41415:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest41415:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest41415:OnSubStart4141501(arg1)
    print("OnSubStart4141501")
    self:CreateQuestNpc(arg1, npcs.WendyData.id, 1)
    actorMgr:CreateActorWithPos(datas.Q4141501Trigger_.alias, datas.Q4141501Trigger_.script, datas.Q4141501Trigger_.id, 0, datas.Q4141501Trigger_.point.pos, datas.Q4141501Trigger_.point.rot, true, false, 3)
end

function Quest41415:OnSubFinish4141501(arg1)
    print("OnSubFinish4141501")
    self:DestroyQuestNpcActorByAlias(npcs.WendyData.alias, false)
end

function Quest41415:OnSubFailed4141501(arg1)
    print("OnSubFailed4141501")
end

return Quest41415
