require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70667 = class("Quest70667", QuestActorProxy)
Quest70667.defaultAlias = "Quest70667"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs

function Quest70667:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest70667:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7066704"] = self.OnSubStart7066704,
        ["7066701"] = self.OnSubStart7066701,
        ["7066702"] = self.OnSubStart7066702,
        ["7066705"] = self.OnSubStart7066705,
        ["7066703"] = self.OnSubStart7066703
    }
end

function Quest70667:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7066704"] = self.OnSubFinish7066704,
        ["7066701"] = self.OnSubFinish7066701,
        ["7066702"] = self.OnSubFinish7066702,
        ["7066705"] = self.OnSubFinish7066705,
        ["7066703"] = self.OnSubFinish7066703
    }
end

function Quest70667:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7066705"] = self.OnSubFailed7066705}
end

function Quest70667:Start()
    print("Start")
end

function Quest70667:OnDestroy()
    print("OnDestroy")
end

function Quest70667:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70667:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70667:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest70667:OnSubStart7066704(arg1)
    print("OnSubStart7066704")
end

function Quest70667:OnSubFinish7066704(arg1)
    print("OnSubFinish7066704")
    this:LevelLoadFinishSafeCall(function(arg1)
        this:ShowTutorialDialog(1297)
    end)
end

function Quest70667:OnSubStart7066701(arg1)
    print("OnSubStart7066701")
end

function Quest70667:OnSubFinish7066701(arg1)
    print("OnSubFinish7066701")
end

function Quest70667:OnSubStart7066702(arg1)
    print("OnSubStart7066702")
end

function Quest70667:OnSubFinish7066702(arg1)
    print("OnSubFinish7066702")
end

function Quest70667:OnSubStart7066705(arg1)
    print("OnSubStart7066705")
end

function Quest70667:OnSubFinish7066705(arg1)
    print("OnSubFinish7066705")
end

function Quest70667:OnSubFailed7066705(arg1)
    print("OnSubFailed7066705")
    actorMgr:CreateActorWithPos("Q70667Trigger1", "Actor/Gadget/Q70667Trigger1", 70900002, 0, sceneData:GetDummyPoint(1076, "Q7066502_N1713").pos, sceneData:GetDummyPoint(1076, "Q7066502_N1713").rot, true, false, 1076)
end

function Quest70667:OnSubStart7066703(arg1)
    print("OnSubStart7066703")
    actorMgr:CreateActorWithPos("Q70667Trigger", "Actor/Gadget/Q70667Trigger", 70900002, 0, sceneData:GetDummyPoint(1076, "Q7066502_N1713").pos, sceneData:GetDummyPoint(1076, "Q7066502_N1713").rot, true, false, 1076)
end

function Quest70667:OnSubFinish7066703(arg1)
    print("OnSubFinish7066703")
end

return Quest70667
