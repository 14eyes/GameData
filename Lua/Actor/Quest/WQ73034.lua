require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73034 = class("Quest73034", QuestActorProxy)
Quest73034.defaultAlias = "Quest73034"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest73034:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest73034:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7303401"] = self.OnSubStart7303401,
        ["7303402"] = self.OnSubStart7303402,
        ["7303403"] = self.OnSubStart7303403,
        ["7303404"] = self.OnSubStart7303404,
        ["7303407"] = self.OnSubStart7303407,
        ["7303405"] = self.OnSubStart7303405,
        ["7303406"] = self.OnSubStart7303406
    }
end

function Quest73034:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7303401"] = self.OnSubFinish7303401,
        ["7303402"] = self.OnSubFinish7303402,
        ["7303403"] = self.OnSubFinish7303403,
        ["7303404"] = self.OnSubFinish7303404,
        ["7303407"] = self.OnSubFinish7303407,
        ["7303405"] = self.OnSubFinish7303405,
        ["7303406"] = self.OnSubFinish7303406
    }
end

function Quest73034:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73034:Start()
    print("Start")
end

function Quest73034:OnDestroy()
    print("OnDestroy")
end

function Quest73034:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73034:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73034:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73034:OnSubStart7303401(arg1)
    print("OnSubStart7303401")
    actorMgr:CreateActorWithPos("Q7303401Trigger", "Actor/Gadget/Q7303401Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q7303401_guide").pos, sceneData:GetDummyPoint(3, "Q7303401_guide").rot, true, false, 3)
end

function Quest73034:OnSubFinish7303401(arg1)
    print("OnSubFinish7303401")
    self:NarratorOnlyTaskByData(datas.Narrator_7303401)
end

function Quest73034:OnSubStart7303402(arg1)
    print("OnSubStart7303402")
    self:CreateQuestNpc(arg1, npcs.Npc20817Data.id, 1)
end

function Quest73034:OnSubFinish7303402(arg1)
    print("OnSubFinish7303402")
    self:SafeDestroyQuestNpc(npcs.Npc20817Data.alias, 3)
    self:ClearNarratorTask()
end

function Quest73034:OnSubStart7303403(arg1)
    print("OnSubStart7303403")
end

function Quest73034:OnSubFinish7303403(arg1)
    print("OnSubFinish7303403")
end

function Quest73034:OnSubStart7303404(arg1)
    print("OnSubStart7303404")
end

function Quest73034:OnSubFinish7303404(arg1)
    print("OnSubFinish7303404")
    self:NarratorOnlyTaskByData(datas.Narrator_7303402, function(arg1)
        arg1:ShowBlackScreen(0.5, 2, 0.5, nil, nil, nil, datas.BlackScreenText01, false, true)
    end)
end

function Quest73034:OnSubStart7303407(arg1)
    print("OnSubStart7303407")
end

function Quest73034:OnSubFinish7303407(arg1)
    print("OnSubFinish7303407")
end

function Quest73034:OnSubStart7303405(arg1)
    print("OnSubStart7303405")
    actorMgr:CreateActorWithPos("Q7303405Trigger", "Actor/Gadget/Q7303405Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q7303401_guide").pos, sceneData:GetDummyPoint(3, "Q7303401_guide").rot, true, false, 3)
end

function Quest73034:OnSubFinish7303405(arg1)
    print("OnSubFinish7303405")
    self:NarratorOnlyTaskByData(datas.Narrator_7303403)
end

function Quest73034:OnSubStart7303406(arg1)
    print("OnSubStart7303406")
    self:CreateQuestNpc(arg1, npcs.Npc20818Data.id, 1)
end

function Quest73034:OnSubFinish7303406(arg1)
    print("OnSubFinish7303406")
    self:SafeDestroyQuestNpc(npcs.Npc20818Data.alias, 3)
end

return Quest73034
