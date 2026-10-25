require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40029 = class("Quest40029", QuestActorProxy)
Quest40029.defaultAlias = "Quest40029"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest40029:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest40029:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4002901"] = self.OnSubStart4002901,
        ["4002902"] = self.OnSubStart4002902,
        ["4002903"] = self.OnSubStart4002903,
        ["4002904"] = self.OnSubStart4002904,
        ["4002905"] = self.OnSubStart4002905,
        ["4002906"] = self.OnSubStart4002906
    }
end

function Quest40029:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4002901"] = self.OnSubFinish4002901,
        ["4002902"] = self.OnSubFinish4002902,
        ["4002903"] = self.OnSubFinish4002903,
        ["4002904"] = self.OnSubFinish4002904,
        ["4002905"] = self.OnSubFinish4002905,
        ["4002906"] = self.OnSubFinish4002906
    }
end

function Quest40029:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest40029:Start()
    print("Start")
end

function Quest40029:OnDestroy()
    print("OnDestroy")
end

function Quest40029:OnMainFinished(arg1)
    print("OnMainFinished")
    self:LightNotifyTo(npcs.Npc1431Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc1587Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc1668Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc1674Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc1409Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc1577Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc1665Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc1669Data.alias, 0, true)
end

function Quest40029:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest40029:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc1018Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1668Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.AmborData.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1029Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1587Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1674Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1409Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1577Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1024Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12254Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1669Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1665Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1431Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1455Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1463Data.alias, 3)
    self:LightNotifyTo(npcs.Npc1668Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc1674Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc1409Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc1577Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc1669Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc1665Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc1431Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc1455Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc1463Data.alias, 0, true)
    actorMgr:DestroyEntityActor("Q40029Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q40029Trigger1", 3, false)
    actorMgr:DestroyEntityActor("Q40029Trigger2", 3, false)
end

function Quest40029:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    self:ActionSafeCall(function(arg1_2)
        arg1_2:NotifyTo(arg1, arg2, arg3)
    end)
end

function Quest40029:OnSubStart4002901(arg1)
    print("OnSubStart4002901")
    self:CreateQuestNpc(arg1, npcs.Npc1018Data.id, 1)
    self:DailyNpcSafeHideSelf(npcs.Npc1668Data.alias, 1, true)
    self:ActionSafeCall(function(arg1)
        actorMgr:CreateActorWithPos("Q40029Trigger", "Actor/Gadget/Q40029Trigger", 70900002, 0, {x = 1200.568, y = 374.593, z = -787.8465}, {x = 0, y = 0, z = 0}, true, false)
        arg1:CallDelay(1, function(arg1)
            if arg1:GetQuestVar(4002901, 0) == 0 then
                arg1:NarratorOnlyTaskByData(datas.Narrator_4002901, function(arg1)
                    arg1:SetQuestVarByMainId(0, 3)
                end, 40029)
            end
        end)
    end)
end

function Quest40029:OnSubFinish4002901(arg1)
    print("OnSubFinish4002901")
end

function Quest40029:OnSubStart4002902(arg1)
    print("OnSubStart4002902")
    self:DailyNpcSafeHideSelf(npcs.Npc1668Data.alias, 1, true)
    self:RequestInteraction(npcs.Npc1018Data.alias)
end

function Quest40029:OnSubFinish4002902(arg1)
    print("OnSubFinish4002902")
    self:SafeDestroyQuestNpc(npcs.AmborData.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1029Data.alias, 3)
end

function Quest40029:OnSubStart4002903(arg1)
    print("OnSubStart4002903")
    self:CreateQuestNpc(arg1, npcs.Npc1018Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc1668Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc1674Data.id, 5)
    self:DailyNpcSafeHideSelf(npcs.Npc1669Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc1665Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q40029Trigger1", "Actor/Gadget/Q40029Trigger1", 70900002, 0, {x = 1606.857, y = 286.2969, z = -1107.902}, {x = 0, y = 0, z = 0}, true, false)
end

function Quest40029:OnSubFinish4002903(arg1)
    print("OnSubFinish4002903")
    self:SafeDestroyQuestNpc(npcs.Npc1018Data.alias, 3)
end

function Quest40029:OnSubStart4002904(arg1)
    print("OnSubStart4002904")
    self:DailyNpcSafeHideSelf(npcs.Npc1669Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc1665Data.alias, 1, true)
    self:RequestInteraction(npcs.Npc1668Data.alias)
end

function Quest40029:OnSubFinish4002904(arg1)
    print("OnSubFinish4002904")
    self:SafeDestroyQuestNpc(npcs.Npc1668Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.AmborData.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1029Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1674Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1409Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1577Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1024Data.alias, 3)
    self:LightNotifyTo(npcs.Npc1669Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc1665Data.alias, 0, true)
end

function Quest40029:OnSubStart4002905(arg1)
    print("OnSubStart4002905")
    self:CreateQuestNpc(arg1, npcs.Npc1587Data.id, 2)
    actorMgr:CreateActorWithPos("Q40029Trigger2", "Actor/Gadget/Q40029Trigger2", 70900002, 0, {x = 2269.664, y = 215.99, z = -888.8434}, {x = 0, y = 0, z = 0}, true, false)
end

function Quest40029:OnSubFinish4002905(arg1)
    print("OnSubFinish4002905")
end

function Quest40029:OnSubStart4002906(arg1)
    print("OnSubStart4002906")
    self:DailyNpcSafeHideSelf(npcs.Npc1431Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc1455Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc1463Data.alias, 1, true)
    self:RequestInteraction(npcs.Npc1587Data.alias)
end

function Quest40029:OnSubFinish4002906(arg1)
    print("OnSubFinish4002906")
    self:SafeDestroyQuestNpc(npcs.Npc1018Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1587Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12254Data.alias, 3)
    self:LightNotifyTo(npcs.Npc1431Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc1455Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc1463Data.alias, 0, true)
    self:ActionSafeCall(function(arg1)
        arg1:CallDelay(6, function(arg1)
            actorUtils.ShowContext("WinterCampSnowmanPage", 2009)
        end)
    end)
end

return Quest40029
