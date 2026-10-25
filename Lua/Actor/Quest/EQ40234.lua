require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40234 = class("Quest40234", QuestActorProxy)
Quest40234.defaultAlias = "Quest40234"
local clientData
local this
local mainID
local actorAlias
local datas

function Quest40234:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
end

function Quest40234:OnSubStartHandlerBuild()
    self.subStartHandlers = {["4023401"] = self.OnSubStart4023401}
end

function Quest40234:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["4023401"] = self.OnSubFinish4023401}
end

function Quest40234:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest40234:Start()
    print("Start")
end

function Quest40234:OnDestroy()
    print("OnDestroy")
end

function Quest40234:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest40234:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest40234:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest40234:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest40234:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 4023401 then
        this:TransmitPlayerWithQuestIdByData(4023401, 1, datas.TransmitDataNormal, nil, nil, nil)
    end
end

function Quest40234:OnSubStart4023401(arg1)
    print("OnSubStart4023401")
end

function Quest40234:OnSubFinish4023401(arg1)
    print("OnSubFinish4023401")
end

return Quest40234
