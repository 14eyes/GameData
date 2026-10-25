require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72237 = class("Quest72237", QuestActorProxy)
Quest72237.defaultAlias = "Quest72237"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest72237:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest72237:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7223702"] = self.OnSubStart7223702,
        ["7223703"] = self.OnSubStart7223703,
        ["7223704"] = self.OnSubStart7223704,
        ["7223705"] = self.OnSubStart7223705,
        ["7223709"] = self.OnSubStart7223709,
        ["7223706"] = self.OnSubStart7223706,
        ["7223707"] = self.OnSubStart7223707,
        ["7223701"] = self.OnSubStart7223701,
        ["7223708"] = self.OnSubStart7223708
    }
end

function Quest72237:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7223702"] = self.OnSubFinish7223702,
        ["7223703"] = self.OnSubFinish7223703,
        ["7223704"] = self.OnSubFinish7223704,
        ["7223705"] = self.OnSubFinish7223705,
        ["7223709"] = self.OnSubFinish7223709,
        ["7223706"] = self.OnSubFinish7223706,
        ["7223707"] = self.OnSubFinish7223707,
        ["7223701"] = self.OnSubFinish7223701,
        ["7223708"] = self.OnSubFinish7223708
    }
end

function Quest72237:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest72237:Start()
    print("Start")
end

function Quest72237:OnDestroy()
    print("OnDestroy")
end

function Quest72237:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72237:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72237:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest72237:NpcDestroyWithDither(arg1, arg2)
    self:GetQuestNpcActor(arg1):DestroyWithDither(false, 1)
    self:CallDelay(1, function(arg1_2)
        arg1_2:DestroyQuestNpcActor(arg1, arg2)
    end)
end

function Quest72237:OnSubStart7223702(arg1)
    print("OnSubStart7223702")
end

function Quest72237:OnSubFinish7223702(arg1)
    print("OnSubFinish7223702")
end

function Quest72237:OnSubStart7223703(arg1)
    print("OnSubStart7223703")
end

function Quest72237:OnSubFinish7223703(arg1)
    print("OnSubFinish7223703")
    actorMgr:CreateActorWithPos("Q7223703Trigger", "Actor/Gadget/Q7223703Trigger", 70900002, 0, sceneData:GetDummyPoint(5, "Q7223701Prison").pos, sceneData:GetDummyPoint(5, "Q7223701Prison").rot, true, false, 5)
end

function Quest72237:OnSubStart7223704(arg1)
    print("OnSubStart7223704")
    self:CreateQuestNpc(arg1, npcs.Npc20480Data.id, 1)
    actorMgr:CreateActorWithPos("Q7223704Trigger", "Actor/Gadget/Q7223704Trigger", 70900002, 0, sceneData:GetDummyPoint(5, "Q7223704Anzhen").pos, sceneData:GetDummyPoint(5, "Q7223704Anzhen").rot, true, false, 5)
    actorMgr:CreateActorWithPos("Q7223704Trigger02", "Actor/Gadget/Q7223704Trigger02", 70900002, 0, sceneData:GetDummyPoint(5, "Q7223704T2").pos, sceneData:GetDummyPoint(5, "Q7223704T2").rot, true, false, 5)
end

function Quest72237:OnSubFinish7223704(arg1)
    print("OnSubFinish7223704")
end

function Quest72237:OnSubStart7223705(arg1)
    print("OnSubStart7223705")
end

function Quest72237:OnSubFinish7223705(arg1)
    print("OnSubFinish7223705")
end

function Quest72237:OnSubStart7223709(arg1)
    print("OnSubStart7223709")
end

function Quest72237:OnSubFinish7223709(arg1)
    print("OnSubFinish7223709")
end

function Quest72237:OnSubStart7223706(arg1)
    print("OnSubStart7223706")
    actorMgr:CreateActorWithPos("Q7223706Trigger", "Actor/Gadget/Q7223706Trigger", 70900002, 0, sceneData:GetDummyPoint(5, "Q7223707Yiji").pos, sceneData:GetDummyPoint(5, "Q7223707Yiji").rot, true, false, 5)
end

function Quest72237:OnSubFinish7223706(arg1)
    print("OnSubFinish7223706")
end

function Quest72237:OnSubStart7223707(arg1)
    print("OnSubStart7223707")
end

function Quest72237:OnSubFinish7223707(arg1)
    print("OnSubFinish7223707")
    self:ShowBlackScreen(0.5, 2, 0.5, nil, nil, nil, "", false, true)
end

function Quest72237:OnSubStart7223708(arg1)
    print("OnSubStart7223708")
end

function Quest72237:OnSubFinish7223708(arg1)
    print("OnSubFinish7223708")
    self:NpcDestroyWithDither(npcs.Npc20480Data.alias, 5)
end

return Quest72237
