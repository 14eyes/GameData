require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70825 = class("Quest70825", QuestActorProxy)
Quest70825.defaultAlias = "Quest70825"
local clientData
local mainID
local actorAlias
local subIDs
local datas

function Quest70825:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    datas = clientData.Datas
end

function Quest70825:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7082501"] = self.OnSubStart7082501,
        ["7082502"] = self.OnSubStart7082502,
        ["7082503"] = self.OnSubStart7082503,
        ["7082504"] = self.OnSubStart7082504,
        ["7082505"] = self.OnSubStart7082505,
        ["7082506"] = self.OnSubStart7082506,
        ["7082507"] = self.OnSubStart7082507,
        ["7082508"] = self.OnSubStart7082508
    }
end

function Quest70825:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7082501"] = self.OnSubFinish7082501,
        ["7082502"] = self.OnSubFinish7082502,
        ["7082503"] = self.OnSubFinish7082503,
        ["7082504"] = self.OnSubFinish7082504,
        ["7082505"] = self.OnSubFinish7082505,
        ["7082506"] = self.OnSubFinish7082506,
        ["7082507"] = self.OnSubFinish7082507,
        ["7082508"] = self.OnSubFinish7082508
    }
end

function Quest70825:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7082501"] = self.OnSubFailed7082501,
        ["7082502"] = self.OnSubFailed7082502,
        ["7082503"] = self.OnSubFailed7082503,
        ["7082504"] = self.OnSubFailed7082504,
        ["7082505"] = self.OnSubFailed7082505,
        ["7082506"] = self.OnSubFailed7082506,
        ["7082507"] = self.OnSubFailed7082507,
        ["7082508"] = self.OnSubFailed7082508
    }
end

function Quest70825:Start()
    print("Start")
end

function Quest70825:OnDestroy()
    print("OnDestroy")
end

function Quest70825:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70825:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70825:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest70825:OnSubStart7082501(arg1)
    print("OnSubStart7082501")
end

function Quest70825:OnSubFinish7082501(arg1)
    print("OnSubFinish7082501")
    self:SetQuestVar(subIDs.q7082501, 1, 1)
end

function Quest70825:OnSubFailed7082501(arg1)
    print("OnSubFailed7082501")
end

function Quest70825:OnSubStart7082502(arg1)
    print("OnSubStart7082502")
    actorMgr:CreateActorWithPos(datas.Q7082502Trigger_.alias, datas.Q7082502Trigger_.script, datas.Q7082502Trigger_.id, 0, datas.Q7082502Trigger_.point.pos, datas.Q7082502Trigger_.point.rot, true, false, 3)
end

function Quest70825:OnSubFinish7082502(arg1)
    print("OnSubFinish7082502")
    self:NarratorOnlyTask(datas.PaimonReminder02, nil, "")
end

function Quest70825:OnSubFailed7082502(arg1)
    print("OnSubFailed7082502")
end

function Quest70825:OnSubStart7082503(arg1)
    print("OnSubStart7082503")
end

function Quest70825:OnSubFinish7082503(arg1)
    print("OnSubFinish7082503")
end

function Quest70825:OnSubFailed7082503(arg1)
    print("OnSubFailed7082503")
end

function Quest70825:OnSubStart7082504(arg1)
    print("OnSubStart7082504")
    actorMgr:CreateActorWithPos(datas.Q7082504Trigger_.alias, datas.Q7082504Trigger_.script, datas.Q7082504Trigger_.id, 0, datas.Q7082504Trigger_.point.pos, datas.Q7082504Trigger_.point.rot, true, false, 3)
end

function Quest70825:OnSubFinish7082504(arg1)
    print("OnSubFinish7082504")
    self:NarratorOnlyTask(datas.PaimonReminder04, nil, "")
end

function Quest70825:OnSubFailed7082504(arg1)
    print("OnSubFailed7082504")
end

function Quest70825:OnSubStart7082505(arg1)
    print("OnSubStart7082505")
end

function Quest70825:OnSubFinish7082505(arg1)
    print("OnSubFinish7082505")
end

function Quest70825:OnSubFailed7082505(arg1)
    print("OnSubFailed7082505")
end

function Quest70825:OnSubStart7082506(arg1)
    print("OnSubStart7082506")
    actorMgr:CreateActorWithPos(datas.Q7082506Trigger_.alias, datas.Q7082506Trigger_.script, datas.Q7082506Trigger_.id, 0, datas.Q7082506Trigger_.point.pos, datas.Q7082506Trigger_.point.rot, true, false, 3)
end

function Quest70825:OnSubFinish7082506(arg1)
    print("OnSubFinish7082506")
    self:NarratorOnlyTask(datas.PaimonReminder06, nil, "")
end

function Quest70825:OnSubFailed7082506(arg1)
    print("OnSubFailed7082506")
end

function Quest70825:OnSubStart7082507(arg1)
    print("OnSubStart7082507")
end

function Quest70825:OnSubFinish7082507(arg1)
    print("OnSubFinish7082507")
    self:SetQuestVar(subIDs.q7082507, 1, 0)
end

function Quest70825:OnSubFailed7082507(arg1)
    print("OnSubFailed7082507")
end

function Quest70825:OnSubStart7082508(arg1)
    print("OnSubStart7082508")
    self:NarratorOnlyTask(datas.PaimonReminder08, nil, "")
end

function Quest70825:OnSubFinish7082508(arg1)
    print("OnSubFinish7082508")
end

function Quest70825:OnSubFailed7082508(arg1)
    print("OnSubFailed7082508")
end

return Quest70825
