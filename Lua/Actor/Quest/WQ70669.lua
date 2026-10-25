require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70669 = class("Quest70669", QuestActorProxy)
Quest70669.defaultAlias = "Quest70669"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs

function Quest70669:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest70669:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7066901"] = self.OnSubStart7066901,
        ["7066902"] = self.OnSubStart7066902,
        ["7066903"] = self.OnSubStart7066903,
        ["7066905"] = self.OnSubStart7066905,
        ["7066904"] = self.OnSubStart7066904
    }
end

function Quest70669:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7066901"] = self.OnSubFinish7066901,
        ["7066902"] = self.OnSubFinish7066902,
        ["7066903"] = self.OnSubFinish7066903,
        ["7066905"] = self.OnSubFinish7066905,
        ["7066904"] = self.OnSubFinish7066904
    }
end

function Quest70669:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7066905"] = self.OnSubFailed7066905}
end

function Quest70669:Start()
    print("Start")
end

function Quest70669:OnDestroy()
    print("OnDestroy")
end

function Quest70669:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70669:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70669:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest70669:OnSubStart7066901(arg1)
    print("OnSubStart7066901")
end

function Quest70669:OnSubFinish7066901(arg1)
    print("OnSubFinish7066901")
    this:LevelLoadFinishSafeCall(function(arg1)
        this:ShowTutorialDialog(1297)
    end)
end

function Quest70669:OnSubStart7066902(arg1)
    print("OnSubStart7066902")
end

function Quest70669:OnSubFinish7066902(arg1)
    print("OnSubFinish7066902")
end

function Quest70669:OnSubStart7066903(arg1)
    print("OnSubStart7066903")
end

function Quest70669:OnSubFinish7066903(arg1)
    print("OnSubFinish7066903")
end

function Quest70669:OnSubStart7066905(arg1)
    print("OnSubStart7066905")
end

function Quest70669:OnSubFinish7066905(arg1)
    print("OnSubFinish7066905")
end

function Quest70669:OnSubFailed7066905(arg1)
    print("OnSubFailed7066905")
    actorMgr:CreateActorWithPos("Q70669Trigger1", "Actor/Gadget/Q70669Trigger1", 70900002, 0, sceneData:GetDummyPoint(1076, "Q7066502_N1713").pos, sceneData:GetDummyPoint(1076, "Q7066502_N1713").rot, true, false, 1076)
end

function Quest70669:OnSubStart7066904(arg1)
    print("OnSubStart7066904")
    actorMgr:CreateActorWithPos("Q70669Trigger", "Actor/Gadget/Q70669Trigger", 70900002, 0, sceneData:GetDummyPoint(1076, "Q7066502_N1713").pos, sceneData:GetDummyPoint(1076, "Q7066502_N1713").rot, true, false, 1076)
end

function Quest70669:OnSubFinish7066904(arg1)
    print("OnSubFinish7066904")
end

return Quest70669
