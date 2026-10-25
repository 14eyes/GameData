require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73190 = class("Quest73190", QuestActorProxy)
Quest73190.defaultAlias = "Quest73190"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest73190:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest73190:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7319001"] = self.OnSubStart7319001,
        ["7319002"] = self.OnSubStart7319002,
        ["7319003"] = self.OnSubStart7319003,
        ["7319004"] = self.OnSubStart7319004,
        ["7319005"] = self.OnSubStart7319005
    }
end

function Quest73190:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7319001"] = self.OnSubFinish7319001,
        ["7319002"] = self.OnSubFinish7319002,
        ["7319003"] = self.OnSubFinish7319003,
        ["7319004"] = self.OnSubFinish7319004,
        ["7319005"] = self.OnSubFinish7319005
    }
end

function Quest73190:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73190:Start()
    print("Start")
end

function Quest73190:OnDestroy()
    print("OnDestroy")
end

function Quest73190:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73190:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73190:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73190:OnSubStart7319001(arg1)
    print("OnSubStart7319001")
    actorMgr:CreateActorWithPos("Q73190Trigger", "Actor/Gadget/Q73190Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q7319001_guide").pos, sceneData:GetDummyPoint(3, "Q7319001_guide").rot, true, false, 3)
end

function Quest73190:OnSubFinish7319001(arg1)
    print("OnSubFinish7319001")
    self:NarratorOnlyTask(datas.finish7319001, nil, "")
end

function Quest73190:OnSubStart7319002(arg1)
    print("OnSubStart7319002")
    actorMgr:CreateActorWithPos("Q73190Trigger1", "Actor/Gadget/Q73190Trigger1", 70900002, 0, sceneData:GetDummyPoint(3, "Q7319002_guide").pos, sceneData:GetDummyPoint(3, "Q7319002_guide").rot, true, false, 3)
end

function Quest73190:OnSubFinish7319002(arg1)
    print("OnSubFinish7319002")
end

function Quest73190:OnSubStart7319003(arg1)
    print("OnSubStart7319003")
end

function Quest73190:OnSubFinish7319003(arg1)
    print("OnSubFinish7319003")
    self:NarratorOnlyTask(datas.finish7319003, nil, "")
end

function Quest73190:OnSubStart7319004(arg1)
    print("OnSubStart7319004")
end

function Quest73190:OnSubFinish7319004(arg1)
    print("OnSubFinish7319004")
end

function Quest73190:OnSubStart7319005(arg1)
    print("OnSubStart7319005")
end

function Quest73190:OnSubFinish7319005(arg1)
    print("OnSubFinish7319005")
end

return Quest73190
