require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76672 = class("Quest76672", QuestActorProxy)
Quest76672.defaultAlias = "Quest76672"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs

function Quest76672:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
end

function Quest76672:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7667201"] = self.OnSubStart7667201, ["7667202"] = self.OnSubStart7667202}
end

function Quest76672:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7667201"] = self.OnSubFinish7667201, ["7667202"] = self.OnSubFinish7667202}
end

function Quest76672:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest76672:Start()
    print("Start")
end

function Quest76672:OnDestroy()
    print("OnDestroy")
end

function Quest76672:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76672:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76672:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest76672:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest76672:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest76672:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
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

function Quest76672:OnSubStart7667201(arg1)
    print("OnSubStart7667201")
    this:NpcCreateWithNpcTrigger(npcs.Npc1324.id, 0, 10, 7667201)
end

function Quest76672:OnSubFinish7667201(arg1)
    print("OnSubFinish7667201")
    this:SafeDestroyQuestNpc(npcs.Npc1324.alias, 3)
    this:TransmitPlayerByData(arg1, 1, datas.TransmitData, nil, nil, nil)
end

function Quest76672:OnSubStart7667202(arg1)
    print("OnSubStart7667202")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(2, npcs.Npc15526_1.id, 0, 7667202, 10, true)
end

function Quest76672:OnSubFinish7667202(arg1)
    print("OnSubFinish7667202")
    this:SafeDestroyQuestNpc(npcs.Npc15526_1.alias, 3)
end

return Quest76672
