require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74225 = class("Quest74225", QuestActorProxy)
Quest74225.defaultAlias = "Quest74225"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points

function Quest74225:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest74225:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7422503"] = self.OnSubStart7422503,
        ["7422501"] = self.OnSubStart7422501,
        ["7422502"] = self.OnSubStart7422502
    }
end

function Quest74225:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7422503"] = self.OnSubFinish7422503,
        ["7422501"] = self.OnSubFinish7422501,
        ["7422502"] = self.OnSubFinish7422502
    }
end

function Quest74225:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7422503"] = self.OnSubFailed7422503,
        ["7422501"] = self.OnSubFailed7422501,
        ["7422502"] = self.OnSubFailed7422502
    }
end

function Quest74225:Start()
    print("Start")
end

function Quest74225:OnDestroy()
    print("OnDestroy")
end

function Quest74225:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74225:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74225:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest74225:NpcDestroyWithBlackscreen(arg1, arg2)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "")
end

function Quest74225:OnSubStart7422503(arg1)
    print("OnSubStart7422503")
    actorMgr:CreateActorWithPos("Q74225Trigger", "Actor/Gadget/Q74225Trigger", 70900002, 0, points.TPos_Q74225Trigger.pos, points.TPos_Q74225Trigger.rot, true, false, 3)
end

function Quest74225:OnSubFinish7422503(arg1)
    print("OnSubFinish7422503")
end

function Quest74225:OnSubFailed7422503(arg1)
    print("OnSubFailed7422503")
    this:DestroyQuestNpcActor(npcs.Npc5353Data.alias, 3)
end

function Quest74225:OnSubStart7422501(arg1)
    print("OnSubStart7422501")
    this:CreateQuestNpc(arg1, npcs.Npc5353Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc5353Data.alias):DoFreeStyle(4190, true, nil, true, true, false, false)
end

function Quest74225:OnSubFinish7422501(arg1)
    print("OnSubFinish7422501")
end

function Quest74225:OnSubFailed7422501(arg1)
    print("OnSubFailed7422501")
    this:DestroyQuestNpcActor(npcs.Npc5353Data.alias, 3)
end

function Quest74225:OnSubStart7422502(arg1)
    print("OnSubStart7422502")
    actorMgr:CreateActorWithPos("Q7422502TriggerTalk", "Actor/Gadget/Q7422502TriggerTalk", 70900002, 0, points.TPos_Q7422502TriggerTalk.pos, points.TPos_Q7422502TriggerTalk.rot, true, false, 3)
end

function Quest74225:OnSubFinish7422502(arg1)
    print("OnSubFinish7422502")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc5353Data.alias)
end

function Quest74225:OnSubFailed7422502(arg1)
    print("OnSubFailed7422502")
    this:DestroyQuestNpcActor(npcs.Npc5353Data.alias, 3)
end

return Quest74225
