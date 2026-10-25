require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73073 = class("Quest73073", QuestActorProxy)
Quest73073.defaultAlias = "Quest73073"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest73073:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest73073:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7307301"] = self.OnSubStart7307301,
        ["7307302"] = self.OnSubStart7307302,
        ["7307309"] = self.OnSubStart7307309,
        ["7307303"] = self.OnSubStart7307303,
        ["7307304"] = self.OnSubStart7307304,
        ["7307305"] = self.OnSubStart7307305,
        ["7307306"] = self.OnSubStart7307306,
        ["7307307"] = self.OnSubStart7307307,
        ["7307308"] = self.OnSubStart7307308,
        ["7307310"] = self.OnSubStart7307310,
        ["7307311"] = self.OnSubStart7307311,
        ["7307314"] = self.OnSubStart7307314,
        ["7307312"] = self.OnSubStart7307312,
        ["7307313"] = self.OnSubStart7307313
    }
end

function Quest73073:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7307301"] = self.OnSubFinish7307301,
        ["7307302"] = self.OnSubFinish7307302,
        ["7307309"] = self.OnSubFinish7307309,
        ["7307303"] = self.OnSubFinish7307303,
        ["7307304"] = self.OnSubFinish7307304,
        ["7307305"] = self.OnSubFinish7307305,
        ["7307306"] = self.OnSubFinish7307306,
        ["7307307"] = self.OnSubFinish7307307,
        ["7307308"] = self.OnSubFinish7307308,
        ["7307310"] = self.OnSubFinish7307310,
        ["7307311"] = self.OnSubFinish7307311,
        ["7307314"] = self.OnSubFinish7307314,
        ["7307312"] = self.OnSubFinish7307312,
        ["7307313"] = self.OnSubFinish7307313
    }
end

function Quest73073:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73073:Start()
    print("Start")
end

function Quest73073:OnDestroy()
    print("OnDestroy")
end

function Quest73073:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73073:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73073:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc20645Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc4321Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20601Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc4157Data.alias, 3)
    self:LightNotifyTo(npcs.Npc4321Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc4157Data.alias, 0, true)
end

function Quest73073:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    self:ActionSafeCall(function(arg1_2)
        arg1_2:NotifyTo(arg1, arg2, arg3)
    end)
end

function Quest73073:OnSubStart7307301(arg1)
    print("OnSubStart7307301")
    self:CreateQuestNpc(arg1, npcs.Npc20645Data.id, 1)
    self:DailyNpcSafeHideSelf(npcs.Npc4157Data.alias, 1, true)
end

function Quest73073:OnSubFinish7307301(arg1)
    print("OnSubFinish7307301")
    self:SafeDestroyQuestNpc(npcs.Npc20645Data.alias, 3)
end

function Quest73073:OnSubStart7307302(arg1)
    print("OnSubStart7307302")
    self:CreateQuestNpc(arg1, npcs.Npc20601Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc4157Data.id, 2)
end

function Quest73073:OnSubFinish7307302(arg1)
    print("OnSubFinish7307302")
    self:SafeDestroyQuestNpc(npcs.Npc20601Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc4157Data.alias, 3)
end

function Quest73073:OnSubStart7307309(arg1)
    print("OnSubStart7307309")
    self:CreateQuestNpc(arg1, npcs.Npc20645Data.id, 1)
    self:DailyNpcSafeHideSelf(npcs.Npc4157Data.alias, 1, true)
    self:CallDelay(1, function(arg1)
        arg1:RequestInteraction(npcs.Npc20645Data.alias)
    end)
end

function Quest73073:OnSubFinish7307309(arg1)
    print("OnSubFinish7307309")
end

function Quest73073:OnSubStart7307303(arg1)
    print("OnSubStart7307303")
    self:CreateQuestNpc(arg1, npcs.Npc20645Data.id, 1)
    self:DailyNpcSafeHideSelf(npcs.Npc4157Data.alias, 1, true)
end

function Quest73073:OnSubFinish7307303(arg1)
    print("OnSubFinish7307303")
    self:SafeDestroyQuestNpc(npcs.Npc20645Data.alias, 3)
end

function Quest73073:OnSubStart7307304(arg1)
    print("OnSubStart7307304")
    self:DailyNpcSafeHideSelf(npcs.Npc4157Data.alias, 1, true)
end

function Quest73073:OnSubFinish7307304(arg1)
    print("OnSubFinish7307304")
end

function Quest73073:OnSubStart7307305(arg1)
    print("OnSubStart7307305")
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc20645Data.id, 1)
        arg1_2:DailyNpcSafeHideSelf(npcs.Npc4157Data.alias, 1, true)
        arg1_2:RequestInteraction(npcs.Npc20645Data.alias)
    end, nil, nil, "", false, true)
end

function Quest73073:OnSubFinish7307305(arg1)
    print("OnSubFinish7307305")
    self:SafeDestroyQuestNpc(npcs.Npc20645Data.alias, 3)
end

function Quest73073:OnSubStart7307306(arg1)
    print("OnSubStart7307306")
    self:DailyNpcSafeHideSelf(npcs.Npc4157Data.alias, 1, true)
end

function Quest73073:OnSubFinish7307306(arg1)
    print("OnSubFinish7307306")
end

function Quest73073:OnSubStart7307307(arg1)
    print("OnSubStart7307307")
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc20645Data.id, 1)
        arg1_2:DailyNpcSafeHideSelf(npcs.Npc4157Data.alias, 1, true)
        arg1_2:RequestInteraction(npcs.Npc20645Data.alias)
    end, nil, nil, "", false, true)
end

function Quest73073:OnSubFinish7307307(arg1)
    print("OnSubFinish7307307")
    self:ActionSafeCall(function(arg1)
        arg1:NarratorOnlyTaskByData(datas.NarratorWithId, nil, 73073)
    end)

    self:SafeDestroyQuestNpc(npcs.Npc20645Data.alias, 3)
end

function Quest73073:OnSubStart7307308(arg1)
    print("OnSubStart7307308")
    self:CreateQuestNpc(arg1, npcs.Npc4321Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc20601Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc4157Data.id, 3)
end

function Quest73073:OnSubFinish7307308(arg1)
    print("OnSubFinish7307308")
end

function Quest73073:OnSubStart7307310(arg1)
    print("OnSubStart7307310")
    self:CreateQuestNpc(arg1, npcs.Npc20601Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc4157Data.id, 2)
end

function Quest73073:OnSubFinish7307310(arg1)
    print("OnSubFinish7307310")
end

function Quest73073:OnSubStart7307311(arg1)
    print("OnSubStart7307311")
    self:CreateQuestNpc(arg1, npcs.Npc20601Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc4157Data.id, 2)
end

function Quest73073:OnSubFinish7307311(arg1)
    print("OnSubFinish7307311")
end

function Quest73073:OnSubStart7307314(arg1)
    print("OnSubStart7307314")
    self:CreateQuestNpc(arg1, npcs.Npc20601Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc4157Data.id, 2)
end

function Quest73073:OnSubFinish7307314(arg1)
    print("OnSubFinish7307314")
end

function Quest73073:OnSubStart7307312(arg1)
    print("OnSubStart7307312")
    self:CreateQuestNpc(arg1, npcs.Npc20601Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc4157Data.id, 2)
    self:LightNotifyTo(npcs.Npc4157Data.alias, 0, true)
end

function Quest73073:OnSubFinish7307312(arg1)
    print("OnSubFinish7307312")
    self:SafeDestroyQuestNpc(npcs.Npc4157Data.alias, 3)
end

function Quest73073:OnSubStart7307313(arg1)
    print("OnSubStart7307313")
    self:CreateQuestNpc(arg1, npcs.Npc20601Data.id, 1)
end

function Quest73073:OnSubFinish7307313(arg1)
    print("OnSubFinish7307313")
    self:SafeDestroyQuestNpc(npcs.Npc20601Data.alias, 3)
end

return Quest73073
