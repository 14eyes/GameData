require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest79029 = class("Quest79029", QuestActorProxy)
Quest79029.defaultAlias = "Quest79029"
local clientData
local mainID
local actorAlias
local subIDs
local datas

function Quest79029:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    datas = clientData.Datas
end

function Quest79029:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7902908"] = self.OnSubStart7902908,
        ["7902901"] = self.OnSubStart7902901,
        ["7902902"] = self.OnSubStart7902902,
        ["7902906"] = self.OnSubStart7902906,
        ["7902907"] = self.OnSubStart7902907,
        ["7902903"] = self.OnSubStart7902903,
        ["7902904"] = self.OnSubStart7902904,
        ["7902905"] = self.OnSubStart7902905
    }
end

function Quest79029:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7902908"] = self.OnSubFinish7902908,
        ["7902901"] = self.OnSubFinish7902901,
        ["7902902"] = self.OnSubFinish7902902,
        ["7902906"] = self.OnSubFinish7902906,
        ["7902907"] = self.OnSubFinish7902907,
        ["7902903"] = self.OnSubFinish7902903,
        ["7902904"] = self.OnSubFinish7902904,
        ["7902905"] = self.OnSubFinish7902905
    }
end

function Quest79029:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7902904"] = self.OnSubFailed7902904}
end

function Quest79029:Start()
    print("Start")
end

function Quest79029:OnDestroy()
    print("OnDestroy")
end

function Quest79029:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest79029:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest79029:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest79029:OnSubStart7902908(arg1)
    print("OnSubStart7902908")
    actorMgr:CreateActorWithPos("Q79029Trigger", "Actor/Gadget/Q79029Trigger", 70900002, 0, sceneData:GetDummyPoint(9, "Q7902901_guide").pos, sceneData:GetDummyPoint(9, "Q7902901_guide").rot, true, false, 9)
end

function Quest79029:OnSubFinish7902908(arg1)
    print("OnSubFinish7902908")
end

function Quest79029:OnSubStart7902901(arg1)
    print("OnSubStart7902901")
    actorMgr:CreateActorWithPos("Q79029Trigger", "Actor/Gadget/Q79029Trigger", 70900002, 0, sceneData:GetDummyPoint(9, "Q7902901_guide").pos, sceneData:GetDummyPoint(9, "Q7902901_guide").rot, true, false, 9)
end

function Quest79029:OnSubFinish7902901(arg1)
    print("OnSubFinish7902901")
end

function Quest79029:OnSubStart7902902(arg1)
    print("OnSubStart7902902")
end

function Quest79029:OnSubFinish7902902(arg1)
    print("OnSubFinish7902902")
end

function Quest79029:OnSubStart7902906(arg1)
    print("OnSubStart7902906")
end

function Quest79029:OnSubFinish7902906(arg1)
    print("OnSubFinish7902906")
end

function Quest79029:OnSubStart7902907(arg1)
    print("OnSubStart7902907")
end

function Quest79029:OnSubFinish7902907(arg1)
    print("OnSubFinish7902907")
    self:ShowBlackScreen(0.5, 1, 0, nil, nil, nil, "", false, true)
end

function Quest79029:OnSubStart7902903(arg1)
    print("OnSubStart7902903")
end

function Quest79029:OnSubFinish7902903(arg1)
    print("OnSubFinish7902903")
    self:ShowBlackScreen(0.1, 1, 0.5, nil, nil, nil, "", false, true)
end

function Quest79029:OnSubStart7902904(arg1)
    print("OnSubStart7902904")
    actorMgr:CreateActorWithPos("Q79029Trigger1", "Actor/Gadget/Q79029Trigger1", 70900002, 0, sceneData:GetDummyPoint(9, "Q7902904_guide").pos, sceneData:GetDummyPoint(9, "Q7902904_guide").rot, true, false, 9)
end

function Quest79029:OnSubFinish7902904(arg1)
    print("OnSubFinish7902904")
end

function Quest79029:OnSubFailed7902904(arg1)
    print("OnSubFailed7902904")
    self:TransmitPlayerWithTextByQuestId(7902904, 1, datas.TextmapId, 2)
end

function Quest79029:OnSubStart7902905(arg1)
    print("OnSubStart7902905")
end

function Quest79029:OnSubFinish7902905(arg1)
    print("OnSubFinish7902905")
end

return Quest79029
