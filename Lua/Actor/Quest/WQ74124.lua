require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74124 = class("Quest74124", QuestActorProxy)
Quest74124.defaultAlias = "Quest74124"
local clientData
local this
local mainID
local actorAlias
local subIDs
local datas

function Quest74124:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    datas = clientData.Datas
end

function Quest74124:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7412401"] = self.OnSubStart7412401,
        ["7412402"] = self.OnSubStart7412402,
        ["7412403"] = self.OnSubStart7412403,
        ["7412404"] = self.OnSubStart7412404
    }
end

function Quest74124:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7412401"] = self.OnSubFinish7412401,
        ["7412402"] = self.OnSubFinish7412402,
        ["7412403"] = self.OnSubFinish7412403,
        ["7412404"] = self.OnSubFinish7412404
    }
end

function Quest74124:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74124:Start()
    print("Start")
end

function Quest74124:OnDestroy()
    print("OnDestroy")
end

function Quest74124:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74124:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74124:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest74124:OnSubStart7412401(arg1)
    print("OnSubStart7412401")
end

function Quest74124:OnSubFinish7412401(arg1)
    print("OnSubFinish7412401")
    this:NarratorOnlyTaskByData(datas.NarratorWithId, nil, 74124)
end

function Quest74124:OnSubStart7412402(arg1)
    print("OnSubStart7412402")
end

function Quest74124:OnSubFinish7412402(arg1)
    print("OnSubFinish7412402")
end

function Quest74124:OnSubStart7412403(arg1)
    print("OnSubStart7412403")
    actorUtils.FinishQuestID(false, 7412403)
end

function Quest74124:OnSubFinish7412403(arg1)
    print("OnSubFinish7412403")
end

function Quest74124:OnSubStart7412404(arg1)
    print("OnSubStart7412404")
    actorUtils.FinishQuestID(false, 7412404)
end

function Quest74124:OnSubFinish7412404(arg1)
    print("OnSubFinish7412404")
end

return Quest74124
