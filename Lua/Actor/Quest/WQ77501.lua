require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest77501 = class("Quest77501", QuestActorProxy)
Quest77501.defaultAlias = "Quest77501"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs

function Quest77501:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
end

function Quest77501:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7750101"] = self.OnSubStart7750101,
        ["7750102"] = self.OnSubStart7750102,
        ["7750103"] = self.OnSubStart7750103
    }
end

function Quest77501:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7750101"] = self.OnSubFinish7750101,
        ["7750102"] = self.OnSubFinish7750102,
        ["7750103"] = self.OnSubFinish7750103
    }
end

function Quest77501:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest77501:Start()
    print("Start")
end

function Quest77501:OnDestroy()
    print("OnDestroy")
end

function Quest77501:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest77501:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest77501:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:DestroyNpcTrigger("Q7750102N16951Trigger")
    this:DestroyNpcTrigger("Q7750103N17027Trigger")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc16951.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc17027.alias, 3)
    this:BanCrowdNpc(3712, 29, nil, false, true)
    this:RecycleAllRes()
end

function Quest77501:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
    this:BanCrowdNpc(3712, 29, nil, false, true)
end

function Quest77501:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest77501:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest77501:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
    local n = 0.5
    if not arg6 then
        if not needLightUp then
            goto lbl_8
        end
    end

    n = 0
    ::lbl_8::
    this:CreateQuestNpcWithTriggerBlackEx("Q" .. arg4 .. "N" .. arg2 .. "Trigger", arg4, arg2, arg3, arg5, n, arg1, 0.5, 2)
end

function Quest77501:OnSubStart7750101(arg1)
    print("OnSubStart7750101")
    this:QuestNarratorTask(datas.NarratorWithId_7750101, nil)
    actorUtils.FinishQuestWithParam({false}, {7750101})
end

function Quest77501:OnSubFinish7750101(arg1)
    print("OnSubFinish7750101")
end

function Quest77501:OnSubStart7750102(arg1)
    print("OnSubStart7750102")
    this:NpcCreateWithNpcTrigger(npcs.Npc16951.id, 0, 15, 7750102)
    this:BanCrowdNpc(3712, 29, nil, true, true)
end

function Quest77501:OnSubFinish7750102(arg1)
    print("OnSubFinish7750102")
    this:NpcDestroyImmediately(3, npcs.Npc16951.alias)
    this:TransmitPlayerByData(arg1, 1, datas.transmit, nil, nil, nil)
    this:ClearNarratorTask()
    this:BanCrowdNpc(3712, 29, nil, false, true)
end

function Quest77501:OnSubStart7750103(arg1)
    print("OnSubStart7750103")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Npc17027.id, 0, 7750103, 40, true)
end

function Quest77501:OnSubFinish7750103(arg1)
    print("OnSubFinish7750103")
    this:NpcDestroyImmediately(3, npcs.Npc17027.alias)
    this:ActionSafeCall(function(arg1)
        actorUtils.ShowContext("RankedMatchMainPage", 0)
    end)
end

return Quest77501
