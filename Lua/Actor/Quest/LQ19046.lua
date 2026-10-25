require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest19046 = class("Quest19046", QuestActorProxy)
Quest19046.defaultAlias = "Quest19046"
local clientData
local mainID
local actorAlias
local subIDs
local datas

function Quest19046:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    datas = clientData.Datas
end

function Quest19046:OnSubStartHandlerBuild()
    self.subStartHandlers = {["1904601"] = self.OnSubStart1904601}
end

function Quest19046:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["1904601"] = self.OnSubFinish1904601}
end

function Quest19046:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["1904601"] = self.OnSubFailed1904601}
end

function Quest19046:Start()
    print("Start")
end

function Quest19046:OnDestroy()
    print("OnDestroy")
end

function Quest19046:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest19046:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest19046:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest19046:OnSubStart1904601(arg1)
    print("OnSubStart1904601")
    actorMgr:CreateActorWithPos(datas.Q19046Trigger_.alias, datas.Q19046Trigger_.script, datas.Q19046Trigger_.id, 0, datas.Q19046Trigger_.point.pos, datas.Q19046Trigger_.point.rot, true, false, 3)
end

function Quest19046:OnSubFinish1904601(arg1)
    print("OnSubFinish1904601")
    actorMgr:DestroyEntityActor(datas.Q19046Trigger_.alias, 3, false)
end

function Quest19046:OnSubFailed1904601(arg1)
    print("OnSubFailed1904601")
end

return Quest19046
