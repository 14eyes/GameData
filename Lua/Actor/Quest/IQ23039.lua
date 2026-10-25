require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest23039 = class("Quest23039", QuestActorProxy)
Quest23039.defaultAlias = "Quest23039"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest23039:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest23039:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["2303901"] = self.OnSubStart2303901,
        ["2303902"] = self.OnSubStart2303902,
        ["2303903"] = self.OnSubStart2303903,
        ["2303904"] = self.OnSubStart2303904,
        ["2303905"] = self.OnSubStart2303905
    }
end

function Quest23039:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["2303901"] = self.OnSubFinish2303901,
        ["2303902"] = self.OnSubFinish2303902,
        ["2303903"] = self.OnSubFinish2303903,
        ["2303904"] = self.OnSubFinish2303904,
        ["2303905"] = self.OnSubFinish2303905
    }
end

function Quest23039:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest23039:Start()
    print("Start")
end

function Quest23039:OnDestroy()
    print("OnDestroy")
end

function Quest23039:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest23039:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest23039:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:ClearNarratorTask()
    self:SafeDestroyQuestNpc(npcs.Npc4422Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc4423Data.alias, 3)
    actorMgr:DestroyEntityActor("Q23039Trigger", 0, false)
    self:EnablePlayerInput(true)
end

function Quest23039:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest23039:NpcDestroyWithBlackscreen(arg1, arg2)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest23039:OnSubStart2303901(arg1)
    print("OnSubStart2303901")
    self:CreateQuestNpc(arg1, npcs.Npc4422Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc4423Data.id, 2)
    self:ActorDestroy("Q23039Trigger")
    self:EnablePlayerInput(true)
end

function Quest23039:OnSubFinish2303901(arg1)
    print("OnSubFinish2303901")
end

function Quest23039:OnSubStart2303902(arg1)
    print("OnSubStart2303902")
    self:CreateQuestNpc(arg1, npcs.Npc4422Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc4422Data.alias):DoFreeStyle(5010, true, nil, true, true, false, false)
    self:CreateQuestNpc(arg1, npcs.Npc4423Data.id, 2)
    self:CreateSpeechBubbleTask(npcs.Npc4422Data.id, 230399905, 4, true, 1, 2)
    self:CallDelay(5.5, function(arg1)
        arg1:NarratorOnlyTask(datas.Funny, function(arg1)
            arg1:NarratorOnlyTask(datas.Paimon, nil, "")
        end, "")

        arg1:NpcRunToRouteTaskEasy(arg1:GetQuestNpcActor(npcs.Npc4423Data.alias, 23039), datas.RoutePointsData, function(arg1)
            actorUtils.FinishQuestID(false, 2303903)
        end)
    end)

    self:EnablePlayerInput(false)
    actorMgr:CreateActorWithPos("Q23039Trigger", "Actor/Gadget/Q23039Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q23039_RacingEnd").pos, sceneData:GetDummyPoint(3, "Q23039_RacingEnd").rot, true, false, 3)
    self:ActionSafeCall(function(arg1)
        arg1:TransmitPlayerByQuestId(2303902, 1, function(arg1)
            arg1:EnterSceneLookCamera(sceneData:GetDummyPoint(3, "Q23039_RacingEnd").pos, 5, 4.5, true, true)
            arg1:EnablePlayerInput(false)
            arg1:NarratorOnlyTask(datas.NarratorTable, nil, "")
        end)
    end)

    self:CallDelay(8, function(arg1)
        arg1:EnablePlayerInput(true)
    end)
end

function Quest23039:OnSubFinish2303902(arg1)
    print("OnSubFinish2303902")
    self:ClearSpeechBubbleTask()
end

function Quest23039:OnSubStart2303903(arg1)
    print("OnSubStart2303903")
    self:EnablePlayerInput(true)
end

function Quest23039:OnSubFinish2303903(arg1)
    print("OnSubFinish2303903")
end

function Quest23039:OnSubStart2303904(arg1)
    print("OnSubStart2303904")
    self:RequestInteraction(npcs.Npc4422Data.alias)
    self:EnablePlayerInput(true)
end

function Quest23039:OnSubFinish2303904(arg1)
    print("OnSubFinish2303904")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc4422Data.alias)
    self:NpcDestroyWithBlackscreen(3, npcs.Npc4423Data.alias)
end

function Quest23039:OnSubStart2303905(arg1)
    print("OnSubStart2303905")
    self:RequestInteraction(npcs.Npc4422Data.alias)
end

function Quest23039:OnSubFinish2303905(arg1)
    print("OnSubFinish2303905")
    self:SafeDestroyQuestNpc(npcs.Npc4422Data.alias, 3)
    self:NpcDestroyWithBlackscreen(3, npcs.Npc4423Data.alias)
end

return Quest23039
