require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70666 = class("Quest70666", QuestActorProxy)
Quest70666.defaultAlias = "Quest70666"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs

function Quest70666:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest70666:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7066604"] = self.OnSubStart7066604,
        ["7066601"] = self.OnSubStart7066601,
        ["7066602"] = self.OnSubStart7066602,
        ["7066605"] = self.OnSubStart7066605,
        ["7066603"] = self.OnSubStart7066603
    }
end

function Quest70666:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7066604"] = self.OnSubFinish7066604,
        ["7066601"] = self.OnSubFinish7066601,
        ["7066602"] = self.OnSubFinish7066602,
        ["7066605"] = self.OnSubFinish7066605,
        ["7066603"] = self.OnSubFinish7066603
    }
end

function Quest70666:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7066605"] = self.OnSubFailed7066605}
end

function Quest70666:Start()
    print("Start")
end

function Quest70666:OnDestroy()
    print("OnDestroy")
end

function Quest70666:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70666:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70666:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest70666:OnSubStart7066604(arg1)
    print("OnSubStart7066604")
end

function Quest70666:OnSubFinish7066604(arg1)
    print("OnSubFinish7066604")
    this:LevelLoadFinishSafeCall(function(arg1)
        this:ShowTutorialDialog(1285)
    end)
end

function Quest70666:OnSubStart7066601(arg1)
    print("OnSubStart7066601")
end

function Quest70666:OnSubFinish7066601(arg1)
    print("OnSubFinish7066601")
end

function Quest70666:OnSubStart7066602(arg1)
    print("OnSubStart7066602")
end

function Quest70666:OnSubFinish7066602(arg1)
    print("OnSubFinish7066602")
end

function Quest70666:OnSubStart7066605(arg1)
    print("OnSubStart7066605")
end

function Quest70666:OnSubFinish7066605(arg1)
    print("OnSubFinish7066605")
end

function Quest70666:OnSubFailed7066605(arg1)
    print("OnSubFailed7066605")
    actorMgr:CreateActorWithPos("Q70666Trigger1", "Actor/Gadget/Q70666Trigger1", 70900002, 0, sceneData:GetDummyPoint(1076, "Q7066502_N1713").pos, sceneData:GetDummyPoint(1076, "Q7066502_N1713").rot, true, false, 1076)
end

function Quest70666:OnSubStart7066603(arg1)
    print("OnSubStart7066603")
    actorMgr:CreateActorWithPos("Q70666Trigger", "Actor/Gadget/Q70666Trigger", 70900002, 0, sceneData:GetDummyPoint(1076, "Q7066502_N1713").pos, sceneData:GetDummyPoint(1076, "Q7066502_N1713").rot, true, false, 1076)
end

function Quest70666:OnSubFinish7066603(arg1)
    print("OnSubFinish7066603")
end

return Quest70666
