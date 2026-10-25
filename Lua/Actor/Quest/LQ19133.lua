require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest19133 = class("Quest19133", QuestActorProxy)
Quest19133.defaultAlias = "Quest19133"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest19133:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest19133:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1913301"] = self.OnSubStart1913301,
        ["1913302"] = self.OnSubStart1913302,
        ["1913303"] = self.OnSubStart1913303,
        ["1913304"] = self.OnSubStart1913304,
        ["1913305"] = self.OnSubStart1913305
    }
end

function Quest19133:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1913301"] = self.OnSubFinish1913301,
        ["1913302"] = self.OnSubFinish1913302,
        ["1913303"] = self.OnSubFinish1913303,
        ["1913304"] = self.OnSubFinish1913304,
        ["1913305"] = self.OnSubFinish1913305
    }
end

function Quest19133:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest19133:Start()
    print("Start")
end

function Quest19133:OnDestroy()
    print("OnDestroy")
end

function Quest19133:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest19133:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest19133:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Coop_NingguangCustumeFloralData.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc2020Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12298Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12299Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12300Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12301Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12302Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc2140Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc2142Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc2143Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc2063Data.alias, 3)
    self:LightNotifyTo(npcs.Npc2140Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc2142Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc2143Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc2063Data.alias, 0, true)
    actorMgr:DestroyEntityActor("Q1913305Trigger", 3, false)
end

function Quest19133:NpcCreateWithBlackscreenInteraction(arg1, arg2, arg3, arg4)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, arg2, arg3)
        arg1_2:RequestInteraction(arg4)
    end)
end

function Quest19133:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest19133:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    self:ActionSafeCall(function(arg1_2)
        arg1_2:NotifyTo(arg1, arg2, arg3)
    end)
end

function Quest19133:OnSubStart1913301(arg1)
    print("OnSubStart1913301")
    self:CreateQuestNpc(arg1, npcs.Npc2020Data.id, 2)
    self:DailyNpcSafeHideSelf(npcs.Npc2140Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc2142Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc2143Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc2063Data.alias, 1, true)
    self:RequestCoopInteractionFromSubStartPoint(102701, 1913301)
end

function Quest19133:OnSubFinish1913301(arg1)
    print("OnSubFinish1913301")
    self:LightNotifyTo(npcs.Npc2063Data.alias, 0, true)
end

function Quest19133:OnSubStart1913302(arg1)
    print("OnSubStart1913302")
    self:CreateQuestNpc(arg1, npcs.Npc12298Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc12299Data.id, 3)
    self:CreateQuestNpc(arg1, npcs.Npc12300Data.id, 4)
    self:DailyNpcSafeHideSelf(npcs.Npc2140Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc2142Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc2143Data.alias, 1, true)
    self:RequestCoopInteractionFromSubStartPoint(102701, 1913302)
end

function Quest19133:OnSubFinish1913302(arg1)
    print("OnSubFinish1913302")
    self:SafeDestroyQuestNpc(npcs.Npc2020Data.alias, 3)
end

function Quest19133:OnSubStart1913303(arg1)
    print("OnSubStart1913303")
    self:CreateQuestNpc(arg1, npcs.Npc12301Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc12302Data.id, 3)
    self:DailyNpcSafeHideSelf(npcs.Npc2140Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc2142Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc2143Data.alias, 1, true)
    self:RequestCoopInteractionFromSubStartPoint(102701, 1913303)
    self:GetQuestNpcActor(npcs.Npc12298Data.alias):EnableHeadCtrl(false)
    self:GetQuestNpcActor(npcs.Npc12299Data.alias):EnableHeadCtrl(false)
    self:GetQuestNpcActor(npcs.Npc12300Data.alias):EnableHeadCtrl(false)
    self:GetQuestNpcActor(npcs.Npc12301Data.alias):DisableInteeHeadCtrl(true)
    self:GetQuestNpcActor(npcs.Npc12302Data.alias):DisableInteeHeadCtrl(true)
end

function Quest19133:OnSubFinish1913303(arg1)
    print("OnSubFinish1913303")
end

function Quest19133:OnSubStart1913304(arg1)
    print("OnSubStart1913304")
    self:DailyNpcSafeHideSelf(npcs.Npc2140Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc2142Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc2143Data.alias, 1, true)
    self:RequestCoopInteractionFromSubStartPoint(102701, 1913304)
    self:GetQuestNpcActor(npcs.Npc12298Data.alias):EnableHeadCtrl(true)
    self:GetQuestNpcActor(npcs.Npc12299Data.alias):EnableHeadCtrl(true)
    self:GetQuestNpcActor(npcs.Npc12300Data.alias):EnableHeadCtrl(true)
end

function Quest19133:OnSubFinish1913304(arg1)
    print("OnSubFinish1913304")
end

function Quest19133:OnSubStart1913305(arg1)
    print("OnSubStart1913305")
    self:DailyNpcSafeHideSelf(npcs.Npc2140Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc2142Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc2143Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q1913305Trigger", "Actor/Gadget/Q1913305Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q1913305target").pos, sceneData:GetDummyPoint(3, "Q1913305target").rot, true, false, 3)
end

function Quest19133:OnSubFinish1913305(arg1)
    print("OnSubFinish1913305")
    self:ActorDestroy("Q1913305Trigger")
    self:LightNotifyTo(npcs.Npc2140Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc2142Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc2143Data.alias, 0, true)
end

return Quest19133
