require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75013 = class("Quest75013", QuestActorProxy)
Quest75013.defaultAlias = "Quest75013"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points

function Quest75013:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest75013:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7501307"] = self.OnSubStart7501307,
        ["7501308"] = self.OnSubStart7501308,
        ["7501309"] = self.OnSubStart7501309,
        ["7501304"] = self.OnSubStart7501304,
        ["7501301"] = self.OnSubStart7501301,
        ["7501302"] = self.OnSubStart7501302,
        ["7501311"] = self.OnSubStart7501311,
        ["7501306"] = self.OnSubStart7501306,
        ["7501303"] = self.OnSubStart7501303,
        ["7501310"] = self.OnSubStart7501310
    }
end

function Quest75013:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7501307"] = self.OnSubFinish7501307,
        ["7501308"] = self.OnSubFinish7501308,
        ["7501309"] = self.OnSubFinish7501309,
        ["7501304"] = self.OnSubFinish7501304,
        ["7501301"] = self.OnSubFinish7501301,
        ["7501302"] = self.OnSubFinish7501302,
        ["7501311"] = self.OnSubFinish7501311,
        ["7501306"] = self.OnSubFinish7501306,
        ["7501303"] = self.OnSubFinish7501303,
        ["7501310"] = self.OnSubFinish7501310
    }
end

function Quest75013:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75013:Start()
    print("Start")
end

function Quest75013:OnDestroy()
    print("OnDestroy")
end

function Quest75013:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75013:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75013:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest75013:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, 2)
end

function Quest75013:OnSubStart7501307(arg1)
    print("OnSubStart7501307")
end

function Quest75013:OnSubFinish7501307(arg1)
    print("OnSubFinish7501307")
end

function Quest75013:OnSubStart7501308(arg1)
    print("OnSubStart7501308")
end

function Quest75013:OnSubFinish7501308(arg1)
    print("OnSubFinish7501308")
end

function Quest75013:OnSubStart7501309(arg1)
    print("OnSubStart7501309")
end

function Quest75013:OnSubFinish7501309(arg1)
    print("OnSubFinish7501309")
end

function Quest75013:OnSubStart7501304(arg1)
    print("OnSubStart7501304")
    this:CreateQuestNpc(arg1, npcs.Npc21519Data.id, 0, false, 0)
end

function Quest75013:OnSubFinish7501304(arg1)
    print("OnSubFinish7501304")
end

function Quest75013:OnSubStart7501301(arg1)
    print("OnSubStart7501301")
    this:NpcCreateWithNpcTrigger(npcs.Npc21519Data.id, 7501301, 0, 30)
    actorMgr:CreateActorWithPos("Q7501301Trigger", "Actor/Gadget/Q7501301Trigger", 70900002, 0, points.TPos_Q7501301Trigger.pos, points.TPos_Q7501301Trigger.rot, true, false, 3)
end

function Quest75013:OnSubFinish7501301(arg1)
    print("OnSubFinish7501301")
    this:SafeDestroyQuestNpc(npcs.Npc21519Data.alias, 3)
end

function Quest75013:OnSubStart7501302(arg1)
    print("OnSubStart7501302")
end

function Quest75013:OnSubFinish7501302(arg1)
    print("OnSubFinish7501302")
end

function Quest75013:OnSubStart7501311(arg1)
    print("OnSubStart7501311")
    this:NpcCreateWithNpcTrigger(npcs.Npc21520Data.id, 7501311, 0, 50)
end

function Quest75013:OnSubFinish7501311(arg1)
    print("OnSubFinish7501311")
    this:SafeDestroyQuestNpc(npcs.Npc21520Data.alias, 3)
end

function Quest75013:OnSubStart7501306(arg1)
    print("OnSubStart7501306")
    this:CreateQuestNpc(arg1, npcs.Npc21521Data.id, 0, false, 0)
end

function Quest75013:OnSubFinish7501306(arg1)
    print("OnSubFinish7501306")
end

function Quest75013:OnSubStart7501303(arg1)
    print("OnSubStart7501303")
    this:NpcCreateWithNpcTrigger(npcs.Npc21521Data.id, 7501303, 0, 30)
    actorMgr:CreateActorWithPos("Q7501303Trigger", "Actor/Gadget/Q7501303Trigger", 70900002, 0, points.TPos_Q7501303Trigger.pos, points.TPos_Q7501303Trigger.rot, true, false, 3)
end

function Quest75013:OnSubFinish7501303(arg1)
    print("OnSubFinish7501303")
    this:SafeDestroyQuestNpc(npcs.Npc21521Data.alias, 3)
end

function Quest75013:OnSubStart7501310(arg1)
    print("OnSubStart7501310")
    this:CreateQuestNpc(arg1, npcs.Npc21636Data.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc21636Data.alias):DoFreeStyle(7, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc21655Data.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21639Data.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc21639Data.alias):DoFreeStyle(6, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc21562Data.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21635Data.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21662Data.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21663Data.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21638Data.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc21638Data.alias):DoFreeStyle(6, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc21664Data.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21666Data.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc21666Data.alias):DoFreeStyle(6, true, nil, true, true, false, false)
end

function Quest75013:OnSubFinish7501310(arg1)
    print("OnSubFinish7501310")
    this:SafeDestroyQuestNpc(npcs.Npc21636Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21655Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21639Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21562Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21635Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21662Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21663Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21638Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21664Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21666Data.alias, 3)
end

return Quest75013
