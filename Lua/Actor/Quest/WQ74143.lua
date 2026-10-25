require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74143 = class("Quest74143", QuestActorProxy)
Quest74143.defaultAlias = "Quest74143"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points
local datas

function Quest74143:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
    datas = clientData.Datas
end

function Quest74143:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7414305"] = self.OnSubStart7414305,
        ["7414301"] = self.OnSubStart7414301,
        ["7414302"] = self.OnSubStart7414302,
        ["7414303"] = self.OnSubStart7414303,
        ["7414304"] = self.OnSubStart7414304
    }
end

function Quest74143:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7414305"] = self.OnSubFinish7414305,
        ["7414301"] = self.OnSubFinish7414301,
        ["7414302"] = self.OnSubFinish7414302,
        ["7414303"] = self.OnSubFinish7414303,
        ["7414304"] = self.OnSubFinish7414304
    }
end

function Quest74143:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74143:Start()
    print("Start")
end

function Quest74143:OnDestroy()
    print("OnDestroy")
end

function Quest74143:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74143:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74143:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest74143:NpcDestroyWithBlackscreen(arg1, arg2)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "")
end

function Quest74143:OnSubStart7414305(arg1)
    print("OnSubStart7414305")
end

function Quest74143:OnSubFinish7414305(arg1)
    print("OnSubFinish7414305")
end

function Quest74143:OnSubStart7414301(arg1)
    print("OnSubStart7414301")
    this:CreateQuestNpc(arg1, npcs.Npc21033Data.id, 0)
    actorMgr:CreateActorWithPos("Q7414301Trigger", "Actor/Gadget/Q7414301Trigger", 70900002, 0, points.TPos_Q7414301Trigger.pos, points.TPos_Q7414301Trigger.rot, true, false, 3)
    this:NotifyTo(npcs.Npc5203Data.alias, 1, true)
end

function Quest74143:OnSubFinish7414301(arg1)
    print("OnSubFinish7414301")
end

function Quest74143:OnSubStart7414302(arg1)
    print("OnSubStart7414302")
    this:RequestInteraction(npcs.Npc21033Data.alias, "", true)
    this:NotifyTo(npcs.Npc5203Data.alias, 1, true)
end

function Quest74143:OnSubFinish7414302(arg1)
    print("OnSubFinish7414302")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc21033Data.alias)
    this:CallDelayByQuest("", 2, function(arg1)
        this:NotifyTo(npcs.Npc21033Data.alias, 1, true)
    end)
end

function Quest74143:OnSubStart7414303(arg1)
    print("OnSubStart7414303")
    this:CreateQuestNpc(arg1, npcs.Npc21034Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21172Data.id, 0)
    actorMgr:CreateActorWithPos("Q7414303Trigger", "Actor/Gadget/Q7414303Trigger", 70900002, 0, points.TPos_Q7414303Trigger.pos, points.TPos_Q7414303Trigger.rot, true, false, 3)
    this:NotifyTo(npcs.Npc5203Data.alias, 1, true)
    this:NotifyTo(npcs.Npc21033Data.alias, 1, true)
end

function Quest74143:OnSubFinish7414303(arg1)
    print("OnSubFinish7414303")
    this:NarratorOnlyTaskByData(datas.NarratorWithId, function(arg1)
        this:RequestInteraction(npcs.Npc21034Data.alias, "", true)
    end)
end

function Quest74143:OnSubStart7414304(arg1)
    print("OnSubStart7414304")
    this:NotifyTo(npcs.Npc5203Data.alias, 1, true)
    this:NotifyTo(npcs.Npc21033Data.alias, 1, true)
end

function Quest74143:OnSubFinish7414304(arg1)
    print("OnSubFinish7414304")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc21034Data.alias)
    this:NpcDestroyWithBlackscreen(3, npcs.Npc21172Data.alias)
    this:LightNotifyTo(npcs.Npc5203Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc21033Data.alias, 0, true)
end

return Quest74143
