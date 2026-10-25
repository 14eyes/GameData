require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74033 = class("Quest74033", QuestActorProxy)
Quest74033.defaultAlias = "Quest74033"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points

function Quest74033:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest74033:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7403302"] = self.OnSubStart7403302,
        ["7403301"] = self.OnSubStart7403301,
        ["7403305"] = self.OnSubStart7403305,
        ["7403303"] = self.OnSubStart7403303,
        ["7403304"] = self.OnSubStart7403304
    }
end

function Quest74033:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7403302"] = self.OnSubFinish7403302,
        ["7403301"] = self.OnSubFinish7403301,
        ["7403305"] = self.OnSubFinish7403305,
        ["7403303"] = self.OnSubFinish7403303,
        ["7403304"] = self.OnSubFinish7403304
    }
end

function Quest74033:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74033:Start()
    print("Start")
end

function Quest74033:OnDestroy()
    print("OnDestroy")
end

function Quest74033:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74033:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74033:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest74033:NpcCreateWithBlackscreenInteraction(arg1, arg2, arg3, arg4)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:CreateQuestNpc(arg1, arg2, arg3)
        this:RequestInteraction(arg4)
    end)
end

function Quest74033:OnSubStart7403302(arg1)
    print("OnSubStart7403302")
    actorMgr:CreateActorWithPos("Q7403302Trigger", "Actor/Gadget/Q7403302Trigger", 70900002, 0, points.TPos_Q7403302Trigger.pos, points.TPos_Q7403302Trigger.rot, true, false, 3)
end

function Quest74033:OnSubFinish7403302(arg1)
    print("OnSubFinish7403302")
end

function Quest74033:OnSubStart7403301(arg1)
    print("OnSubStart7403301")
    this:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc21048Data.id, 0, npcs.Npc21048Data.alias)
end

function Quest74033:OnSubFinish7403301(arg1)
    print("OnSubFinish7403301")
    this:SafeDestroyQuestNpc(npcs.Npc21048Data.alias, 3)
end

function Quest74033:OnSubStart7403305(arg1)
    print("OnSubStart7403305")
    this:CreateQuestNpc(arg1, npcs.Npc21076Data.id, 0)
end

function Quest74033:OnSubFinish7403305(arg1)
    print("OnSubFinish7403305")
end

function Quest74033:OnSubStart7403303(arg1)
    print("OnSubStart7403303")
    actorMgr:CreateActorWithPos("Q7403303Trigger", "Actor/Gadget/Q7403303Trigger", 70900002, 0, points.TPos_Q7403303Trigger.pos, points.TPos_Q7403303Trigger.rot, true, false, 3)
end

function Quest74033:OnSubFinish7403303(arg1)
    print("OnSubFinish7403303")
end

function Quest74033:OnSubStart7403304(arg1)
    print("OnSubStart7403304")
    this:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc21048Data.id, 0, npcs.Npc21048Data.alias)
end

function Quest74033:OnSubFinish7403304(arg1)
    print("OnSubFinish7403304")
    self:SetNavigationByMainId(74025, true)
    this:SafeDestroyQuestNpc(npcs.Npc21076Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21048Data.alias, 3)
end

return Quest74033
