require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75243 = class("Quest75243", QuestActorProxy)
Quest75243.defaultAlias = "Quest75243"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest75243:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest75243:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7524301"] = self.OnSubStart7524301,
        ["7524302"] = self.OnSubStart7524302,
        ["7524303"] = self.OnSubStart7524303,
        ["7524304"] = self.OnSubStart7524304
    }
end

function Quest75243:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7524301"] = self.OnSubFinish7524301,
        ["7524302"] = self.OnSubFinish7524302,
        ["7524303"] = self.OnSubFinish7524303,
        ["7524304"] = self.OnSubFinish7524304
    }
end

function Quest75243:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75243:Start()
    print("Start")
end

function Quest75243:OnDestroy()
    print("OnDestroy")
end

function Quest75243:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75243:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75243:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest75243:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest75243:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest75243:OnSubStart7524301(arg1)
    print("OnSubStart7524301")
    this:CreateQuestNpc(arg1, npcs.Npc6588.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc6588.alias, 75243):DoFreeStyle(4290, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc6575.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc6575.alias, 75243):DoFreeStyle(3, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc6576.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc6576.alias, 75243):DoFreeStyle(5, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc6577.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc6577.alias, 75243):DoFreeStyle(3, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc6579.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc6579.alias, 75243):DoFreeStyle(1, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc6580.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc6580.alias, 75243):DoFreeStyle(1, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc6581.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc6581.alias, 75243):DoFreeStyle(5, true, nil, true, true, false, false)
end

function Quest75243:OnSubFinish7524301(arg1)
    print("OnSubFinish7524301")
    this:TransmitPlayerById(arg1, 1, nil, nil, nil)
end

function Quest75243:OnSubStart7524302(arg1)
    print("OnSubStart7524302")
    this:NpcCreateWithNpcTrigger(npcs.Npc6588.id, 0, 10, 7524302)
    this:GetQuestNpcActor(npcs.Npc6588.alias, 75243):DoFreeStyle(4210, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc6575.alias, 75243):DoFreeStyle(3, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc6576.alias, 75243):DoFreeStyle(5, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc6577.alias, 75243):DoFreeStyle(3, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc6579.alias, 75243):DoFreeStyle(1, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc6580.alias, 75243):DoFreeStyle(1, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc6581.alias, 75243):DoFreeStyle(5, true, nil, true, true, false, false)
end

function Quest75243:OnSubFinish7524302(arg1)
    print("OnSubFinish7524302")
end

function Quest75243:OnSubStart7524303(arg1)
    print("OnSubStart7524303")
    this:CreateQuestNpc(arg1, npcs.Npc6588.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc6588.alias, 75243):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc6575.alias, 75243):DoFreeStyle(3, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc6576.alias, 75243):DoFreeStyle(5, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc6577.alias, 75243):DoFreeStyle(3, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc6579.alias, 75243):DoFreeStyle(1, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc6580.alias, 75243):DoFreeStyle(1, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc6581.alias, 75243):DoFreeStyle(5, true, nil, true, true, false, false)
end

function Quest75243:OnSubFinish7524303(arg1)
    print("OnSubFinish7524303")
    this:SafeDestroyQuestNpc(npcs.Npc6588.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc6575.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc6576.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc6577.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc6579.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc6580.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc6581.alias, 3)
end

function Quest75243:OnSubStart7524304(arg1)
    print("OnSubStart7524304")
end

function Quest75243:OnSubFinish7524304(arg1)
    print("OnSubFinish7524304")
end

return Quest75243
