require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest79037 = class("Quest79037", QuestActorProxy)
Quest79037.defaultAlias = "Quest79037"
local clientData
local mainID
local actorAlias
local subIDs

function Quest79037:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest79037:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7903701"] = self.OnSubStart7903701,
        ["7903702"] = self.OnSubStart7903702,
        ["7903703"] = self.OnSubStart7903703,
        ["7903707"] = self.OnSubStart7903707,
        ["7903704"] = self.OnSubStart7903704,
        ["7903705"] = self.OnSubStart7903705,
        ["7903706"] = self.OnSubStart7903706,
        ["7903708"] = self.OnSubStart7903708
    }
end

function Quest79037:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7903701"] = self.OnSubFinish7903701,
        ["7903702"] = self.OnSubFinish7903702,
        ["7903703"] = self.OnSubFinish7903703,
        ["7903707"] = self.OnSubFinish7903707,
        ["7903704"] = self.OnSubFinish7903704,
        ["7903705"] = self.OnSubFinish7903705,
        ["7903706"] = self.OnSubFinish7903706,
        ["7903708"] = self.OnSubFinish7903708
    }
end

function Quest79037:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest79037:Start()
    print("Start")
end

function Quest79037:OnDestroy()
    print("OnDestroy")
end

function Quest79037:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest79037:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest79037:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest79037:OnSubStart7903701(arg1)
    print("OnSubStart7903701")
end

function Quest79037:OnSubFinish7903701(arg1)
    print("OnSubFinish7903701")
    globalActor:PlayerEnterDungeonPoint(31, 1140, 7903701, 1)
end

function Quest79037:OnSubStart7903702(arg1)
    print("OnSubStart7903702")
end

function Quest79037:OnSubFinish7903702(arg1)
    print("OnSubFinish7903702")
end

function Quest79037:OnSubStart7903703(arg1)
    print("OnSubStart7903703")
end

function Quest79037:OnSubFinish7903703(arg1)
    print("OnSubFinish7903703")
    globalActor:PlayerEnterDungeonPoint(29, 1139, 7903703, 2)
end

function Quest79037:OnSubStart7903707(arg1)
    print("OnSubStart7903707")
    globalActor:PlayerEnterDungeonPoint(29, 1139, 7903707, 2)
end

function Quest79037:OnSubFinish7903707(arg1)
    print("OnSubFinish7903707")
end

function Quest79037:OnSubStart7903704(arg1)
    print("OnSubStart7903704")
end

function Quest79037:OnSubFinish7903704(arg1)
    print("OnSubFinish7903704")
    globalActor:PlayerEnterDungeonPoint(31, 1140, 7903704, 1)
end

function Quest79037:OnSubStart7903705(arg1)
    print("OnSubStart7903705")
end

function Quest79037:OnSubFinish7903705(arg1)
    print("OnSubFinish7903705")
end

function Quest79037:OnSubStart7903706(arg1)
    print("OnSubStart7903706")
end

function Quest79037:OnSubFinish7903706(arg1)
    print("OnSubFinish7903706")
    globalActor:PlayerEnterDungeonPoint(29, 1139, 7903706, 2)
end

function Quest79037:OnSubStart7903708(arg1)
    print("OnSubStart7903708")
end

function Quest79037:OnSubFinish7903708(arg1)
    print("OnSubFinish7903708")
end

return Quest79037
