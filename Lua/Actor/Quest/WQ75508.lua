require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75508 = class("Quest75508", QuestActorProxy)
Quest75508.defaultAlias = "Quest75508"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs

function Quest75508:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
end

function Quest75508:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7550802"] = self.OnSubStart7550802, ["7550801"] = self.OnSubStart7550801}
end

function Quest75508:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7550802"] = self.OnSubFinish7550802, ["7550801"] = self.OnSubFinish7550801}
end

function Quest75508:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75508:Start()
    print("Start")
end

function Quest75508:OnDestroy()
    print("OnDestroy")
end

function Quest75508:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75508:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75508:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc1087.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1095.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1097.alias, 3)
    this:DestroyNpcTrigger("Q7550801N1087Trigger")
end

function Quest75508:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
end

function Quest75508:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest75508:OnSubStart7550802(arg1)
    print("OnSubStart7550802")
    this:QuestNarratorTask(datas.NarratorWithId, nil)
end

function Quest75508:OnSubFinish7550802(arg1)
    print("OnSubFinish7550802")
end

function Quest75508:OnSubStart7550801(arg1)
    print("OnSubStart7550801")
    this:NpcCreateWithNpcTrigger(npcs.Npc1087.id, 0, 15, 7550801)
    this:GetQuestNpcActor(npcs.Npc1087.alias, 75508):DoFreeStyle(1171, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc1095.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1095.alias, 75508):DoFreeStyle(1120, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc1097.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1097.alias, 75508):DoFreeStyle(1190, true, nil, true, true, false, false)
    actorUtils.FinishQuestID(false, 7550802)
end

function Quest75508:OnSubFinish7550801(arg1)
    print("OnSubFinish7550801")
    this:SafeDestroyQuestNpc(npcs.Npc1087.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1095.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1097.alias, 3)
    this:ClearNarratorTask()
    this:ActionSafeCall(function(arg1)
        this:ShowTutorialDialog(2157, nil)
    end)
end

return Quest75508
