require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74087 = class("Quest74087", QuestActorProxy)
Quest74087.defaultAlias = "Quest74087"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points

function Quest74087:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest74087:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7408701"] = self.OnSubStart7408701,
        ["7408702"] = self.OnSubStart7408702,
        ["7408703"] = self.OnSubStart7408703,
        ["7408704"] = self.OnSubStart7408704
    }
end

function Quest74087:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7408701"] = self.OnSubFinish7408701,
        ["7408702"] = self.OnSubFinish7408702,
        ["7408703"] = self.OnSubFinish7408703,
        ["7408704"] = self.OnSubFinish7408704
    }
end

function Quest74087:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74087:Start()
    print("Start")
end

function Quest74087:OnDestroy()
    print("OnDestroy")
end

function Quest74087:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74087:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74087:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest74087:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest74087:CheckSubQuestState(arg1, arg2, arg3)
    local subQuestState = self:GetSubQuestState(arg1)
    local v
    if arg3 then
        v = subQuestState ~= arg2
    else
        v = subQuestState == arg2
    end

    return v
end

function Quest74087:OnSubStart7408701(arg1)
    print("OnSubStart7408701")
    actorMgr:CreateActorWithPos("Q7408701Trigger", "Actor/Gadget/Q7408701Trigger", 70900002, 0, points.TPos_Q7408701Trigger.pos, points.TPos_Q7408701Trigger.rot, true, false, 3)
end

function Quest74087:OnSubFinish7408701(arg1)
    print("OnSubFinish7408701")
end

function Quest74087:OnSubStart7408702(arg1)
    print("OnSubStart7408702")
    this:CreateQuestNpc(arg1, npcs.Npc21084Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc5259Data.id, 0)
    this:RequestInteraction(npcs.Npc21084Data.alias, "", true)
end

function Quest74087:OnSubFinish7408702(arg1)
    print("OnSubFinish7408702")
end

function Quest74087:OnSubStart7408703(arg1)
    print("OnSubStart7408703")
    actorMgr:CreateActorWithPos("Q74087NPCTrigger", "Actor/Gadget/Q74087NPCTrigger", 70900002, 0, points.TPos_Q74087NPCTrigger.pos, points.TPos_Q74087NPCTrigger.rot, true, false, 3)
    this:GetQuestNpcActor(npcs.Npc21084Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc5259Data.alias):DisableInteeHeadCtrl(true)
end

function Quest74087:OnSubFinish7408703(arg1)
    print("OnSubFinish7408703")
    this:ActorDestroy("Q74087NPCTrigger")
    if this:CheckSubQuestState(7408806, 3, true) then
        this:SetNavigationByMainId(74088, true)
    end

    this:SafeDestroyQuestNpc(npcs.Npc21084Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc5259Data.alias, 3)
end

function Quest74087:OnSubStart7408704(arg1)
    print("OnSubStart7408704")
end

function Quest74087:OnSubFinish7408704(arg1)
    print("OnSubFinish7408704")
end

return Quest74087
