require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72157 = class("Quest72157", QuestActorProxy)
Quest72157.defaultAlias = "Quest72157"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest72157:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest72157:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7215702"] = self.OnSubStart7215702,
        ["7215703"] = self.OnSubStart7215703,
        ["7215704"] = self.OnSubStart7215704,
        ["7215705"] = self.OnSubStart7215705,
        ["7215701"] = self.OnSubStart7215701,
        ["7215707"] = self.OnSubStart7215707,
        ["7215709"] = self.OnSubStart7215709,
        ["7215710"] = self.OnSubStart7215710,
        ["7215706"] = self.OnSubStart7215706,
        ["7215708"] = self.OnSubStart7215708
    }
end

function Quest72157:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7215702"] = self.OnSubFinish7215702,
        ["7215703"] = self.OnSubFinish7215703,
        ["7215704"] = self.OnSubFinish7215704,
        ["7215705"] = self.OnSubFinish7215705,
        ["7215701"] = self.OnSubFinish7215701,
        ["7215707"] = self.OnSubFinish7215707,
        ["7215709"] = self.OnSubFinish7215709,
        ["7215710"] = self.OnSubFinish7215710,
        ["7215706"] = self.OnSubFinish7215706,
        ["7215708"] = self.OnSubFinish7215708
    }
end

function Quest72157:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7215702"] = self.OnSubFailed7215702,
        ["7215703"] = self.OnSubFailed7215703,
        ["7215704"] = self.OnSubFailed7215704,
        ["7215705"] = self.OnSubFailed7215705,
        ["7215701"] = self.OnSubFailed7215701,
        ["7215707"] = self.OnSubFailed7215707,
        ["7215709"] = self.OnSubFailed7215709,
        ["7215710"] = self.OnSubFailed7215710,
        ["7215706"] = self.OnSubFailed7215706,
        ["7215708"] = self.OnSubFailed7215708
    }
end

function Quest72157:Start()
    print("Start")
end

function Quest72157:OnDestroy()
    print("OnDestroy")
end

function Quest72157:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72157:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72157:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest72157:NpcCreateWithBlackscreen(arg1, arg2, arg3)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, arg2, arg3)
    end)
end

function Quest72157:OnSubStart7215702(arg1)
    print("OnSubStart7215702")
    actorMgr:CreateActorWithPos("Q7215702Trigger", "Actor/Gadget/Q7215702Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "WQ72157_ShanTou").pos, sceneData:GetDummyPoint(3, "WQ72157_ShanTou").rot, true, false, 3)
end

function Quest72157:OnSubFinish7215702(arg1)
    print("OnSubFinish7215702")
end

function Quest72157:OnSubFailed7215702(arg1)
    print("OnSubFailed7215702")
end

function Quest72157:OnSubStart7215703(arg1)
    print("OnSubStart7215703")
    self:NpcCreateWithBlackscreen(arg1, npcs.Npc3180Data.id, 1)
    self:NpcCreateWithBlackscreen(arg1, npcs.Npc3181Data.id, 2)
    actorMgr:CreateActorWithPos("Q7215703Trigger", "Actor/Gadget/Q7215703Trigger", 70900002, 0, {x = 0, y = 0, z = 0}, {x = 0, y = 0, z = 0}, true, false)
end

function Quest72157:OnSubFinish7215703(arg1)
    print("OnSubFinish7215703")
end

function Quest72157:OnSubFailed7215703(arg1)
    print("OnSubFailed7215703")
end

function Quest72157:OnSubStart7215704(arg1)
    print("OnSubStart7215704")
    actorMgr:CreateActorWithPos("Q7215704Trigger", "Actor/Gadget/Q7215704Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "WQ72157_Fangfa").pos, sceneData:GetDummyPoint(3, "WQ72157_Fangfa").rot, true, false, 3)
end

function Quest72157:OnSubFinish7215704(arg1)
    print("OnSubFinish7215704")
end

function Quest72157:OnSubFailed7215704(arg1)
    print("OnSubFailed7215704")
end

function Quest72157:OnSubStart7215705(arg1)
    print("OnSubStart7215705")
end

function Quest72157:OnSubFinish7215705(arg1)
    print("OnSubFinish7215705")
end

function Quest72157:OnSubFailed7215705(arg1)
    print("OnSubFailed7215705")
end

function Quest72157:OnSubStart7215701(arg1)
    print("OnSubStart7215701")
end

function Quest72157:OnSubFinish7215701(arg1)
    print("OnSubFinish7215701")
end

function Quest72157:OnSubFailed7215701(arg1)
    print("OnSubFailed7215701")
end

function Quest72157:OnSubStart7215707(arg1)
    print("OnSubStart7215707")
end

function Quest72157:OnSubFinish7215707(arg1)
    print("OnSubFinish7215707")
end

function Quest72157:OnSubFailed7215707(arg1)
    print("OnSubFailed7215707")
end

function Quest72157:OnSubStart7215709(arg1)
    print("OnSubStart7215709")
end

function Quest72157:OnSubFinish7215709(arg1)
    print("OnSubFinish7215709")
end

function Quest72157:OnSubFailed7215709(arg1)
    print("OnSubFailed7215709")
end

function Quest72157:OnSubStart7215710(arg1)
    print("OnSubStart7215710")
end

function Quest72157:OnSubFinish7215710(arg1)
    print("OnSubFinish7215710")
end

function Quest72157:OnSubFailed7215710(arg1)
    print("OnSubFailed7215710")
end

function Quest72157:OnSubStart7215706(arg1)
    print("OnSubStart7215706")
end

function Quest72157:OnSubFinish7215706(arg1)
    print("OnSubFinish7215706")
    self:SafeDestroyQuestNpc(npcs.Npc3180Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc3181Data.alias, 3)
end

function Quest72157:OnSubFailed7215706(arg1)
    print("OnSubFailed7215706")
end

function Quest72157:OnSubStart7215708(arg1)
    print("OnSubStart7215708")
    self:PlayCutsceneIndex("72157", function(arg1)
        arg1:FinishQuestID(false, 7215708)
        arg1:NarratorOnlyTask(datas.PaimonFinish, nil, "")
    end, nil, nil, false)
end

function Quest72157:OnSubFinish7215708(arg1)
    print("OnSubFinish7215708")
end

function Quest72157:OnSubFailed7215708(arg1)
    print("OnSubFailed7215708")
end

return Quest72157
