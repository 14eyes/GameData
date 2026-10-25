require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73269 = class("Quest73269", QuestActorProxy)
Quest73269.defaultAlias = "Quest73269"
local clientData
local mainID
local actorAlias
local subIDs
local datas

function Quest73269:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    datas = clientData.Datas
end

function Quest73269:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7326901"] = self.OnSubStart7326901,
        ["7326902"] = self.OnSubStart7326902,
        ["7326903"] = self.OnSubStart7326903,
        ["7326904"] = self.OnSubStart7326904,
        ["7326905"] = self.OnSubStart7326905,
        ["7326906"] = self.OnSubStart7326906,
        ["7326907"] = self.OnSubStart7326907,
        ["7326908"] = self.OnSubStart7326908,
        ["7326909"] = self.OnSubStart7326909,
        ["7326910"] = self.OnSubStart7326910
    }
end

function Quest73269:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7326901"] = self.OnSubFinish7326901,
        ["7326902"] = self.OnSubFinish7326902,
        ["7326903"] = self.OnSubFinish7326903,
        ["7326904"] = self.OnSubFinish7326904,
        ["7326905"] = self.OnSubFinish7326905,
        ["7326906"] = self.OnSubFinish7326906,
        ["7326907"] = self.OnSubFinish7326907,
        ["7326908"] = self.OnSubFinish7326908,
        ["7326909"] = self.OnSubFinish7326909,
        ["7326910"] = self.OnSubFinish7326910
    }
end

function Quest73269:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73269:Start()
    print("Start")
end

function Quest73269:OnDestroy()
    print("OnDestroy")
end

function Quest73269:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73269:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73269:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73269:OnSubStart7326901(arg1)
    print("OnSubStart7326901")
end

function Quest73269:OnSubFinish7326901(arg1)
    print("OnSubFinish7326901")
end

function Quest73269:OnSubStart7326902(arg1)
    print("OnSubStart7326902")
end

function Quest73269:OnSubFinish7326902(arg1)
    print("OnSubFinish7326902")
    self:NarratorOnlyTaskByData(datas.NarratorWithId01)
end

function Quest73269:OnSubStart7326903(arg1)
    print("OnSubStart7326903")
end

function Quest73269:OnSubFinish7326903(arg1)
    print("OnSubFinish7326903")
end

function Quest73269:OnSubStart7326904(arg1)
    print("OnSubStart7326904")
end

function Quest73269:OnSubFinish7326904(arg1)
    print("OnSubFinish7326904")
    self:NarratorOnlyTaskByData(datas.NarratorWithId02)
end

function Quest73269:OnSubStart7326905(arg1)
    print("OnSubStart7326905")
end

function Quest73269:OnSubFinish7326905(arg1)
    print("OnSubFinish7326905")
end

function Quest73269:OnSubStart7326906(arg1)
    print("OnSubStart7326906")
end

function Quest73269:OnSubFinish7326906(arg1)
    print("OnSubFinish7326906")
    self:NarratorOnlyTaskByData(datas.NarratorWithId03)
end

function Quest73269:OnSubStart7326907(arg1)
    print("OnSubStart7326907")
end

function Quest73269:OnSubFinish7326907(arg1)
    print("OnSubFinish7326907")
end

function Quest73269:OnSubStart7326908(arg1)
    print("OnSubStart7326908")
end

function Quest73269:OnSubFinish7326908(arg1)
    print("OnSubFinish7326908")
    self:NarratorOnlyTaskByData(datas.NarratorWithId04)
end

function Quest73269:OnSubStart7326909(arg1)
    print("OnSubStart7326909")
end

function Quest73269:OnSubFinish7326909(arg1)
    print("OnSubFinish7326909")
end

function Quest73269:OnSubStart7326910(arg1)
    print("OnSubStart7326910")
end

function Quest73269:OnSubFinish7326910(arg1)
    print("OnSubFinish7326910")
    self:NarratorOnlyTaskByData(datas.NarratorWithId05)
end

return Quest73269
