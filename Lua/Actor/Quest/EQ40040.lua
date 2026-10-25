require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40040 = class("Quest40040", QuestActorProxy)
Quest40040.defaultAlias = "Quest40040"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest40040:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest40040:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4004001"] = self.OnSubStart4004001,
        ["4004002"] = self.OnSubStart4004002,
        ["4004003"] = self.OnSubStart4004003
    }
end

function Quest40040:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4004001"] = self.OnSubFinish4004001,
        ["4004002"] = self.OnSubFinish4004002,
        ["4004003"] = self.OnSubFinish4004003
    }
end

function Quest40040:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["4004001"] = self.OnSubFailed4004001,
        ["4004002"] = self.OnSubFailed4004002,
        ["4004003"] = self.OnSubFailed4004003
    }
end

function Quest40040:Start()
    print("Start")
end

function Quest40040:OnDestroy()
    print("OnDestroy")
end

function Quest40040:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest40040:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest40040:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc30085Data.alias, 3)
    actorMgr:DestroyEntityActor("Q40040Trigger", 3, false)
end

function Quest40040:OnSubStart4004001(arg1)
    print("OnSubStart4004001")
    self:CreateQuestNpc(arg1, npcs.Npc30085Data.id, 0)
    self:GetQuestNpcActor(npcs.Npc30085Data.alias):DoFreeStyle(4010, true, nil, true, true, false)
    actorMgr:CreateActorWithPos("Q40040Trigger", "Actor/Gadget/Q40040Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q4004001_N30085_310701337").pos, sceneData:GetDummyPoint(3, "Q4004001_N30085_310701337").rot, true, false, 3)
end

function Quest40040:OnSubFinish4004001(arg1)
    print("OnSubFinish4004001")
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1)
        arg1:GetQuestNpcActor(npcs.Npc30085Data.alias):DoFreeStateTrigger()
        arg1:DestroyQuestNpcActor(npcs.Npc30085Data.alias, 3)
    end, function(arg1)
        actorUtils.ShowLanternRiteV2Page(2)
    end, nil, "", false, true)
end

function Quest40040:OnSubFailed4004001(arg1)
    print("OnSubFailed4004001")
end

function Quest40040:OnSubStart4004002(arg1)
    print("OnSubStart4004002")
end

function Quest40040:OnSubFinish4004002(arg1)
    print("OnSubFinish4004002")
end

function Quest40040:OnSubFailed4004002(arg1)
    print("OnSubFailed4004002")
end

function Quest40040:OnSubStart4004003(arg1)
    print("OnSubStart4004003")
end

function Quest40040:OnSubFinish4004003(arg1)
    print("OnSubFinish4004003")
end

function Quest40040:OnSubFailed4004003(arg1)
    print("OnSubFailed4004003")
end

return Quest40040
