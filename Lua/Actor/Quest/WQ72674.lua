require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72674 = class("Quest72674", QuestActorProxy)
Quest72674.defaultAlias = "Quest72674"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest72674:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest72674:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7267401"] = self.OnSubStart7267401,
        ["7267402"] = self.OnSubStart7267402,
        ["7267403"] = self.OnSubStart7267403
    }
end

function Quest72674:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7267401"] = self.OnSubFinish7267401,
        ["7267402"] = self.OnSubFinish7267402,
        ["7267403"] = self.OnSubFinish7267403
    }
end

function Quest72674:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest72674:Start()
    print("Start")
end

function Quest72674:OnDestroy()
    print("OnDestroy")
end

function Quest72674:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72674:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72674:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc3159Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc3160Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc3188Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc3161Data.alias, 3)
    self:LightNotifyTo(npcs.Npc3160Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc3188Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc3161Data.alias, 0, true)
    actorMgr:DestroyEntityActor("Q7267401_Trigger", 3, false)
end

function Quest72674:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    self:ActionSafeCall(function(arg1_2)
        arg1_2:NotifyTo(arg1, arg2, arg3)
    end)
end

function Quest72674:OnSubStart7267401(arg1)
    print("OnSubStart7267401")
    self:CreateQuestNpc(arg1, npcs.Npc3159Data.id, 1)
    self:DailyNpcSafeHideSelf(npcs.Npc3160Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc3188Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc3161Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q7267401_Trigger", "Actor/Gadget/Q7267401_Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q7267401_N3159").pos, sceneData:GetDummyPoint(3, "Q7267401_N3159").rot, true, false, 3)
    self:CallDelay(1, function(arg1)
        if arg1:GetQuestVar(7267401, 0) == 0 then
            arg1:NarratorOnlyTask(datas.Narrator_Q7267401_Start, function(arg1)
                arg1:SetQuestVarByMainId(0, 1)
            end, "")
        end
    end)
end

function Quest72674:OnSubFinish7267401(arg1)
    print("OnSubFinish7267401")
end

function Quest72674:OnSubStart7267402(arg1)
    print("OnSubStart7267402")
    self:CreateQuestNpc(arg1, npcs.Npc3160Data.id, 1)
    self:DailyNpcSafeHideSelf(npcs.Npc3188Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc3161Data.alias, 1, true)
end

function Quest72674:OnSubFinish7267402(arg1)
    print("OnSubFinish7267402")
    self:SafeDestroyQuestNpc(npcs.Npc3160Data.alias, 3)
end

function Quest72674:OnSubStart7267403(arg1)
    print("OnSubStart7267403")
    self:DailyNpcSafeHideSelf(npcs.Npc3188Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc3161Data.alias, 1, true)
end

function Quest72674:OnSubFinish7267403(arg1)
    print("OnSubFinish7267403")
    self:SafeDestroyQuestNpc(npcs.Npc3159Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc3160Data.alias, 3)
end

return Quest72674
