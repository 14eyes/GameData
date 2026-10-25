require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76078 = class("Quest76078", QuestActorProxy)
Quest76078.defaultAlias = "Quest76078"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest76078:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest76078:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7607801"] = self.OnSubStart7607801,
        ["7607802"] = self.OnSubStart7607802,
        ["7607803"] = self.OnSubStart7607803,
        ["7607804"] = self.OnSubStart7607804
    }
end

function Quest76078:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7607801"] = self.OnSubFinish7607801,
        ["7607802"] = self.OnSubFinish7607802,
        ["7607803"] = self.OnSubFinish7607803,
        ["7607804"] = self.OnSubFinish7607804
    }
end

function Quest76078:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest76078:Start()
    print("Start")
end

function Quest76078:OnDestroy()
    print("OnDestroy")
end

function Quest76078:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76078:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76078:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest76078:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest76078:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest76078:OnSubStart7607801(arg1)
    print("OnSubStart7607801")
end

function Quest76078:OnSubFinish7607801(arg1)
    print("OnSubFinish7607801")
end

function Quest76078:OnSubStart7607802(arg1)
    print("OnSubStart7607802")
    this:CreateQuestNpc(arg1, npcs.Npc22183.id, 0, false, 0)
end

function Quest76078:OnSubFinish7607802(arg1)
    print("OnSubFinish7607802")
    this:SafeDestroyQuestNpc(npcs.Npc22183.alias, 3)
end

function Quest76078:OnSubStart7607803(arg1)
    print("OnSubStart7607803")
end

function Quest76078:OnSubFinish7607803(arg1)
    print("OnSubFinish7607803")
end

function Quest76078:OnSubStart7607804(arg1)
    print("OnSubStart7607804")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7607804, 0, 40, 0, npcs.Npc22183.id)
end

function Quest76078:OnSubFinish7607804(arg1)
    print("OnSubFinish7607804")
    this:SafeDestroyQuestNpc(npcs.Npc22183.alias, 3)
end

return Quest76078
