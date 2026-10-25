require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75113 = class("Quest75113", QuestActorProxy)
Quest75113.defaultAlias = "Quest75113"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs

function Quest75113:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
end

function Quest75113:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7511301"] = self.OnSubStart7511301,
        ["7511302"] = self.OnSubStart7511302,
        ["7511303"] = self.OnSubStart7511303
    }
end

function Quest75113:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7511301"] = self.OnSubFinish7511301,
        ["7511302"] = self.OnSubFinish7511302,
        ["7511303"] = self.OnSubFinish7511303
    }
end

function Quest75113:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75113:Start()
    print("Start")
end

function Quest75113:OnDestroy()
    print("OnDestroy")
end

function Quest75113:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75113:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75113:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest75113:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest75113:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
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

function Quest75113:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest75113:OnSubStart7511301(arg1)
    print("OnSubStart7511301")
    this:CreateQuestNpc(arg1, npcs.Npc6423.id, 0, false, 0)
end

function Quest75113:OnSubFinish7511301(arg1)
    print("OnSubFinish7511301")
end

function Quest75113:OnSubStart7511302(arg1)
    print("OnSubStart7511302")
end

function Quest75113:OnSubFinish7511302(arg1)
    print("OnSubFinish7511302")
    this:TransmitPlayerByData(arg1, 2, datas.TransmitData_1, nil, nil, nil)
end

function Quest75113:OnSubStart7511303(arg1)
    print("OnSubStart7511303")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(3, npcs.Npc6423.id, 0, 7511303, 50, true)
end

function Quest75113:OnSubFinish7511303(arg1)
    print("OnSubFinish7511303")
    this:NpcDestroyImmediately(3, npcs.Npc6423.alias)
end

return Quest75113
