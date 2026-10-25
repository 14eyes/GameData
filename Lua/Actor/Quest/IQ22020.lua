require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest22020 = class("Quest22020", QuestActorProxy)
Quest22020.defaultAlias = "Quest22020"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest22020:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest22020:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["2202001"] = self.OnSubStart2202001,
        ["2202002"] = self.OnSubStart2202002,
        ["2202003"] = self.OnSubStart2202003,
        ["2202004"] = self.OnSubStart2202004,
        ["2202005"] = self.OnSubStart2202005,
        ["2202006"] = self.OnSubStart2202006
    }
end

function Quest22020:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["2202001"] = self.OnSubFinish2202001,
        ["2202002"] = self.OnSubFinish2202002,
        ["2202003"] = self.OnSubFinish2202003,
        ["2202004"] = self.OnSubFinish2202004,
        ["2202005"] = self.OnSubFinish2202005,
        ["2202006"] = self.OnSubFinish2202006
    }
end

function Quest22020:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["2202001"] = self.OnSubFailed2202001,
        ["2202002"] = self.OnSubFailed2202002,
        ["2202003"] = self.OnSubFailed2202003,
        ["2202004"] = self.OnSubFailed2202004,
        ["2202005"] = self.OnSubFailed2202005,
        ["2202006"] = self.OnSubFailed2202006
    }
end

function Quest22020:Start()
    print("Start")
end

function Quest22020:OnDestroy()
    print("OnDestroy")
end

function Quest22020:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest22020:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest22020:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc3042Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc3046Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc3047Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc3019Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc3020Data.alias, 3)
end

function Quest22020:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest22020:OnSubStart2202001(arg1)
    print("OnSubStart2202001")
    self:CreateQuestNpc(arg1, npcs.Npc3042Data.id, 0)
end

function Quest22020:OnSubFinish2202001(arg1)
    print("OnSubFinish2202001")
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1)
        arg1:DestroyQuestNpcActor(npcs.Npc3042Data.alias, 3)
        arg1:NotifyTo(npcs.Npc3042Data.alias, 1, true)
    end, nil, nil, "")
end

function Quest22020:OnSubFailed2202001(arg1)
    print("OnSubFailed2202001")
end

function Quest22020:OnSubStart2202002(arg1)
    print("OnSubStart2202002")
    self:CreateQuestNpc(arg1, npcs.Npc3046Data.id, 0)
    self:CreateQuestNpc(arg1, npcs.Npc3047Data.id, 0)
    self:NotifyTo(npcs.Npc3042Data.alias, 1, true)
end

function Quest22020:OnSubFinish2202002(arg1)
    print("OnSubFinish2202002")
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1)
        arg1:DestroyQuestNpcActor(npcs.Npc3046Data.alias, 3)
        arg1:DestroyQuestNpcActor(npcs.Npc3047Data.alias, 3)
    end, nil, nil, "")
end

function Quest22020:OnSubFailed2202002(arg1)
    print("OnSubFailed2202002")
end

function Quest22020:OnSubStart2202003(arg1)
    print("OnSubStart2202003")
    self:CreateQuestNpc(arg1, npcs.Npc3019Data.id, 0)
    self:NotifyTo(npcs.Npc3042Data.alias, 1, true)
end

function Quest22020:OnSubFinish2202003(arg1)
    print("OnSubFinish2202003")
end

function Quest22020:OnSubFailed2202003(arg1)
    print("OnSubFailed2202003")
end

function Quest22020:OnSubStart2202004(arg1)
    print("OnSubStart2202004")
    self:ActionSafeCall(function(arg1)
        local questNpcActor = arg1:GetQuestNpcActor(npcs.Npc3019Data.alias, 22020)
        arg1:NpcBeFollowTaskByRoutePointsWithDiffLen(questNpcActor, datas.Walk1, 5, 3, -1, function(arg1)
            arg1:SyncPos(2)
            if arg1.BeFollowState == BeFollowState.FAILED then
                return
            end

            actorUtils.FinishQuestID(false, 2202004)
        end, nil, nil, nil, nil, nil, true)

        actorMgr:CreateActorWithPos("Q22020Trigger", "Actor/Gadget/Q22020Trigger", 70900002, 0, {x = -3137.229, y = 253.0423, z = -4483.43}, {x = 0, y = 0, z = 0}, true, false)
    end)

    self:NotifyTo(npcs.Npc3042Data.alias, 1, true)
end

function Quest22020:OnSubFinish2202004(arg1)
    print("OnSubFinish2202004")
    self:ActorDestroy("Q22020Trigger")
end

function Quest22020:OnSubFailed2202004(arg1)
    print("OnSubFailed2202004")
end

function Quest22020:OnSubStart2202005(arg1)
    print("OnSubStart2202005")
    self:NotifyTo(npcs.Npc3042Data.alias, 1, true)
end

function Quest22020:OnSubFinish2202005(arg1)
    print("OnSubFinish2202005")
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1)
        arg1:DestroyQuestNpcActor(npcs.Npc3019Data.alias, 3)
    end, nil, nil, "")
end

function Quest22020:OnSubFailed2202005(arg1)
    print("OnSubFailed2202005")
end

function Quest22020:OnSubStart2202006(arg1)
    print("OnSubStart2202006")
    self:CreateQuestNpc(arg1, npcs.Npc3042Data.id, 0)
end

function Quest22020:OnSubFinish2202006(arg1)
    print("OnSubFinish2202006")
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1)
        arg1:DestroyQuestNpcActor(npcs.Npc3042Data.alias, 3)
    end, nil, nil, "")
end

function Quest22020:OnSubFailed2202006(arg1)
    print("OnSubFailed2202006")
end

return Quest22020
