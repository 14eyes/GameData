require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest77213 = class("Quest77213", QuestActorProxy)
Quest77213.defaultAlias = "Quest77213"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest77213:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest77213:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7721301"] = self.OnSubStart7721301,
        ["7721308"] = self.OnSubStart7721308,
        ["7721302"] = self.OnSubStart7721302,
        ["7721303"] = self.OnSubStart7721303,
        ["7721304"] = self.OnSubStart7721304,
        ["7721305"] = self.OnSubStart7721305,
        ["7721309"] = self.OnSubStart7721309,
        ["7721306"] = self.OnSubStart7721306,
        ["7721307"] = self.OnSubStart7721307
    }
end

function Quest77213:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7721301"] = self.OnSubFinish7721301,
        ["7721308"] = self.OnSubFinish7721308,
        ["7721302"] = self.OnSubFinish7721302,
        ["7721303"] = self.OnSubFinish7721303,
        ["7721304"] = self.OnSubFinish7721304,
        ["7721305"] = self.OnSubFinish7721305,
        ["7721309"] = self.OnSubFinish7721309,
        ["7721306"] = self.OnSubFinish7721306,
        ["7721307"] = self.OnSubFinish7721307
    }
end

function Quest77213:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7721302"] = self.OnSubFailed7721302, ["7721305"] = self.OnSubFailed7721305}
end

function Quest77213:Start()
    print("Start")
end

function Quest77213:OnDestroy()
    print("OnDestroy")
end

function Quest77213:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest77213:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest77213:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest77213:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest77213:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest77213:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest77213:OnSubStart7721301(arg1)
    print("OnSubStart7721301")
    this:CreateQuestNpc(arg1, npcs.Npc22504.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc22504.alias, 77213):DoFreeStyle(1190, true, nil, true, true, false, false)
end

function Quest77213:OnSubFinish7721301(arg1)
    print("OnSubFinish7721301")
end

function Quest77213:OnSubStart7721308(arg1)
    print("OnSubStart7721308")
    this:CreateQuestNpc(arg1, npcs.Npc22504.id, 0, false, 0)
end

function Quest77213:OnSubFinish7721308(arg1)
    print("OnSubFinish7721308")
    this:NpcDestroyImmediately(3, npcs.Npc22504.alias)
end

function Quest77213:OnSubStart7721302(arg1)
    print("OnSubStart7721302")
    this:CreateQuestNpc(arg1, npcs.Npc22504.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc22504.alias, 77213):DoFreeStyle(8010, true, nil, true, true, false, false)
end

function Quest77213:OnSubFinish7721302(arg1)
    print("OnSubFinish7721302")
    this:NpcDestroyImmediately(3, npcs.Npc22504.alias)
end

function Quest77213:OnSubFailed7721302(arg1)
    print("OnSubFailed7721302")
    this:RecycleAllRes()
end

function Quest77213:OnSubStart7721303(arg1)
    print("OnSubStart7721303")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7721303, 0, 50, 0.5, npcs.Npc22504.id)
end

function Quest77213:OnSubFinish7721303(arg1)
    print("OnSubFinish7721303")
end

function Quest77213:OnSubStart7721304(arg1)
    print("OnSubStart7721304")
    this:CreateQuestNpc(arg1, npcs.Npc22504.id, 0, false, 0)
end

function Quest77213:OnSubFinish7721304(arg1)
    print("OnSubFinish7721304")
end

function Quest77213:OnSubStart7721305(arg1)
    print("OnSubStart7721305")
    this:CreateQuestNpc(arg1, npcs.Npc22504.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc22504.alias, 77213):DoFreeStyle(8010, true, nil, true, true, false, false)
end

function Quest77213:OnSubFinish7721305(arg1)
    print("OnSubFinish7721305")
    this:NpcDestroyImmediately(3, npcs.Npc22504.alias)
end

function Quest77213:OnSubFailed7721305(arg1)
    print("OnSubFailed7721305")
    this:RecycleAllRes()
end

function Quest77213:OnSubStart7721309(arg1)
    print("OnSubStart7721309")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7721309, 0, 30, 0.5, npcs.Npc22504.id)
end

function Quest77213:OnSubFinish7721309(arg1)
    print("OnSubFinish7721309")
    this:NpcDestroyImmediately(3, npcs.Npc22504.alias)
end

function Quest77213:OnSubStart7721306(arg1)
    print("OnSubStart7721306")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7721306, 0, 50, 0.5, npcs.Npc22504.id)
    this:GetQuestNpcActor(npcs.Npc22504.alias, 77213):DoFreeStyle(4200, true, nil, true, true, false, false)
end

function Quest77213:OnSubFinish7721306(arg1)
    print("OnSubFinish7721306")
    this:NpcDestroyImmediately(3, npcs.Npc22504.alias)
end

function Quest77213:OnSubStart7721307(arg1)
    print("OnSubStart7721307")
    this:CreateQuestNpc(arg1, npcs.Npc22504.id, 0, false, 0)
end

function Quest77213:OnSubFinish7721307(arg1)
    print("OnSubFinish7721307")
    this:NpcDestroyImmediately(3, npcs.Npc22504.alias)
end

return Quest77213
