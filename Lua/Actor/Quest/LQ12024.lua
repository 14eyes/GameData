require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest12024 = class("Quest12024", QuestActorProxy)
Quest12024.defaultAlias = "Quest12024"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest12024:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest12024:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1202401"] = self.OnSubStart1202401,
        ["1202407"] = self.OnSubStart1202407,
        ["1202404"] = self.OnSubStart1202404,
        ["1202402"] = self.OnSubStart1202402,
        ["1202408"] = self.OnSubStart1202408,
        ["1202409"] = self.OnSubStart1202409,
        ["1202403"] = self.OnSubStart1202403,
        ["1202410"] = self.OnSubStart1202410,
        ["1202411"] = self.OnSubStart1202411,
        ["1202406"] = self.OnSubStart1202406,
        ["1202405"] = self.OnSubStart1202405
    }
end

function Quest12024:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1202401"] = self.OnSubFinish1202401,
        ["1202407"] = self.OnSubFinish1202407,
        ["1202404"] = self.OnSubFinish1202404,
        ["1202402"] = self.OnSubFinish1202402,
        ["1202408"] = self.OnSubFinish1202408,
        ["1202409"] = self.OnSubFinish1202409,
        ["1202403"] = self.OnSubFinish1202403,
        ["1202410"] = self.OnSubFinish1202410,
        ["1202411"] = self.OnSubFinish1202411,
        ["1202406"] = self.OnSubFinish1202406,
        ["1202405"] = self.OnSubFinish1202405
    }
end

function Quest12024:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["1202401"] = self.OnSubFailed1202401,
        ["1202407"] = self.OnSubFailed1202407,
        ["1202404"] = self.OnSubFailed1202404,
        ["1202402"] = self.OnSubFailed1202402,
        ["1202408"] = self.OnSubFailed1202408,
        ["1202409"] = self.OnSubFailed1202409,
        ["1202403"] = self.OnSubFailed1202403,
        ["1202410"] = self.OnSubFailed1202410,
        ["1202411"] = self.OnSubFailed1202411,
        ["1202406"] = self.OnSubFailed1202406,
        ["1202405"] = self.OnSubFailed1202405
    }
end

function Quest12024:Start()
    print("Start")
end

function Quest12024:OnDestroy()
    print("OnDestroy")
end

function Quest12024:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest12024:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest12024:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest12024:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1202408 then
        actorUtils.FinishQuestID(false, 1202408)
    elseif arg1 == 1202409 then
        actorUtils.FinishQuestID(false, 1202409)
    elseif arg1 == 1202410 then
        actorUtils.FinishQuestID(false, 1202410)
    elseif arg1 == 1202411 then
        actorUtils.FinishQuestID(false, 1202411)
    end
end

function Quest12024:OnSubStart1202401(arg1)
    print("OnSubStart1202401")
end

function Quest12024:OnSubFinish1202401(arg1)
    print("OnSubFinish1202401")
end

function Quest12024:OnSubFailed1202401(arg1)
    print("OnSubFailed1202401")
end

function Quest12024:OnSubStart1202407(arg1)
    print("OnSubStart1202407")
    actorMgr:CreateActorWithPos("Q12024Trigger", "Actor/Gadget/Q12024Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q12023_GOUHUO").pos, sceneData:GetDummyPoint(3, "Q12023_GOUHUO").rot, true, false, 3)
end

function Quest12024:OnSubFinish1202407(arg1)
    print("OnSubFinish1202407")
end

function Quest12024:OnSubFailed1202407(arg1)
    print("OnSubFailed1202407")
end

function Quest12024:OnSubStart1202404(arg1)
    print("OnSubStart1202404")
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc1037Data.id, 0)
        arg1_2:RequestInteraction(npcs.Npc1037Data.alias)
    end, nil, nil, "")
end

function Quest12024:OnSubFinish1202404(arg1)
    print("OnSubFinish1202404")
    self:ActionSafeCall(function(arg1)
        arg1:DestroyQuestNpcActor(npcs.Npc1037Data.alias, 3)
    end)
end

function Quest12024:OnSubFailed1202404(arg1)
    print("OnSubFailed1202404")
end

function Quest12024:OnSubStart1202402(arg1)
    print("OnSubStart1202402")
    self:CreateQuestNpc(arg1, npcs.Npc1038Data.id, 2)
end

function Quest12024:OnSubFinish1202402(arg1)
    print("OnSubFinish1202402")
end

function Quest12024:OnSubFailed1202402(arg1)
    print("OnSubFailed1202402")
end

function Quest12024:OnSubStart1202408(arg1)
    print("OnSubStart1202408")
end

function Quest12024:OnSubFinish1202408(arg1)
    print("OnSubFinish1202408")
end

function Quest12024:OnSubFailed1202408(arg1)
    print("OnSubFailed1202408")
end

function Quest12024:OnSubStart1202409(arg1)
    print("OnSubStart1202409")
end

function Quest12024:OnSubFinish1202409(arg1)
    print("OnSubFinish1202409")
end

function Quest12024:OnSubFailed1202409(arg1)
    print("OnSubFailed1202409")
end

function Quest12024:OnSubStart1202403(arg1)
    print("OnSubStart1202403")
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc1037Data.id, 0)
        arg1_2:RequestInteraction(npcs.Npc1037Data.alias)
    end, nil, nil, "")
end

function Quest12024:OnSubFinish1202403(arg1)
    print("OnSubFinish1202403")
    self:ActionSafeCall(function(arg1)
        arg1:DestroyQuestNpcActor(npcs.Npc1037Data.alias, 3)
        arg1:DestroyQuestNpcActor(npcs.Npc1038Data.alias, 3)
    end)
end

function Quest12024:OnSubFailed1202403(arg1)
    print("OnSubFailed1202403")
end

function Quest12024:OnSubStart1202410(arg1)
    print("OnSubStart1202410")
end

function Quest12024:OnSubFinish1202410(arg1)
    print("OnSubFinish1202410")
end

function Quest12024:OnSubFailed1202410(arg1)
    print("OnSubFailed1202410")
end

function Quest12024:OnSubStart1202411(arg1)
    print("OnSubStart1202411")
end

function Quest12024:OnSubFinish1202411(arg1)
    print("OnSubFinish1202411")
end

function Quest12024:OnSubFailed1202411(arg1)
    print("OnSubFailed1202411")
end

function Quest12024:OnSubStart1202406(arg1)
    print("OnSubStart1202406")
    self:CreateQuestNpc(arg1, npcs.Npc12183Data.id, 3)
    self:CreateQuestNpc(arg1, npcs.Npc12192Data.id, 4)
    self:CreateQuestNpc(arg1, npcs.Npc12193Data.id, 5)
    self:ActionSafeCall(function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc1037Data.id, 0)
    end)

    actorMgr:CreateActorWithPos("Q12024Trigger1", "Actor/Gadget/Q12024Trigger1", 70900002, 0, sceneData:GetDummyPoint(3, "Q12024_beima1").pos, sceneData:GetDummyPoint(3, "Q12024_beima1").rot, true, false, 3)
end

function Quest12024:OnSubFinish1202406(arg1)
    print("OnSubFinish1202406")
    self:ActionSafeCall(function(arg1)
        arg1:DestroyQuestNpcActor(npcs.Npc1037Data.alias, 3)
        arg1:DestroyQuestNpcActor(npcs.Npc12192Data.alias, 3)
        arg1:DestroyQuestNpcActor(npcs.Npc12183Data.alias, 3)
        arg1:DestroyQuestNpcActor(npcs.Npc12193Data.alias, 3)
    end)
end

function Quest12024:OnSubFailed1202406(arg1)
    print("OnSubFailed1202406")
end

function Quest12024:OnSubStart1202405(arg1)
    print("OnSubStart1202405")
    self:ActionSafeCall(function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc1037Data.id, 0)
    end)
end

function Quest12024:OnSubFinish1202405(arg1)
    print("OnSubFinish1202405")
    self:ActionSafeCall(function(arg1)
        arg1:DestroyQuestNpcActor(npcs.Npc1037Data.alias, 3)
    end)
end

function Quest12024:OnSubFailed1202405(arg1)
    print("OnSubFailed1202405")
end

return Quest12024
