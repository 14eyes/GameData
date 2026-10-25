require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74685 = class("Quest74685", QuestActorProxy)
Quest74685.defaultAlias = "Quest74685"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest74685:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest74685:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7468501"] = self.OnSubStart7468501, ["7468502"] = self.OnSubStart7468502}
end

function Quest74685:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7468501"] = self.OnSubFinish7468501, ["7468502"] = self.OnSubFinish7468502}
end

function Quest74685:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7468501"] = self.OnSubFailed7468501, ["7468502"] = self.OnSubFailed7468502}
end

function Quest74685:Start()
    print("Start")
end

function Quest74685:OnDestroy()
    print("OnDestroy")
end

function Quest74685:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74685:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74685:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc30565.alias, 3)
    this:ActorDestroy("Q7468501Trigger")
    this:StopNarrator()
    this:ClearNarratorTask()
end

function Quest74685:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest74685:OnSubStart7468501(arg1)
    print("OnSubStart7468501")
    this:CreateQuestNpc(arg1, npcs.Npc30565.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc30565.alias, 74685):DoFreeStyle(1090, true, nil, true, true, false, true)
    actorMgr:CreateActorWithPos("Q7468501Trigger", "Actor/Gadget/Q7468501Trigger", 70900002, 0, points.Q7468501Trigger.pos, points.Q7468501Trigger.rot, true, false, 3)
end

function Quest74685:OnSubFinish7468501(arg1)
    print("OnSubFinish7468501")
    this:StopNarrator()
    this:ClearNarratorTask()
end

function Quest74685:OnSubFailed7468501(arg1)
    print("OnSubFailed7468501")
end

function Quest74685:OnSubStart7468502(arg1)
    print("OnSubStart7468502")
    this:GetQuestNpcActor(npcs.Npc30565.alias, 74685):DoFreeStyle(1090, true, nil, true, true, false, false)
end

function Quest74685:OnSubFinish7468502(arg1)
    print("OnSubFinish7468502")
    this:SafeDestroyQuestNpc(npcs.Npc30565.alias, 3)
    this:ActionSafeCall(function(arg1)
        this:ShowTutorialDialog(1806, nil)
    end)
end

function Quest74685:OnSubFailed7468502(arg1)
    print("OnSubFailed7468502")
end

return Quest74685
