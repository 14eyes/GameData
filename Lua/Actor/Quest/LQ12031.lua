require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest12031 = class("Quest12031", QuestActorProxy)
Quest12031.defaultAlias = "Quest12031"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local gadgets
local datas

function Quest12031:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    gadgets = clientData.Gadgets
    datas = clientData.Datas
end

function Quest12031:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1203101"] = self.OnSubStart1203101,
        ["1203102"] = self.OnSubStart1203102,
        ["1203103"] = self.OnSubStart1203103,
        ["1203107"] = self.OnSubStart1203107,
        ["1203109"] = self.OnSubStart1203109,
        ["1203108"] = self.OnSubStart1203108,
        ["1203104"] = self.OnSubStart1203104,
        ["1203110"] = self.OnSubStart1203110,
        ["1203105"] = self.OnSubStart1203105,
        ["1203111"] = self.OnSubStart1203111,
        ["1203112"] = self.OnSubStart1203112,
        ["1203106"] = self.OnSubStart1203106
    }
end

function Quest12031:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1203101"] = self.OnSubFinish1203101,
        ["1203102"] = self.OnSubFinish1203102,
        ["1203103"] = self.OnSubFinish1203103,
        ["1203107"] = self.OnSubFinish1203107,
        ["1203109"] = self.OnSubFinish1203109,
        ["1203108"] = self.OnSubFinish1203108,
        ["1203104"] = self.OnSubFinish1203104,
        ["1203110"] = self.OnSubFinish1203110,
        ["1203105"] = self.OnSubFinish1203105,
        ["1203111"] = self.OnSubFinish1203111,
        ["1203112"] = self.OnSubFinish1203112,
        ["1203106"] = self.OnSubFinish1203106
    }
end

function Quest12031:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest12031:Start()
    print("Start")
end

function Quest12031:OnDestroy()
    print("OnDestroy")
end

function Quest12031:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest12031:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest12031:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest12031:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 111 then
        globalActor:ChangeDay24Time(20, true)
    elseif arg1 == 222 then
        globalActor:ChangeDay24Time(1, true)
    end
end

function Quest12031:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    self:ActionSafeCall(function(arg1_2)
        arg1_2:NotifyTo(arg1, arg2, arg3)
    end)
end

function Quest12031:OnSubStart1203101(arg1)
    print("OnSubStart1203101")
    self:CreateQuestNpcWithTriggerBlack("1203101", 1203101, npcs.Npc1034Data.id, 1, 5, 2)
end

function Quest12031:OnSubFinish1203101(arg1)
    print("OnSubFinish1203101")
    self:SafeDestroyQuestNpc(npcs.Npc1034Data.alias, 3)
end

function Quest12031:OnSubStart1203102(arg1)
    print("OnSubStart1203102")
    self:CreateQuestNpc(arg1, npcs.Npc3107Data.id, 1)
end

function Quest12031:OnSubFinish1203102(arg1)
    print("OnSubFinish1203102")
    self:ActionSafeCall(function(arg1)
        arg1:NarratorOnlyTaskByData(datas.NarratorWithId)
    end)

    self:SafeDestroyQuestNpc(npcs.Npc3107Data.alias, 3)
end

function Quest12031:OnSubStart1203103(arg1)
    print("OnSubStart1203103")
    self:DailyNpcSafeHideSelf(npcs.Npc3105Data.alias, 1, true)
    self:CreateQuestNpc(arg1, npcs.Npc12400Data.id, 1)
    self:DailyNpcSafeHideSelf(npcs.Npc3106Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc3109Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc3108Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc3107Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc3110Data.alias, 1, true)
end

function Quest12031:OnSubFinish1203103(arg1)
    print("OnSubFinish1203103")
    self:SafeDestroyQuestNpc(npcs.Npc12400Data.alias, 3)
end

function Quest12031:OnSubStart1203107(arg1)
    print("OnSubStart1203107")
    self:DailyNpcSafeHideSelf(npcs.Npc3105Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc3106Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc3109Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc3108Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc3107Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc3110Data.alias, 1, true)
    self:CreateQuestNpcWithTriggerBlack("1203107", 1203107, npcs.Npc12401Data.id, 1, 5, 2)
end

function Quest12031:OnSubFinish1203107(arg1)
    print("OnSubFinish1203107")
    self:SafeDestroyQuestNpc(npcs.Npc12401Data.alias, 3)
end

function Quest12031:OnSubStart1203109(arg1)
    print("OnSubStart1203109")
    self:DailyNpcSafeHideSelf(npcs.Npc3105Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc3106Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc3109Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc3108Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc3107Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc3110Data.alias, 1, true)
end

function Quest12031:OnSubFinish1203109(arg1)
    print("OnSubFinish1203109")
end

function Quest12031:OnSubStart1203108(arg1)
    print("OnSubStart1203108")
    self:DailyNpcSafeHideSelf(npcs.Npc3105Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc3106Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc3109Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc3108Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc3107Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc3110Data.alias, 1, true)
    self:CreateQuestNpcWithTriggerBlack("1203108", 1203108, npcs.PaimonData.id, 1, 10, 2)
end

function Quest12031:OnSubFinish1203108(arg1)
    print("OnSubFinish1203108")
    self:ActionSafeCall(function(arg1)
        local questNpcActor = arg1:GetQuestNpcActor(npcs.PaimonData.alias)
        if questNpcActor ~= nil then
            if questNpcActor.uActor ~= nil then
                questNpcActor:DestroyWithDisappear(false)
            end
        end
    end)
end

function Quest12031:OnSubStart1203104(arg1)
    print("OnSubStart1203104")
    self:DailyNpcSafeHideSelf(npcs.Npc3105Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc3106Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc3109Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc3108Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc3107Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc3110Data.alias, 1, true)
end

function Quest12031:OnSubFinish1203104(arg1)
    print("OnSubFinish1203104")
    self:ActionSafeCall(function(arg1)
        arg1:NarratorOnlyTaskByData(datas.NarratorWithId1)
    end)
end

function Quest12031:OnSubStart1203110(arg1)
    print("OnSubStart1203110")
    self:DailyNpcSafeHideSelf(npcs.Npc3105Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc3106Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc3109Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc3108Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc3107Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc3110Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q12031Trigger", "Actor/Gadget/Q12031Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q1203110trigger").pos, sceneData:GetDummyPoint(3, "Q1203110trigger").rot, true, false, 3)
end

function Quest12031:OnSubFinish1203110(arg1)
    print("OnSubFinish1203110")
end

function Quest12031:OnSubStart1203105(arg1)
    print("OnSubStart1203105")
    self:CallDelay(1.5, function(arg1_2)
        arg1_2:TransmitPlayerById(arg1, 1, nil, function(arg1_2)
            arg1_2:CreateQuestNpc(arg1, npcs.Npc1034Data.id, 1)
            arg1_2:RequestInteraction(npcs.Npc1034Data.alias)
        end, task)
    end)

    self:DailyNpcSafeHideSelf(npcs.Npc3105Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc3106Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc3109Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc3108Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc3107Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc3110Data.alias, 1, true)
end

function Quest12031:OnSubFinish1203105(arg1)
    print("OnSubFinish1203105")
end

function Quest12031:OnSubStart1203111(arg1)
    print("OnSubStart1203111")
    self:DailyNpcSafeHideSelf(npcs.Npc3105Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc3106Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc3109Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc3108Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc3107Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc3110Data.alias, 1, true)
end

function Quest12031:OnSubFinish1203111(arg1)
    print("OnSubFinish1203111")
    self:NarratorOnlyTaskByData(datas.NarratorWithId2)
    self:LightNotifyTo(npcs.Npc3105Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc3106Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc3109Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc3108Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc3107Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc3110Data.alias, 0, true)
end

function Quest12031:OnSubStart1203112(arg1)
    print("OnSubStart1203112")
    self:CreateQuestNpc(arg1, npcs.Npc12368Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc12405Data.id, 3)
    self:CreateQuestNpcWithTriggerBlack("1203112", 1203112, npcs.Npc12369Data.id, 2, 5, 2)
end

function Quest12031:OnSubFinish1203112(arg1)
    print("OnSubFinish1203112")
    self:SafeDestroyQuestNpc(npcs.Npc12368Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12369Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12405Data.alias, 3)
end

function Quest12031:OnSubStart1203106(arg1)
    print("OnSubStart1203106")
    self:CreateQuestNpcWithTriggerBlack("1203106", 1203106, npcs.Npc1034Data.id, 1, 10, 2)
end

function Quest12031:OnSubFinish1203106(arg1)
    print("OnSubFinish1203106")
end

return Quest12031
