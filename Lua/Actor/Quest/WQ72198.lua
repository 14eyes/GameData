require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72198 = class("Quest72198", QuestActorProxy)
Quest72198.defaultAlias = "Quest72198"
local clientData
local mainID
local actorAlias
local subIDs
local datas

function Quest72198:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    datas = clientData.Datas
end

function Quest72198:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7219801"] = self.OnSubStart7219801}
end

function Quest72198:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7219801"] = self.OnSubFinish7219801}
end

function Quest72198:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7219801"] = self.OnSubFailed7219801}
end

function Quest72198:Start()
    print("Start")
end

function Quest72198:OnDestroy()
    print("OnDestroy")
end

function Quest72198:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72198:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72198:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest72198:OnSubStart7219801(arg1)
    print("OnSubStart7219801")
    actorMgr:CreateActorWithPos(datas.Q72198Trigger_.alias, datas.Q72198Trigger_.script, datas.Q72198Trigger_.id, 0, datas.Q72198Trigger_.point.pos, datas.Q72198Trigger_.point.rot, true, false, 5)
end

function Quest72198:OnSubFinish7219801(arg1)
    print("OnSubFinish7219801")
end

function Quest72198:OnSubFailed7219801(arg1)
    print("OnSubFailed7219801")
end

return Quest72198
