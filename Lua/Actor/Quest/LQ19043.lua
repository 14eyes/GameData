require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest19043 = class("Quest19043", QuestActorProxy)
Quest19043.defaultAlias = "Quest19043"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local gadgets
local datas

function Quest19043:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    gadgets = clientData.Gadgets
    datas = clientData.Datas
end

function Quest19043:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1904301"] = self.OnSubStart1904301,
        ["1904302"] = self.OnSubStart1904302,
        ["1904303"] = self.OnSubStart1904303,
        ["1904304"] = self.OnSubStart1904304,
        ["1904309"] = self.OnSubStart1904309,
        ["1904305"] = self.OnSubStart1904305,
        ["1904306"] = self.OnSubStart1904306,
        ["1904307"] = self.OnSubStart1904307,
        ["1904308"] = self.OnSubStart1904308
    }
end

function Quest19043:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1904301"] = self.OnSubFinish1904301,
        ["1904302"] = self.OnSubFinish1904302,
        ["1904303"] = self.OnSubFinish1904303,
        ["1904304"] = self.OnSubFinish1904304,
        ["1904309"] = self.OnSubFinish1904309,
        ["1904305"] = self.OnSubFinish1904305,
        ["1904306"] = self.OnSubFinish1904306,
        ["1904307"] = self.OnSubFinish1904307,
        ["1904308"] = self.OnSubFinish1904308
    }
end

function Quest19043:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["1904301"] = self.OnSubFailed1904301,
        ["1904302"] = self.OnSubFailed1904302,
        ["1904303"] = self.OnSubFailed1904303,
        ["1904304"] = self.OnSubFailed1904304,
        ["1904309"] = self.OnSubFailed1904309,
        ["1904305"] = self.OnSubFailed1904305,
        ["1904306"] = self.OnSubFailed1904306,
        ["1904307"] = self.OnSubFailed1904307,
        ["1904308"] = self.OnSubFailed1904308
    }
end

function Quest19043:Start()
    print("Start")
end

function Quest19043:OnDestroy()
    print("OnDestroy")
end

function Quest19043:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest19043:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest19043:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:DestroyQuestNpcActor(npcs.Npc1024Data.alias, 3)
    globalActor:LeaveAllWeather()
    actorMgr:DestroyEntityActor(datas.Q19043Trigger1_.alias, 3, false)
    actorMgr:DestroyEntityActor(datas.Q19043Trigger2_.alias, 3, false)
end

function Quest19043:Finish03()
    self:SyncPos(2)
    if self.BeFollowState == BeFollowState.FAILED then
        return
    end

    local actor = actorMgr:GetActor(clientData.ActorAlias)
    local questNpcActor = actor:GetQuestNpcActor(npcs.Npc1024Data.alias)
    questNpcActor:DoFreeStateTrigger()
    questNpcActor:Standby()
    questNpcActor:TurnTo(M.Euler2DirXZ(sceneData:GetDummyPoint(3, "Q19043Bennett2").rot))
    if actor ~= nil then
        actor:FinishQuestID(false, 1904303)
    end
end

function Quest19043:Finish07()
    self:SyncPos(2)
    if self.BeFollowState == BeFollowState.FAILED then
        return
    end

    local actor = actorMgr:GetActor(clientData.ActorAlias)
    local questNpcActor = actor:GetQuestNpcActor(npcs.Npc1024Data.alias)
    questNpcActor:DoFreeStateTrigger()
    questNpcActor:Standby()
    questNpcActor:TurnTo(M.Euler2DirXZ(sceneData:GetDummyPoint(3, "Q19043Bennett3").rot))
    if actor ~= nil then
        actor:FinishQuestID(false, 1904307)
    end
end

function Quest19043:InvokeOnInteraction(arg1)
    if arg1 == 1 then
        globalActor:ChangeWeather("BigWorld/Weather_Storm")
    elseif arg1 == 2 then
        globalActor:LeaveAllWeather()
    elseif arg1 == 3 then
    end
end

function Quest19043:WeatherRecover()
    print("WeatherRecover")
    globalActor:LeaveAllWeather()
    self:CallDelay(8, self.Reminder08Finish)
end

function Quest19043:Reminder08Finish()
    print("Reminder08Finish")
    self:NarratorOnlyTaskByData(datas.Narrator08Finish)
end

function Quest19043:OnSubStart1904301(arg1)
    print("OnSubStart1904301")
    self:CreateQuestNpc(arg1, npcs.Npc1024Data.id, 1)
    actorMgr:CreateActorWithPos(datas.Q19043Trigger1_.alias, datas.Q19043Trigger1_.script, datas.Q19043Trigger1_.id, 1, datas.Q19043Trigger1_.point.pos, datas.Q19043Trigger1_.point.rot, true, false, 3)
    self:SetNavigationByMainId(19043, true)
end

function Quest19043:OnSubFinish1904301(arg1)
    print("OnSubFinish1904301")
end

function Quest19043:OnSubFailed1904301(arg1)
    print("OnSubFailed1904301")
end

function Quest19043:OnSubStart1904302(arg1)
    print("OnSubStart1904302")
    self:RequestCoopInteractionFromSubStartPoint(103201, 1904301)
end

function Quest19043:OnSubFinish1904302(arg1)
    print("OnSubFinish1904302")
end

function Quest19043:OnSubFailed1904302(arg1)
    print("OnSubFailed1904302")
end

function Quest19043:OnSubStart1904303(arg1)
    print("OnSubStart1904303")
    self:CreateQuestNpc(arg1, npcs.Npc1024Data.id, 1)
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc1024Data.alias)
    self:NpcBeFollowTaskByRoutePointsWithDiffLen(questNpcActor, datas.RoutePointsData1, 8, 6, -1, self.Finish03, nil, nil, nil, nil, nil, false)
end

function Quest19043:OnSubFinish1904303(arg1)
    print("OnSubFinish1904303")
end

function Quest19043:OnSubFailed1904303(arg1)
    print("OnSubFailed1904303")
end

function Quest19043:OnSubStart1904304(arg1)
    print("OnSubStart1904304")
    self:GetQuestNpcActor(npcs.Npc1024Data.alias):TurnTo(M.Euler2DirXZ(sceneData:GetDummyPoint(3, "Q19043Bennett2").rot))
    self:RequestCoopInteractionFromSubStartPoint(103201, 1904302)
end

function Quest19043:OnSubFinish1904304(arg1)
    print("OnSubFinish1904304")
end

function Quest19043:OnSubFailed1904304(arg1)
    print("OnSubFailed1904304")
end

function Quest19043:OnSubStart1904309(arg1)
    print("OnSubStart1904309")
end

function Quest19043:OnSubFinish1904309(arg1)
    print("OnSubFinish1904309")
    self:NarratorOnlyTaskByData(datas.Narrator09Finish, nil, 19043)
end

function Quest19043:OnSubFailed1904309(arg1)
    print("OnSubFailed1904309")
end

function Quest19043:OnSubStart1904305(arg1)
    print("OnSubStart1904305")
end

function Quest19043:OnSubFinish1904305(arg1)
    print("OnSubFinish1904305")
    self:NarratorOnlyTaskByData(datas.Narrator05Finish)
end

function Quest19043:OnSubFailed1904305(arg1)
    print("OnSubFailed1904305")
end

function Quest19043:OnSubStart1904306(arg1)
    print("OnSubStart1904306")
    self:RequestCoopInteractionFromSubStartPoint(103201, 1904303)
end

function Quest19043:OnSubFinish1904306(arg1)
    print("OnSubFinish1904306")
end

function Quest19043:OnSubFailed1904306(arg1)
    print("OnSubFailed1904306")
end

function Quest19043:OnSubStart1904307(arg1)
    print("OnSubStart1904307")
    self:CreateQuestNpc(arg1, npcs.Npc1024Data.id, 1)
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc1024Data.alias)
    questNpcActor:DisableInteeHeadCtrl(true)
    self:NpcBeFollowTaskByRoutePointsWithDiffLen(questNpcActor, datas.RoutePointsData2, 8, 6, -1, self.Finish07, nil, nil, nil, nil, nil, false)
    actorMgr:CreateActorWithPos(datas.Q19043Trigger2_.alias, datas.Q19043Trigger2_.script, datas.Q19043Trigger2_.id, 0, datas.Q19043Trigger2_.point.pos, datas.Q19043Trigger2_.point.rot, true, false, 3)
end

function Quest19043:OnSubFinish1904307(arg1)
    print("OnSubFinish1904307")
end

function Quest19043:OnSubFailed1904307(arg1)
    print("OnSubFailed1904307")
    globalActor:LeaveAllWeather()
end

function Quest19043:OnSubStart1904308(arg1)
    print("OnSubStart1904308")
    self:RequestCoopInteractionFromSubStartPoint(103201, 1904304)
    self:GetQuestNpcActor(npcs.Npc1024Data.alias):DisableInteeHeadCtrl(false)
    actorMgr:CreateActorWithPos(datas.Q19043Trigger2_.alias, datas.Q19043Trigger2_.script, datas.Q19043Trigger2_.id, 0, datas.Q19043Trigger2_.point.pos, datas.Q19043Trigger2_.point.rot, true, false, 3)
end

function Quest19043:OnSubFinish1904308(arg1)
    print("OnSubFinish1904308")
    self:SafeDestroyQuestNpc(npcs.Npc1024Data.alias, 3)
    self:ActionSafeCall(self.WeatherRecover)
    actorMgr:DestroyEntityActor(datas.Q19043Trigger2_.alias, 3, false)
end

function Quest19043:OnSubFailed1904308(arg1)
    print("OnSubFailed1904308")
end

return Quest19043
