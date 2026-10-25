require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73329 = class("Quest73329", QuestActorProxy)
Quest73329.defaultAlias = "Quest73329"
local clientData
local this
local mainID
local actorAlias
local subIDs
local datas

function Quest73329:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    datas = clientData.Datas
end

function Quest73329:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7332901"] = self.OnSubStart7332901,
        ["7332902"] = self.OnSubStart7332902,
        ["7332903"] = self.OnSubStart7332903,
        ["7332904"] = self.OnSubStart7332904,
        ["7332905"] = self.OnSubStart7332905,
        ["7332906"] = self.OnSubStart7332906,
        ["7332907"] = self.OnSubStart7332907,
        ["7332908"] = self.OnSubStart7332908,
        ["7332909"] = self.OnSubStart7332909,
        ["7332910"] = self.OnSubStart7332910
    }
end

function Quest73329:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7332901"] = self.OnSubFinish7332901,
        ["7332902"] = self.OnSubFinish7332902,
        ["7332903"] = self.OnSubFinish7332903,
        ["7332904"] = self.OnSubFinish7332904,
        ["7332905"] = self.OnSubFinish7332905,
        ["7332906"] = self.OnSubFinish7332906,
        ["7332907"] = self.OnSubFinish7332907,
        ["7332908"] = self.OnSubFinish7332908,
        ["7332909"] = self.OnSubFinish7332909,
        ["7332910"] = self.OnSubFinish7332910
    }
end

function Quest73329:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73329:Start()
    print("Start")
end

function Quest73329:OnDestroy()
    print("OnDestroy")
end

function Quest73329:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73329:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73329:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73329:OnSubStart7332901(arg1)
    print("OnSubStart7332901")
end

function Quest73329:OnSubFinish7332901(arg1)
    print("OnSubFinish7332901")
end

function Quest73329:OnSubStart7332902(arg1)
    print("OnSubStart7332902")
end

function Quest73329:OnSubFinish7332902(arg1)
    print("OnSubFinish7332902")
end

function Quest73329:OnSubStart7332903(arg1)
    print("OnSubStart7332903")
end

function Quest73329:OnSubFinish7332903(arg1)
    print("OnSubFinish7332903")
end

function Quest73329:OnSubStart7332904(arg1)
    print("OnSubStart7332904")
end

function Quest73329:OnSubFinish7332904(arg1)
    print("OnSubFinish7332904")
end

function Quest73329:OnSubStart7332905(arg1)
    print("OnSubStart7332905")
end

function Quest73329:OnSubFinish7332905(arg1)
    print("OnSubFinish7332905")
end

function Quest73329:OnSubStart7332906(arg1)
    print("OnSubStart7332906")
end

function Quest73329:OnSubFinish7332906(arg1)
    print("OnSubFinish7332906")
end

function Quest73329:OnSubStart7332907(arg1)
    print("OnSubStart7332907")
end

function Quest73329:OnSubFinish7332907(arg1)
    print("OnSubFinish7332907")
end

function Quest73329:OnSubStart7332908(arg1)
    print("OnSubStart7332908")
end

function Quest73329:OnSubFinish7332908(arg1)
    print("OnSubFinish7332908")
end

function Quest73329:OnSubStart7332909(arg1)
    print("OnSubStart7332909")
end

function Quest73329:OnSubFinish7332909(arg1)
    print("OnSubFinish7332909")
end

function Quest73329:OnSubStart7332910(arg1)
    print("OnSubStart7332910")
end

function Quest73329:OnSubFinish7332910(arg1)
    print("OnSubFinish7332910")
    this:NarratorOnlyTaskByData(datas.NarratorWithId10)
end

return Quest73329
