require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest12017 = class("Quest12017", QuestActorProxy)
Quest12017.defaultAlias = "Quest12017"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest12017:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest12017:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1201701"] = self.OnSubStart1201701,
        ["1201702"] = self.OnSubStart1201702,
        ["1201704"] = self.OnSubStart1201704,
        ["1201705"] = self.OnSubStart1201705,
        ["1201706"] = self.OnSubStart1201706,
        ["1201707"] = self.OnSubStart1201707
    }
end

function Quest12017:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1201701"] = self.OnSubFinish1201701,
        ["1201702"] = self.OnSubFinish1201702,
        ["1201704"] = self.OnSubFinish1201704,
        ["1201705"] = self.OnSubFinish1201705,
        ["1201706"] = self.OnSubFinish1201706,
        ["1201707"] = self.OnSubFinish1201707
    }
end

function Quest12017:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["1201701"] = self.OnSubFailed1201701,
        ["1201702"] = self.OnSubFailed1201702,
        ["1201704"] = self.OnSubFailed1201704,
        ["1201705"] = self.OnSubFailed1201705,
        ["1201706"] = self.OnSubFailed1201706,
        ["1201707"] = self.OnSubFailed1201707
    }
end

function Quest12017:Start()
    print("Start")
end

function Quest12017:OnDestroy()
    print("OnDestroy")
end

function Quest12017:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest12017:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest12017:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest12017:NpcCreateWithBlackscreenInteraction(arg1, arg2, arg3, arg4)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, arg2, arg3)
        arg1_2:RequestInteraction(arg4)
    end)
end

function Quest12017:OnSubStart1201701(arg1)
    print("OnSubStart1201701")
    self:NotifyTo(npcs.Npc3054Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q1201701Trigger", "Actor/Gadget/Q1201701Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q12017ShougunYing1").pos, sceneData:GetDummyPoint(3, "Q12017ShougunYing1").rot, true, false, 3)
end

function Quest12017:OnSubFinish1201701(arg1)
    print("OnSubFinish1201701")
end

function Quest12017:OnSubFailed1201701(arg1)
    print("OnSubFailed1201701")
end

function Quest12017:OnSubStart1201702(arg1)
    print("OnSubStart1201702")
    self:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc12076Data.id, 1, npcs.Npc12076Data.alias)
    self:NotifyTo(npcs.Npc3054Data.alias, 1, true)
end

function Quest12017:OnSubFinish1201702(arg1)
    print("OnSubFinish1201702")
end

function Quest12017:OnSubFailed1201702(arg1)
    print("OnSubFailed1201702")
end

function Quest12017:OnSubStart1201704(arg1)
    print("OnSubStart1201704")
    self:NotifyTo(npcs.Npc3054Data.alias, 1, true)
    self:CreateQuestNpc(arg1, npcs.Npc12130Data.id, 1)
end

function Quest12017:OnSubFinish1201704(arg1)
    print("OnSubFinish1201704")
    self:SafeDestroyQuestNpc(npcs.Npc12130Data.alias, 3)
end

function Quest12017:OnSubFailed1201704(arg1)
    print("OnSubFailed1201704")
end

function Quest12017:OnSubStart1201705(arg1)
    print("OnSubStart1201705")
    self:NotifyTo(npcs.Npc3054Data.alias, 1, true)
    self:NotifyTo(npcs.Npc3032Data.alias, 1, true)
    self:NotifyTo(npcs.Npc3033Data.alias, 1, true)
end

function Quest12017:OnSubFinish1201705(arg1)
    print("OnSubFinish1201705")
    self:SafeDestroyQuestNpc(npcs.Npc12076Data.alias, 3)
end

function Quest12017:OnSubFailed1201705(arg1)
    print("OnSubFailed1201705")
end

function Quest12017:OnSubStart1201706(arg1)
    print("OnSubStart1201706")
    self:CreateQuestNpc(arg1, npcs.Npc12077Data.id, 2)
    self:NotifyTo(npcs.Npc3054Data.alias, 1, true)
    self:NotifyTo(npcs.Npc3032Data.alias, 1, true)
    self:NotifyTo(npcs.Npc3033Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q1201706Trigger", "Actor/Gadget/Q1201706Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q12017Yiping1").pos, sceneData:GetDummyPoint(3, "Q12017Yiping1").rot, true, false, 3)
end

function Quest12017:OnSubFinish1201706(arg1)
    print("OnSubFinish1201706")
end

function Quest12017:OnSubFailed1201706(arg1)
    print("OnSubFailed1201706")
end

function Quest12017:OnSubStart1201707(arg1)
    print("OnSubStart1201707")
    self:NotifyTo(npcs.Npc3054Data.alias, 1, true)
    self:NotifyTo(npcs.Npc3032Data.alias, 1, true)
    self:NotifyTo(npcs.Npc3033Data.alias, 1, true)
    self:RequestInteraction(npcs.Npc12077Data.alias)
end

function Quest12017:OnSubFinish1201707(arg1)
    print("OnSubFinish1201707")
    self:SafeDestroyQuestNpc(npcs.Npc12076Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12077Data.alias, 3)
    self:LightNotifyTo(npcs.Npc3032Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc3033Data.alias, 0, true)
end

function Quest12017:OnSubFailed1201707(arg1)
    print("OnSubFailed1201707")
end

return Quest12017
