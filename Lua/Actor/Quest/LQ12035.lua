require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest12035 = class("Quest12035", QuestActorProxy)
Quest12035.defaultAlias = "Quest12035"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest12035:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest12035:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1203501"] = self.OnSubStart1203501,
        ["1203502"] = self.OnSubStart1203502,
        ["1203503"] = self.OnSubStart1203503,
        ["1203504"] = self.OnSubStart1203504,
        ["1203505"] = self.OnSubStart1203505,
        ["1203506"] = self.OnSubStart1203506,
        ["1203507"] = self.OnSubStart1203507,
        ["1203508"] = self.OnSubStart1203508,
        ["1203509"] = self.OnSubStart1203509,
        ["1203513"] = self.OnSubStart1203513,
        ["1203510"] = self.OnSubStart1203510,
        ["1203511"] = self.OnSubStart1203511,
        ["1203512"] = self.OnSubStart1203512
    }
end

function Quest12035:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1203501"] = self.OnSubFinish1203501,
        ["1203502"] = self.OnSubFinish1203502,
        ["1203503"] = self.OnSubFinish1203503,
        ["1203504"] = self.OnSubFinish1203504,
        ["1203505"] = self.OnSubFinish1203505,
        ["1203506"] = self.OnSubFinish1203506,
        ["1203507"] = self.OnSubFinish1203507,
        ["1203508"] = self.OnSubFinish1203508,
        ["1203509"] = self.OnSubFinish1203509,
        ["1203513"] = self.OnSubFinish1203513,
        ["1203510"] = self.OnSubFinish1203510,
        ["1203511"] = self.OnSubFinish1203511,
        ["1203512"] = self.OnSubFinish1203512
    }
end

function Quest12035:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest12035:Start()
    print("Start")
end

function Quest12035:OnDestroy()
    print("OnDestroy")
end

function Quest12035:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest12035:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest12035:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest12035:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest12035:OnSubStart1203501(arg1)
    print("OnSubStart1203501")
    self:ActionSafeCall(function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc12492Data.id, 0)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc3173Data.id, 0)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc12449Data.id, 0)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc12497Data.id, 0)
        arg1_2:NotifyTo(npcs.Npc3016Data.alias, 1, true)
        arg1_2:NotifyTo(npcs.Npc3054Data.alias, 1, true)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc12451Data.id, 0)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc12523Data.id, 0)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc12528Data.id, 0)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc12529Data.id, 0)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc12545Data.id, 0)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc12546Data.id, 0)
        arg1_2:GetQuestNpcActor(npcs.Npc12497Data.alias):DoFreeStyle(1190, true, nil, true, true, false)
        arg1_2:GetQuestNpcActor(npcs.Npc12449Data.alias):DoFreeStyle(1170, true, nil, true, true, false)
    end)
end

function Quest12035:OnSubFinish1203501(arg1)
    print("OnSubFinish1203501")
    self:GetQuestNpcActor(npcs.Npc12449Data.alias):DoFreeStateTrigger()
    self:GetQuestNpcActor(npcs.Npc12497Data.alias):DoFreeStateTrigger()
    self:DestroyQuestNpcActor(npcs.Npc12492Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc12497Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc12449Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc3173Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc12545Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc12546Data.alias, 3)
end

function Quest12035:OnSubStart1203502(arg1)
    print("OnSubStart1203502")
    self:NotifyTo(npcs.Npc3054Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q12035Trigger", "Actor/Gadget/Q12035Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q1203502_guide").pos, sceneData:GetDummyPoint(3, "Q1203502_guide").rot, true, false, 3)
    self:CreateQuestNpc(arg1, npcs.Npc12492Data.id, 0)
    self:CreateQuestNpc(arg1, npcs.Npc12497Data.id, 0)
    self:CreateQuestNpc(arg1, npcs.Npc3093Data.id, 0)
    self:NotifyTo(npcs.Npc3016Data.alias, 1, true)
    self:NotifyTo(npcs.Npc3095Data.alias, 1, true)
    self:CreateQuestNpc(arg1, npcs.Npc12545Data.id, 0)
    self:CreateQuestNpc(arg1, npcs.Npc12546Data.id, 0)
end

function Quest12035:OnSubFinish1203502(arg1)
    print("OnSubFinish1203502")
end

function Quest12035:OnSubStart1203503(arg1)
    print("OnSubStart1203503")
    self:NotifyTo(npcs.Npc3054Data.alias, 1, true)
    self:CreateQuestNpc(arg1, npcs.Npc3073Data.id, 0)
    self:CreateQuestNpc(arg1, npcs.Npc3082Data.id, 0)
    self:NotifyTo(npcs.Npc3016Data.alias, 1, true)
    self:NotifyTo(npcs.Npc3095Data.alias, 1, true)
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc3073Data.alias)
    questNpcActor:DoFreeStyle(1170, true, nil, true, true, false)
    questNpcActor:DisableInteeHeadCtrl(true)
    self:GetQuestNpcActor(npcs.Npc3082Data.alias):DisableInteeHeadCtrl(true)
end

function Quest12035:OnSubFinish1203503(arg1)
    print("OnSubFinish1203503")
    self:GetQuestNpcActor(npcs.Npc3073Data.alias):DisableInteeHeadCtrl(false)
    self:GetQuestNpcActor(npcs.Npc3082Data.alias):DisableInteeHeadCtrl(false)
end

function Quest12035:OnSubStart1203504(arg1)
    print("OnSubStart1203504")
    self:NotifyTo(npcs.Npc3054Data.alias, 1, true)
    self:CreateQuestNpc(arg1, npcs.Npc12450Data.id, 0)
    self:CreateQuestNpc(arg1, npcs.Npc12448Data.id, 0)
    self:NotifyTo(npcs.Npc3016Data.alias, 1, true)
    self:NotifyTo(npcs.Npc3095Data.alias, 1, true)
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc12448Data.alias)
    questNpcActor:DoFreeStyle(1170, true, nil, true, true, false)
    questNpcActor:DisableInteeHeadCtrl(true)
    self:GetQuestNpcActor(npcs.Npc12450Data.alias):DisableInteeHeadCtrl(true)
    actorMgr:CreateActorWithPos("Q12035Trigger3", "Actor/Gadget/Q12035Trigger3", 70900002, 0, sceneData:GetDummyPoint(3, "Q1203505_N12450").pos, sceneData:GetDummyPoint(3, "Q1203505_N12450").rot, true, false, 3)
end

function Quest12035:OnSubFinish1203504(arg1)
    print("OnSubFinish1203504")
    self:ActionSafeCall(function(arg1)
        local questNpcActor = arg1:GetQuestNpcActor(npcs.Npc12450Data.alias)
        questNpcActor:DoFreeStyle(1170, true, nil, true, true, false)
        arg1:GetQuestNpcActor(npcs.Npc12448Data.alias):DisableInteeHeadCtrl(false)
        questNpcActor:DisableInteeHeadCtrl(false)
    end)
end

function Quest12035:OnSubStart1203505(arg1)
    print("OnSubStart1203505")
    self:NotifyTo(npcs.Npc3054Data.alias, 1, true)
    self:CreateQuestNpc(arg1, npcs.Npc12449Data.id, 0)
    self:NotifyTo(npcs.Npc3016Data.alias, 1, true)
    self:NotifyTo(npcs.Npc3095Data.alias, 1, true)
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc12449Data.alias)
    questNpcActor:DoFreeStyle(1170, true, nil, true, true, false)
    questNpcActor:DisableInteeHeadCtrl(true)
end

function Quest12035:OnSubFinish1203505(arg1)
    print("OnSubFinish1203505")
    self:GetQuestNpcActor(npcs.Npc12449Data.alias):DisableInteeHeadCtrl(false)
end

function Quest12035:OnSubStart1203506(arg1)
    print("OnSubStart1203506")
    self:NotifyTo(npcs.Npc3054Data.alias, 1, true)
    self:NotifyTo(npcs.Npc3016Data.alias, 1, true)
    self:NotifyTo(npcs.Npc3095Data.alias, 1, true)
end

function Quest12035:OnSubFinish1203506(arg1)
    print("OnSubFinish1203506")
end

function Quest12035:OnSubStart1203507(arg1)
    print("OnSubStart1203507")
    self:NotifyTo(npcs.Npc3054Data.alias, 1, true)
    self:NotifyTo(npcs.Npc3016Data.alias, 1, true)
    self:NotifyTo(npcs.Npc3095Data.alias, 1, true)
end

function Quest12035:OnSubFinish1203507(arg1)
    print("OnSubFinish1203507")
    self:NarratorOnlyTaskByData(datas.Narrato1, nil, 12035)
end

function Quest12035:OnSubStart1203508(arg1)
    print("OnSubStart1203508")
    self:NotifyTo(npcs.Npc3054Data.alias, 1, true)
    self:CreateQuestNpc(arg1, npcs.Npc3086Data.id, 0)
    self:NotifyTo(npcs.Npc3016Data.alias, 1, true)
    self:NotifyTo(npcs.Npc3090Data.alias, 1, true)
    self:NotifyTo(npcs.Npc3095Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q12035Trigger2", "Actor/Gadget/Q12035Trigger2", 70900002, 0, sceneData:GetDummyPoint(3, "Q1203508_N3086").pos, sceneData:GetDummyPoint(3, "Q1203508_N3086").rot, true, false, 3)
    self:GetQuestNpcActor(npcs.Npc3086Data.alias):DoFreeStyle(1190, true, nil, true, true, false)
    self:GetQuestNpcActor(npcs.Npc12450Data.alias):DoFreeStyle(1170, true, nil, true, true, false)
end

function Quest12035:OnSubFinish1203508(arg1)
    print("OnSubFinish1203508")
    self:ActionSafeCall(function(arg1)
        arg1:GetQuestNpcActor(npcs.Npc3086Data.alias):DoFreeStateTrigger()
        arg1:DestroyQuestNpcActor(npcs.Npc3086Data.alias, 3)
    end)
end

function Quest12035:OnSubStart1203509(arg1)
    print("OnSubStart1203509")
    self:ActionSafeCall(function(arg1_2)
        arg1_2:NotifyTo(npcs.Npc3054Data.alias, 1, true)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc1047Data.id, 0)
        actorMgr:CreateActorWithPos("Q12035Trigger1", "Actor/Gadget/Q12035Trigger1", 70900002, 0, sceneData:GetDummyPoint(3, "Q1203303_guide").pos, sceneData:GetDummyPoint(3, "Q1203303_guide").rot, true, false, 3)
        arg1_2:NotifyTo(npcs.Npc3016Data.alias, 1, true)
        arg1_2:NotifyTo(npcs.Npc3090Data.alias, 1, true)
        arg1_2:NotifyTo(npcs.Npc3095Data.alias, 1, true)
        arg1_2:GetQuestNpcActor(npcs.Npc1047Data.alias):DoFreeStyle(1120, true, nil, true, true, false)
        arg1_2:NotifyTo(npcs.Npc3086Data.alias, 1, true)
    end)
end

function Quest12035:OnSubFinish1203509(arg1)
    print("OnSubFinish1203509")
    self:DestroyQuestNpcActor(npcs.Npc3073Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc3082Data.alias, 3)
    self:LightNotifyTo(npcs.Npc3090Data.alias, 0, true)
    self:ActorDestroy("Q12035Trigger1")
    self:LightNotifyTo(npcs.Npc3086Data.alias, 0, true)
end

function Quest12035:OnSubStart1203513(arg1)
    print("OnSubStart1203513")
    self:NotifyTo(npcs.Npc3054Data.alias, 1, true)
    self:NotifyTo(npcs.Npc3016Data.alias, 1, true)
    self:NotifyTo(npcs.Npc3095Data.alias, 1, true)
    self:GetQuestNpcActor(npcs.Npc1047Data.alias):DoFreeStyle(1120, true, nil, true, true, false)
end

function Quest12035:OnSubFinish1203513(arg1)
    print("OnSubFinish1203513")
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:ActionSafeCall(function(arg1_2)
            arg1_2:ClearNarratorTask()
            arg1_2:StopNarrator()
            arg1_2:GetQuestNpcActor(npcs.Npc1047Data.alias):DoFreeStateTrigger()
            arg1_2:GetQuestNpcActor(npcs.Npc12450Data.alias):DoFreeStateTrigger()
            arg1_2:DestroyQuestNpcActor(npcs.Npc1047Data.alias, 3)
            arg1_2:DestroyQuestNpcActor(npcs.Npc12450Data.alias, 3)
            arg1_2:DestroyQuestNpcActor(npcs.Npc12449Data.alias, 3)
            arg1_2:DestroyQuestNpcActor(npcs.Npc12448Data.alias, 3)
            arg1_2:DestroyQuestNpcActor(npcs.Npc12492Data.alias, 3)
            arg1_2:DestroyQuestNpcActor(npcs.Npc12497Data.alias, 3)
            arg1_2:DestroyQuestNpcActor(npcs.Npc3093Data.alias, 3)
            arg1_2:DestroyQuestNpcActor(npcs.Npc12451Data.alias, 3)
            arg1_2:DestroyQuestNpcActor(npcs.Npc12523Data.alias, 3)
            arg1_2:LightNotifyTo(npcs.Npc3016Data.alias, 0, true)
            arg1_2:DestroyQuestNpcActor(npcs.Npc12528Data.alias, 3)
            arg1_2:DestroyQuestNpcActor(npcs.Npc12529Data.alias, 3)
            arg1_2:LightNotifyTo(npcs.Npc3095Data.alias, 0, true)
            arg1_2:DestroyQuestNpcActor(npcs.Npc12545Data.alias, 3)
            arg1_2:DestroyQuestNpcActor(npcs.Npc12546Data.alias, 3)
            if sceneData.currSceneID == 1061 then
                arg1_2:TransmitPlayerById(arg1, 1)
            end
        end)
    end, nil, nil, "", false, true)
end

function Quest12035:OnSubStart1203510(arg1)
    print("OnSubStart1203510")
    self:NotifyTo(npcs.Npc3054Data.alias, 1, true)
end

function Quest12035:OnSubFinish1203510(arg1)
    print("OnSubFinish1203510")
    self:LightNotifyTo(npcs.Npc3054Data.alias, 0, true)
end

function Quest12035:OnSubStart1203511(arg1)
    print("OnSubStart1203511")
    self:GetQuestNpcActor(npcs.Npc12497Data.alias):DoFreeStyle(1190, true, nil, true, true, false)
    self:NotifyTo(npcs.Npc3054Data.alias, 1, true)
end

function Quest12035:OnSubFinish1203511(arg1)
    print("OnSubFinish1203511")
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc12497Data.alias)
    questNpcActor.WalkToRouteTask(questNpcActor, datas.RoutePointsData, function(arg1, arg2)
        questNpcActor:Standby()
        questNpcActor:TurnTo(M.Euler2DirXZ(sceneData:GetDummyPoint(3, "Q12035_N12497_Route4").rot))
    end, function(arg1, arg2)
        questNpcActor:Standby()
    end, function(arg1, arg2)
        questNpcActor:ResumeMove()
    end, function(arg1, arg2)
        questNpcActor:SetPosAndTurnTo(sceneData:GetDummyPoint(3, "Q12035_N12497_Route4").pos, M.Euler2DirXZ(sceneData:GetDummyPoint(3, "Q12035_N12497_Route4").rot), true)
    end)
end

function Quest12035:OnSubStart1203512(arg1)
    print("OnSubStart1203512")
    self:GetQuestNpcActor(npcs.Npc12492Data.alias):DoFreeStyle(1190, true, nil, true, true, false)
    self:NotifyTo(npcs.Npc3054Data.alias, 1, true)
end

function Quest12035:OnSubFinish1203512(arg1)
    print("OnSubFinish1203512")
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc12492Data.alias)
    questNpcActor.WalkToRouteTask(questNpcActor, datas.RoutePointsData1, function(arg1, arg2)
        questNpcActor:Standby()
        questNpcActor:TurnTo(M.Euler2DirXZ(sceneData:GetDummyPoint(3, "Q12035_N12492_Route3").rot))
    end, function(arg1, arg2)
        questNpcActor:Standby()
    end, function(arg1, arg2)
        questNpcActor:ResumeMove()
    end, function(arg1, arg2)
        questNpcActor:SetPosAndTurnTo(sceneData:GetDummyPoint(3, "Q12035_N12492_Route3").pos, M.Euler2DirXZ(sceneData:GetDummyPoint(3, "Q12035_N12492_Route3").rot), true)
    end)
end

return Quest12035
