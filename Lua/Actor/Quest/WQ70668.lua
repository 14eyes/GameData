require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70668 = class("Quest70668", QuestActorProxy)
Quest70668.defaultAlias = "Quest70668"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs

function Quest70668:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest70668:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7066801"] = self.OnSubStart7066801,
        ["7066802"] = self.OnSubStart7066802,
        ["7066803"] = self.OnSubStart7066803,
        ["7066805"] = self.OnSubStart7066805,
        ["7066804"] = self.OnSubStart7066804
    }
end

function Quest70668:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7066801"] = self.OnSubFinish7066801,
        ["7066802"] = self.OnSubFinish7066802,
        ["7066803"] = self.OnSubFinish7066803,
        ["7066805"] = self.OnSubFinish7066805,
        ["7066804"] = self.OnSubFinish7066804
    }
end

function Quest70668:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7066805"] = self.OnSubFailed7066805}
end

function Quest70668:Start()
    print("Start")
end

function Quest70668:OnDestroy()
    print("OnDestroy")
end

function Quest70668:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70668:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70668:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest70668:OnSubStart7066801(arg1)
    print("OnSubStart7066801")
end

function Quest70668:OnSubFinish7066801(arg1)
    print("OnSubFinish7066801")
    this:LevelLoadFinishSafeCall(function(arg1)
        this:ShowTutorialDialog(1297)
    end)
end

function Quest70668:OnSubStart7066802(arg1)
    print("OnSubStart7066802")
end

function Quest70668:OnSubFinish7066802(arg1)
    print("OnSubFinish7066802")
end

function Quest70668:OnSubStart7066803(arg1)
    print("OnSubStart7066803")
end

function Quest70668:OnSubFinish7066803(arg1)
    print("OnSubFinish7066803")
end

function Quest70668:OnSubStart7066805(arg1)
    print("OnSubStart7066805")
end

function Quest70668:OnSubFinish7066805(arg1)
    print("OnSubFinish7066805")
end

function Quest70668:OnSubFailed7066805(arg1)
    print("OnSubFailed7066805")
    actorMgr:CreateActorWithPos("Q70668Trigger1", "Actor/Gadget/Q70668Trigger1", 70900002, 0, sceneData:GetDummyPoint(1076, "Q7066502_N1713").pos, sceneData:GetDummyPoint(1076, "Q7066502_N1713").rot, true, false, 1076)
end

function Quest70668:OnSubStart7066804(arg1)
    print("OnSubStart7066804")
    actorMgr:CreateActorWithPos("Q70668Trigger", "Actor/Gadget/Q70668Trigger", 70900002, 0, sceneData:GetDummyPoint(1076, "Q7066502_N1713").pos, sceneData:GetDummyPoint(1076, "Q7066502_N1713").rot, true, false, 1076)
end

function Quest70668:OnSubFinish7066804(arg1)
    print("OnSubFinish7066804")
end

return Quest70668
