require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71150 = class("Quest71150", QuestActorProxy)
Quest71150.defaultAlias = "Quest71150"
local clientData
local this
local mainID
local actorAlias
local datas

function Quest71150:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
end

function Quest71150:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7115001"] = self.OnSubStart7115001, ["7115002"] = self.OnSubStart7115002}
end

function Quest71150:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7115001"] = self.OnSubFinish7115001, ["7115002"] = self.OnSubFinish7115002}
end

function Quest71150:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest71150:Start()
    print("Start")
end

function Quest71150:OnDestroy()
    print("OnDestroy")
end

function Quest71150:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71150:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71150:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:BanCrowdNpc(3107, 18, datas.InstanceIDList, false, true)
end

function Quest71150:OnMainPaused(arg1)
    print("OnMainPaused")
    this:BanCrowdNpc(3107, 18, datas.InstanceIDList, false, true)
end

function Quest71150:OnSubStart7115001(arg1)
    print("OnSubStart7115001")
    this:BanCrowdNpc(3107, 18, datas.InstanceIDList, true, true)
end

function Quest71150:OnSubFinish7115001(arg1)
    print("OnSubFinish7115001")
end

function Quest71150:OnSubStart7115002(arg1)
    print("OnSubStart7115002")
    this:BanCrowdNpc(3107, 18, datas.InstanceIDList, true, true)
end

function Quest71150:OnSubFinish7115002(arg1)
    print("OnSubFinish7115002")
    this:BanCrowdNpc(3107, 18, datas.InstanceIDList, false, true)
end

return Quest71150
