require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70513 = class("Quest70513", QuestActorProxy)
Quest70513.defaultAlias = "Quest70513"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest70513:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest70513:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7051301"] = self.OnSubStart7051301,
        ["7051307"] = self.OnSubStart7051307,
        ["7051302"] = self.OnSubStart7051302,
        ["7051303"] = self.OnSubStart7051303,
        ["7051309"] = self.OnSubStart7051309,
        ["7051304"] = self.OnSubStart7051304,
        ["7051305"] = self.OnSubStart7051305,
        ["7051306"] = self.OnSubStart7051306,
        ["7051308"] = self.OnSubStart7051308
    }
end

function Quest70513:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7051301"] = self.OnSubFinish7051301,
        ["7051307"] = self.OnSubFinish7051307,
        ["7051302"] = self.OnSubFinish7051302,
        ["7051303"] = self.OnSubFinish7051303,
        ["7051309"] = self.OnSubFinish7051309,
        ["7051304"] = self.OnSubFinish7051304,
        ["7051305"] = self.OnSubFinish7051305,
        ["7051306"] = self.OnSubFinish7051306,
        ["7051308"] = self.OnSubFinish7051308
    }
end

function Quest70513:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest70513:Start()
    print("Start")
end

function Quest70513:OnDestroy()
    print("OnDestroy")
end

function Quest70513:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70513:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70513:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.DilucData.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc2600Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc30192Data.alias, 1018)
    self:SafeDestroyQuestNpc(npcs.Npc1531Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc30193Data.alias, 1018)
    self:SafeDestroyQuestNpc(npcs.GaiaData.alias, 3)
    actorMgr:DestroyEntityActor("Q7051304_TriggerIn", 3, false)
    self:LightNotifyTo(npcs.Npc1529Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc1596Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc1595Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc1527Data.alias, 0, true)
end

function Quest70513:NpcCreateWithBlackscreenInteraction(arg1, arg2, arg3, arg4)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, arg2, arg3)
        arg1_2:RequestInteraction(arg4)
    end)
end

function Quest70513:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    self:ActionSafeCall(function(arg1_2)
        arg1_2:NotifyTo(arg1, arg2, arg3)
    end)
end

function Quest70513:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 7051309 then
        actorUtils.FinishQuestID(false, 7051309)
    elseif arg1 == 7051310 then
        actorUtils.FinishQuestID(false, 7051304)
    end
end

local n = 0

function Quest70513:OnSubStart7051301(arg1)
    print("OnSubStart7051301")
    self:CreateQuestNpc(arg1, npcs.Npc1531Data.id, 1)
    self:DailyNpcSafeHideSelf(npcs.Npc1529Data.alias, 1, true)
    self:ActionSafeCall(function(arg1)
        if n == 0 then
            n = 1
            arg1:CallDelay(1, function(arg1)
                if arg1:GetQuestVar(7051301, 0) == 0 then
                    arg1:NarratorOnlyTaskByData(datas.NarratorWithId_7051301, function(arg1)
                        arg1:SetQuestVarByMainId(0, 1)
                    end, "")
                end
            end)
        end
    end)
end

function Quest70513:OnSubFinish7051301(arg1)
    print("OnSubFinish7051301")
end

function Quest70513:OnSubStart7051307(arg1)
    print("OnSubStart7051307")
    self:DailyNpcSafeHideSelf(npcs.Npc1529Data.alias, 1, true)
    self:ClearNarratorTask()
    self:StopNarrator()
end

function Quest70513:OnSubFinish7051307(arg1)
    print("OnSubFinish7051307")
    self:LightNotifyTo(npcs.Npc1529Data.alias, 0, true)
end

function Quest70513:OnSubStart7051302(arg1)
    print("OnSubStart7051302")
    self:CreateQuestNpc(arg1, npcs.Npc1531Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc30193Data.id, 3)
    self:CreateQuestNpc(arg1, npcs.GaiaData.id, 4)
    self:DailyNpcSafeHideSelf(npcs.Npc1596Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc1595Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc1527Data.alias, 1, true)
    self:GetQuestNpcActor(npcs.Npc1531Data.alias):DisableInteeHeadCtrl(true)
    self:GetQuestNpcActor(npcs.GaiaData.alias):DisableInteeHeadCtrl(true)
end

function Quest70513:OnSubFinish7051302(arg1)
    print("OnSubFinish7051302")
    self:SafeDestroyQuestNpc(npcs.Npc30192Data.alias, 1018)
end

function Quest70513:OnSubStart7051303(arg1)
    print("OnSubStart7051303")
    self:DailyNpcSafeHideSelf(npcs.Npc1596Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc1595Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc1527Data.alias, 1, true)
    self:GetQuestNpcActor(npcs.Npc1531Data.alias):DisableInteeHeadCtrl(true)
    self:GetQuestNpcActor(npcs.GaiaData.alias):DisableInteeHeadCtrl(true)
end

function Quest70513:OnSubFinish7051303(arg1)
    print("OnSubFinish7051303")
    self:SafeDestroyQuestNpc(npcs.Npc30192Data.alias, 1018)
    self:SafeDestroyQuestNpc(npcs.Npc30193Data.alias, 1018)
end

function Quest70513:OnSubStart7051309(arg1)
    print("OnSubStart7051309")
    self:DailyNpcSafeHideSelf(npcs.Npc1596Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc1595Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc1527Data.alias, 1, true)
end

function Quest70513:OnSubFinish7051309(arg1)
    print("OnSubFinish7051309")
end

function Quest70513:OnSubStart7051304(arg1)
    print("OnSubStart7051304")
    self:CreateQuestNpc(arg1, npcs.Npc1531Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.GaiaData.id, 2)
    self:DailyNpcSafeHideSelf(npcs.Npc1596Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc1595Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc1527Data.alias, 1, true)
    self:GetQuestNpcActor(npcs.Npc1531Data.alias):DisableInteeHeadCtrl(true)
    self:GetQuestNpcActor(npcs.GaiaData.alias):DisableInteeHeadCtrl(true)
end

function Quest70513:OnSubFinish7051304(arg1)
    print("OnSubFinish7051304")
end

function Quest70513:OnSubStart7051305(arg1)
    print("OnSubStart7051305")
    self:DailyNpcSafeHideSelf(npcs.Npc1596Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc1595Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc1527Data.alias, 1, true)
    self:GetQuestNpcActor(npcs.Npc1531Data.alias):DisableInteeHeadCtrl(false)
    self:GetQuestNpcActor(npcs.GaiaData.alias):DisableInteeHeadCtrl(false)
end

function Quest70513:OnSubFinish7051305(arg1)
    print("OnSubFinish7051305")
end

function Quest70513:OnSubStart7051306(arg1)
    print("OnSubStart7051306")
    self:DailyNpcSafeHideSelf(npcs.Npc1596Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc1595Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc1527Data.alias, 1, true)
    self:CallDelay(1.5, function(arg1_2)
        arg1_2:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc2600Data.id, 1, npcs.Npc2600Data.alias)
    end)

    self:GetQuestNpcActor(npcs.Npc1531Data.alias):DisableInteeHeadCtrl(true)
    self:GetQuestNpcActor(npcs.GaiaData.alias):DisableInteeHeadCtrl(true)
end

function Quest70513:OnSubFinish7051306(arg1)
    print("OnSubFinish7051306")
    self:SafeDestroyQuestNpc(npcs.Npc2600Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1531Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.GaiaData.alias, 3)
    self:GetQuestNpcActor(npcs.Npc1531Data.alias):DisableInteeHeadCtrl(false)
    self:GetQuestNpcActor(npcs.GaiaData.alias):DisableInteeHeadCtrl(false)
    self:LightNotifyTo(npcs.Npc1596Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc1595Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc1527Data.alias, 0, true)
end

function Quest70513:OnSubStart7051308(arg1)
    print("OnSubStart7051308")
end

function Quest70513:OnSubFinish7051308(arg1)
    print("OnSubFinish7051308")
end

return Quest70513
