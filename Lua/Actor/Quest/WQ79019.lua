require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest79019 = class("Quest79019", QuestActorProxy)
Quest79019.defaultAlias = "Quest79019"
local clientData
local mainID
local actorAlias
local subIDs

function Quest79019:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest79019:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7901901"] = self.OnSubStart7901901,
        ["7901902"] = self.OnSubStart7901902,
        ["7901903"] = self.OnSubStart7901903,
        ["7901904"] = self.OnSubStart7901904,
        ["7901905"] = self.OnSubStart7901905,
        ["7901906"] = self.OnSubStart7901906
    }
end

function Quest79019:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7901901"] = self.OnSubFinish7901901,
        ["7901902"] = self.OnSubFinish7901902,
        ["7901903"] = self.OnSubFinish7901903,
        ["7901904"] = self.OnSubFinish7901904,
        ["7901905"] = self.OnSubFinish7901905,
        ["7901906"] = self.OnSubFinish7901906
    }
end

function Quest79019:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest79019:Start()
    print("Start")
end

function Quest79019:OnDestroy()
    print("OnDestroy")
end

function Quest79019:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest79019:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest79019:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest79019:OnSubStart7901901(arg1)
    print("OnSubStart7901901")
end

function Quest79019:OnSubFinish7901901(arg1)
    print("OnSubFinish7901901")
end

function Quest79019:OnSubStart7901902(arg1)
    print("OnSubStart7901902")
    actorMgr:CreateActorWithPos("Q7901902Trigger", "Actor/Gadget/Q7901902Trigger", 70900002, 0, sceneData:GetDummyPoint(9, "Q7901902").pos, sceneData:GetDummyPoint(9, "Q7901902").rot, true, false, 9)
end

function Quest79019:OnSubFinish7901902(arg1)
    print("OnSubFinish7901902")
end

function Quest79019:OnSubStart7901903(arg1)
    print("OnSubStart7901903")
end

function Quest79019:OnSubFinish7901903(arg1)
    print("OnSubFinish7901903")
end

function Quest79019:OnSubStart7901904(arg1)
    print("OnSubStart7901904")
    actorMgr:CreateActorWithPos("Q7901904Trigger", "Actor/Gadget/Q7901904Trigger", 70900002, 0, sceneData:GetDummyPoint(9, "Q7901904").pos, sceneData:GetDummyPoint(9, "Q7901904").rot, true, false, 9)
end

function Quest79019:OnSubFinish7901904(arg1)
    print("OnSubFinish7901904")
end

function Quest79019:OnSubStart7901905(arg1)
    print("OnSubStart7901905")
end

function Quest79019:OnSubFinish7901905(arg1)
    print("OnSubFinish7901905")
end

function Quest79019:OnSubStart7901906(arg1)
    print("OnSubStart7901906")
end

function Quest79019:OnSubFinish7901906(arg1)
    print("OnSubFinish7901906")
end

return Quest79019
