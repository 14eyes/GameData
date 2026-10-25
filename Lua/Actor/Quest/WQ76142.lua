require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76142 = class("Quest76142", QuestActorProxy)
Quest76142.defaultAlias = "Quest76142"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest76142:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest76142:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7614201"] = self.OnSubStart7614201,
        ["7614202"] = self.OnSubStart7614202,
        ["7614203"] = self.OnSubStart7614203,
        ["7614204"] = self.OnSubStart7614204,
        ["7614205"] = self.OnSubStart7614205,
        ["7614206"] = self.OnSubStart7614206,
        ["7614211"] = self.OnSubStart7614211,
        ["7614207"] = self.OnSubStart7614207,
        ["7614208"] = self.OnSubStart7614208,
        ["7614209"] = self.OnSubStart7614209,
        ["7614210"] = self.OnSubStart7614210
    }
end

function Quest76142:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7614201"] = self.OnSubFinish7614201,
        ["7614202"] = self.OnSubFinish7614202,
        ["7614203"] = self.OnSubFinish7614203,
        ["7614204"] = self.OnSubFinish7614204,
        ["7614205"] = self.OnSubFinish7614205,
        ["7614206"] = self.OnSubFinish7614206,
        ["7614211"] = self.OnSubFinish7614211,
        ["7614207"] = self.OnSubFinish7614207,
        ["7614208"] = self.OnSubFinish7614208,
        ["7614209"] = self.OnSubFinish7614209,
        ["7614210"] = self.OnSubFinish7614210
    }
end

function Quest76142:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest76142:Start()
    print("Start")
end

function Quest76142:OnDestroy()
    print("OnDestroy")
end

function Quest76142:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76142:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76142:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest76142:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
    this:ActorDestroy("Q7614203Trigger")
    this:ActorDestroy("Q7614206Trigger")
    this:ActorDestroy("Q7614209Trigger")
    this:ActorDestroy("Q7614211Trigger_rmd")
end

function Quest76142:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest76142:NpcDestroyWithDither(arg1, arg2)
    this:GetQuestNpcActor(arg2, 0):DestroyWithDitherEx(1)
    this:CallDelay(1, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end)
end

function Quest76142:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest76142:OnSubStart7614201(arg1)
    print("OnSubStart7614201")
    this:CreateQuestNpc(arg1, npcs.Npc22362.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc22362.alias, 76142):DoFreeStyle(1230, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc22363.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc22363.alias, 76142):DoFreeStyle(1170, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc22364.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc22364.alias, 76142):DoFreeStyle(1200, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc22365.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc22365.alias, 76142):DoFreeStyle(1120, true, nil, true, true, false, false)
end

function Quest76142:OnSubFinish7614201(arg1)
    print("OnSubFinish7614201")
    this:NpcDestroyWithDither(3, npcs.Npc22362.alias)
    this:NpcDestroyWithDither(3, npcs.Npc22363.alias)
    this:NpcDestroyWithDither(3, npcs.Npc22364.alias)
    this:NpcDestroyWithDither(3, npcs.Npc22365.alias)
end

function Quest76142:OnSubStart7614202(arg1)
    print("OnSubStart7614202")
end

function Quest76142:OnSubFinish7614202(arg1)
    print("OnSubFinish7614202")
    this:SetNavigationByMainId(76142, true)
end

function Quest76142:OnSubStart7614203(arg1)
    print("OnSubStart7614203")
    actorMgr:CreateActorWithPos("Q7614203Trigger", "Actor/Gadget/Q7614203Trigger", 70900002, 0, points._Q7614203TriggerPoint_.pos, points._Q7614203TriggerPoint_.rot, true, false, 3)
end

function Quest76142:OnSubFinish7614203(arg1)
    print("OnSubFinish7614203")
end

function Quest76142:OnSubStart7614204(arg1)
    print("OnSubStart7614204")
    this:CreateQuestNpc(arg1, npcs.Npc22362.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc22363.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc22364.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc22365.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc22366.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc22367.id, 0, false, 0)
    this:NpcCreateWithNpcTrigger(npcs.Npc7665.id, 0, 30, 7614204)
end

function Quest76142:OnSubFinish7614204(arg1)
    print("OnSubFinish7614204")
    this:SafeDestroyQuestNpc(npcs.Npc22362.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc22363.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc22364.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc22365.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc22366.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc22367.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc7665.alias, 3)
end

function Quest76142:OnSubStart7614205(arg1)
    print("OnSubStart7614205")
end

function Quest76142:OnSubFinish7614205(arg1)
    print("OnSubFinish7614205")
    this:QuestNarratorTask(datas.NarratorWithId_761429902, nil)
end

function Quest76142:OnSubStart7614206(arg1)
    print("OnSubStart7614206")
    actorMgr:CreateActorWithPos("Q7614206Trigger", "Actor/Gadget/Q7614206Trigger", 70900002, 0, points._Q7614206TriggerPoint_.pos, points._Q7614206TriggerPoint_.rot, true, false, 3)
end

function Quest76142:OnSubFinish7614206(arg1)
    print("OnSubFinish7614206")
end

function Quest76142:OnSubStart7614211(arg1)
    print("OnSubStart7614211")
    this:NpcCreateWithNpcTrigger(npcs.Npc22363.id, 0, 35, 7614211)
    this:CreateQuestNpc(arg1, npcs.Npc22366.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc22367.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc22364.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Q7614211Trigger_rmd", "Actor/Gadget/Q7614211Trigger_rmd", 70900002, 0, points._Q7614211Trigger_rmdPoint_.pos, points._Q7614211Trigger_rmdPoint_.rot, true, false, 3)
end

function Quest76142:OnSubFinish7614211(arg1)
    print("OnSubFinish7614211")
    this:SafeDestroyQuestNpc(npcs.Npc22363.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc22366.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc22367.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc22364.alias, 3)
end

function Quest76142:OnSubStart7614207(arg1)
    print("OnSubStart7614207")
end

function Quest76142:OnSubFinish7614207(arg1)
    print("OnSubFinish7614207")
end

function Quest76142:OnSubStart7614208(arg1)
    print("OnSubStart7614208")
    this:CreateQuestNpc(arg1, npcs.Paimon.id, 0, false, 0)
    this:RequestInteraction(npcs.Paimon.alias, "", true)
end

function Quest76142:OnSubFinish7614208(arg1)
    print("OnSubFinish7614208")
    this:SafeDestroyQuestNpc(npcs.Paimon.alias, 3)
end

function Quest76142:OnSubStart7614209(arg1)
    print("OnSubStart7614209")
    actorMgr:CreateActorWithPos("Q7614209Trigger", "Actor/Gadget/Q7614209Trigger", 70900002, 0, points._Q7614209TriggerPoint_.pos, points._Q7614209TriggerPoint_.rot, true, false, 3)
end

function Quest76142:OnSubFinish7614209(arg1)
    print("OnSubFinish7614209")
end

function Quest76142:OnSubStart7614210(arg1)
    print("OnSubStart7614210")
    this:CreateQuestNpc(arg1, npcs.Paimon.id, 0, false, 0)
    this:RequestInteraction(npcs.Paimon.alias, "", true)
end

function Quest76142:OnSubFinish7614210(arg1)
    print("OnSubFinish7614210")
    this:SafeDestroyQuestNpc(npcs.Paimon.alias, 3)
end

return Quest76142
