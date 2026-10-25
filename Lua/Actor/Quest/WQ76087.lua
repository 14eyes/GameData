require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76087 = class("Quest76087", QuestActorProxy)
Quest76087.defaultAlias = "Quest76087"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs

function Quest76087:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
end

function Quest76087:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7608702"] = self.OnSubStart7608702,
        ["7608703"] = self.OnSubStart7608703,
        ["7608704"] = self.OnSubStart7608704
    }
end

function Quest76087:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7608702"] = self.OnSubFinish7608702,
        ["7608703"] = self.OnSubFinish7608703,
        ["7608704"] = self.OnSubFinish7608704
    }
end

function Quest76087:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest76087:Start()
    print("Start")
end

function Quest76087:OnDestroy()
    print("OnDestroy")
end

function Quest76087:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76087:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76087:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest76087:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
end

function Quest76087:NpcDestroyWithDither(arg1, arg2)
    this:GetQuestNpcActor(arg2, 0):DestroyWithDitherEx(1)
    this:CallDelay(1, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end)
end

function Quest76087:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest76087:OnSubStart7608702(arg1)
    print("OnSubStart7608702")
end

function Quest76087:OnSubFinish7608702(arg1)
    print("OnSubFinish7608702")
    this:QuestNarratorTask(datas.NarratorWithId7608701, nil)
end

function Quest76087:OnSubStart7608703(arg1)
    print("OnSubStart7608703")
    this:CreateQuestNpc(arg1, npcs.Npc7178.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc7178.alias, 76087):DoFreeStyle(5030, true, nil, true, true, false, false)
end

function Quest76087:OnSubFinish7608703(arg1)
    print("OnSubFinish7608703")
    this:NpcDestroyWithDither(3, npcs.Npc7178.alias)
    this:TransmitPlayerWithDialogTextById(arg1, 1, datas.DialogIdsData, 1, nil, nil, nil)
end

function Quest76087:OnSubStart7608704(arg1)
    print("OnSubStart7608704")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7608704, 0, 10, 2, npcs.Npc7178.id)
end

function Quest76087:OnSubFinish7608704(arg1)
    print("OnSubFinish7608704")
    this:SafeDestroyQuestNpc(npcs.Npc7178.alias, 3)
    this:CancelStoryByQuest(117608700)
end

return Quest76087
