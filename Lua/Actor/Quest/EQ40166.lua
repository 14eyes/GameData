require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40166 = class("Quest40166", QuestActorProxy)
Quest40166.defaultAlias = "Quest40166"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs

function Quest40166:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
end

function Quest40166:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4016602"] = self.OnSubStart4016602,
        ["4016603"] = self.OnSubStart4016603,
        ["4016604"] = self.OnSubStart4016604,
        ["4016605"] = self.OnSubStart4016605
    }
end

function Quest40166:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4016602"] = self.OnSubFinish4016602,
        ["4016603"] = self.OnSubFinish4016603,
        ["4016604"] = self.OnSubFinish4016604,
        ["4016605"] = self.OnSubFinish4016605
    }
end

function Quest40166:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest40166:Start()
    print("Start")
end

function Quest40166:OnDestroy()
    print("OnDestroy")
end

function Quest40166:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest40166:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest40166:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc1050.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1059.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1051.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1052.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1055.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14700.alias, 3)
    this:DestroyNpcTrigger("Q4016602N1050Trigger")
    this:DestroyNpcTrigger("Q4016603N1059Trigger")
    this:DestroyNpcTrigger("Q4016604N1059Trigger")
    this:DestroyNpcTrigger("Q4016605N1055Trigger")
    this:RemoveLocalGadget(73013022, "1")
    this:BanCrowdNpc(3304, 11, datas.CrowdId_4016602, false)
end

function Quest40166:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 4016604 then
        this:RemoveLocalGadget(73013022, "1")
    end
end

function Quest40166:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest40166:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest40166:OnSubStart4016602(arg1)
    print("OnSubStart4016602")
    this:NpcCreateWithNpcTrigger(npcs.Npc1050.id, 0, 15, 4016602)
    this:CreateQuestNpc(arg1, npcs.Npc1059.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1051.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1052.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1052.alias, 40166):DoFreeStyle(1230, true, nil, true, true, false, false)
    if sceneData.currSceneID ~= 20238 then
        if this:GetQuestVar(4016602, 1) == 0 then
            this:QuestNarratorTask(datas.NarratorWithId1, function(arg1)
                this:SetQuestVarByMainId(1, 1)
            end)
        end
    end

    this:BanCrowdNpc(3304, 11, datas.CrowdId_4016602, true)
end

function Quest40166:OnSubFinish4016602(arg1)
    print("OnSubFinish4016602")
    this:SafeDestroyQuestNpc(npcs.Npc1050.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1059.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1051.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1052.alias, 3)
    this:ClearNarratorTask()
    this:ActionSafeCall(function(arg1)
        actorUtils.ShowContext("SumeruBirthMainPage", 0)
    end)

    this:BanCrowdNpc(3304, 11, datas.CrowdId_4016602, false)
end

function Quest40166:OnSubStart4016603(arg1)
    print("OnSubStart4016603")
    this:NpcCreateWithNpcTriggerAndBlackscreen(4016603, 0, 10, 1, npcs.Npc1059.id)
end

function Quest40166:OnSubFinish4016603(arg1)
    print("OnSubFinish4016603")
    this:SafeDestroyQuestNpc(npcs.Npc1059.alias, 3)
end

function Quest40166:OnSubStart4016604(arg1)
    print("OnSubStart4016604")
    this:NpcCreateWithNpcTriggerAndBlackscreen(4016604, 0, 8, 1, npcs.Npc1059.id)
    this:CreateLocalGadget(73013022, "1", {x = -1975.21, y = 206.327, z = 2568.482}, {x = 0, y = 271.501, z = 0}, 3, nil, nil, false, 0, true)
end

function Quest40166:OnSubFinish4016604(arg1)
    print("OnSubFinish4016604")
    this:SafeDestroyQuestNpc(npcs.Npc1059.alias, 3)
    this:RemoveLocalGadget(73013022, "1")
end

function Quest40166:OnSubStart4016605(arg1)
    print("OnSubStart4016605")
    this:NpcCreateWithNpcTrigger(npcs.Npc1055.id, 0, 17, 4016605)
    this:GetQuestNpcActor(npcs.Npc1055.alias, 40166):DoFreeStyle(1030, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc14700.id, 0, false, 0)
end

function Quest40166:OnSubFinish4016605(arg1)
    print("OnSubFinish4016605")
    this:SafeDestroyQuestNpc(npcs.Npc1055.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14700.alias, 3)
    this:ActionSafeCall(function(arg1)
        actorUtils.ShowContext("ChapterCompleteDialog", 10207)
    end)
end

return Quest40166
