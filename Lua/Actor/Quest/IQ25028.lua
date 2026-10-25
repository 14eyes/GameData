require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest25028 = class("Quest25028", QuestActorProxy)
Quest25028.defaultAlias = "Quest25028"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest25028:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest25028:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["2502811"] = self.OnSubStart2502811,
        ["2502807"] = self.OnSubStart2502807,
        ["2502808"] = self.OnSubStart2502808,
        ["2502809"] = self.OnSubStart2502809,
        ["2502804"] = self.OnSubStart2502804,
        ["2502801"] = self.OnSubStart2502801,
        ["2502810"] = self.OnSubStart2502810,
        ["2502802"] = self.OnSubStart2502802,
        ["2502803"] = self.OnSubStart2502803,
        ["2502805"] = self.OnSubStart2502805,
        ["2502806"] = self.OnSubStart2502806
    }
end

function Quest25028:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["2502811"] = self.OnSubFinish2502811,
        ["2502807"] = self.OnSubFinish2502807,
        ["2502808"] = self.OnSubFinish2502808,
        ["2502809"] = self.OnSubFinish2502809,
        ["2502804"] = self.OnSubFinish2502804,
        ["2502801"] = self.OnSubFinish2502801,
        ["2502810"] = self.OnSubFinish2502810,
        ["2502802"] = self.OnSubFinish2502802,
        ["2502803"] = self.OnSubFinish2502803,
        ["2502805"] = self.OnSubFinish2502805,
        ["2502806"] = self.OnSubFinish2502806
    }
end

function Quest25028:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["2502809"] = self.OnSubFailed2502809, ["2502803"] = self.OnSubFailed2502803}
end

function Quest25028:Start()
    print("Start")
end

function Quest25028:OnDestroy()
    print("OnDestroy")
end

function Quest25028:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest25028:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest25028:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc14424.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14324.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc6068.alias, 3)
    this:ActorDestroy("Q2502810Trigger")
    this:ActorDestroy("Q2502808Trigger")
    this:DestroyNpcTrigger("Q2502805N14424Trigger")
    this:CancelStoryByQuest(152502800)
end

function Quest25028:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest25028:NpcDestroyWithDither(arg1, arg2)
    this:GetQuestNpcActor(arg2, 0):DestroyWithDitherEx(1)
    this:CallDelay(1, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end)
end

function Quest25028:NpcDestroyWithBlackscreen(arg1, arg2)
    globalActor:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "", false, true)
end

function Quest25028:CallDelayNpcCreateWithNpcTriggerAndBlack(arg1, arg2, arg3, arg4, arg5)
    this:CallDelay(2, function(arg1_2)
        this:CreateQuestNpcWithTriggerBlackEx("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, 0.5, arg4, 0.5, 2)
    end)
end

function Quest25028:OnSubStart2502811(arg1)
    print("OnSubStart2502811")
    actorUtils.FinishQuestID(false, 2502811)
end

function Quest25028:OnSubFinish2502811(arg1)
    print("OnSubFinish2502811")
end

function Quest25028:OnSubStart2502807(arg1)
    print("OnSubStart2502807")
    this:CreateQuestNpc(arg1, npcs.Npc14424.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc6068.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc14424.alias, 25028):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc6068.alias, 25028):DisableInteeHeadCtrl(true)
end

function Quest25028:OnSubFinish2502807(arg1)
    print("OnSubFinish2502807")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc14424.alias)
end

function Quest25028:OnSubStart2502808(arg1)
    print("OnSubStart2502808")
    actorMgr:CreateActorWithPos("Q2502808Trigger", "Actor/Gadget/Q2502808Trigger", 70900002, 0, points._Q2502808TriggerPoint_.pos, points._Q2502808TriggerPoint_.rot, true, false, 3)
end

function Quest25028:OnSubFinish2502808(arg1)
    print("OnSubFinish2502808")
    this:ActorDestroy("Q2502808Trigger")
end

function Quest25028:OnSubStart2502809(arg1)
    print("OnSubStart2502809")
end

function Quest25028:OnSubFinish2502809(arg1)
    print("OnSubFinish2502809")
end

function Quest25028:OnSubFailed2502809(arg1)
    print("OnSubFailed2502809")
    this:QuestNarratorTask(datas.NarratorWithId_2502802, nil)
end

function Quest25028:OnSubStart2502804(arg1)
    print("OnSubStart2502804")
end

function Quest25028:OnSubFinish2502804(arg1)
    print("OnSubFinish2502804")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc6068.alias)
    this:ClearNarratorTask()
end

function Quest25028:OnSubStart2502801(arg1)
    print("OnSubStart2502801")
    this:CreateQuestNpc(arg1, npcs.Npc6068.id, 0, false, 0)
end

function Quest25028:OnSubFinish2502801(arg1)
    print("OnSubFinish2502801")
end

function Quest25028:OnSubStart2502810(arg1)
    print("OnSubStart2502810")
    this:CreateQuestNpc(arg1, npcs.Npc14324.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc14424.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc14324.alias, 25028):DoFreeStyle(1230, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc14424.alias, 25028):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc14324.alias, 25028):DisableInteeHeadCtrl(true)
    actorMgr:CreateActorWithPos("Q2502810Trigger", "Actor/Gadget/Q2502810Trigger", 70900002, 0, points._Q2502810TriggerPoint_.pos, points._Q2502810TriggerPoint_.rot, true, false, 3)
    this:DeployStoryByQuest(152502800)
end

function Quest25028:OnSubFinish2502810(arg1)
    print("OnSubFinish2502810")
    this:SafeDestroyQuestNpc(npcs.Npc14324.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14424.alias, 3)
    this:CancelStoryByQuest(152502800)
end

function Quest25028:OnSubStart2502802(arg1)
    print("OnSubStart2502802")
end

function Quest25028:OnSubFinish2502802(arg1)
    print("OnSubFinish2502802")
end

function Quest25028:OnSubStart2502803(arg1)
    print("OnSubStart2502803")
end

function Quest25028:OnSubFinish2502803(arg1)
    print("OnSubFinish2502803")
    this:SafeDestroyQuestNpc(npcs.Npc14431.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14432.alias, 3)
end

function Quest25028:OnSubFailed2502803(arg1)
    print("OnSubFailed2502803")
    this:NpcDestroyWithDither(3, npcs.Npc14431.alias)
    this:NpcDestroyWithDither(3, npcs.Npc14432.alias)
    this:QuestNarratorTask(datas.NarratorWithId_2502802, nil)
end

function Quest25028:OnSubStart2502805(arg1)
    print("OnSubStart2502805")
    this:CallDelayNpcCreateWithNpcTriggerAndBlack(2502805, 0, 20, 1, npcs.Npc14424.id)
end

function Quest25028:OnSubFinish2502805(arg1)
    print("OnSubFinish2502805")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc14424.alias)
    this:ClearNarratorTask()
end

function Quest25028:OnSubStart2502806(arg1)
    print("OnSubStart2502806")
end

function Quest25028:OnSubFinish2502806(arg1)
    print("OnSubFinish2502806")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc6068.alias)
end

return Quest25028
