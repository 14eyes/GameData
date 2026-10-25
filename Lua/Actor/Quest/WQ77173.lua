require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest77173 = class("Quest77173", QuestActorProxy)
Quest77173.defaultAlias = "Quest77173"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest77173:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest77173:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7717301"] = self.OnSubStart7717301,
        ["7717302"] = self.OnSubStart7717302,
        ["7717304"] = self.OnSubStart7717304,
        ["7717303"] = self.OnSubStart7717303
    }
end

function Quest77173:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7717301"] = self.OnSubFinish7717301,
        ["7717302"] = self.OnSubFinish7717302,
        ["7717304"] = self.OnSubFinish7717304,
        ["7717303"] = self.OnSubFinish7717303
    }
end

function Quest77173:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest77173:Start()
    print("Start")
end

function Quest77173:OnDestroy()
    print("OnDestroy")
end

function Quest77173:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest77173:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest77173:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest77173:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest77173:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest77173:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest77173:OnSubStart7717301(arg1)
    print("OnSubStart7717301")
end

function Quest77173:OnSubFinish7717301(arg1)
    print("OnSubFinish7717301")
end

function Quest77173:OnSubStart7717302(arg1)
    print("OnSubStart7717302")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7717302, 0, 30, 2, npcs.Npc17333_1.id)
end

function Quest77173:OnSubFinish7717302(arg1)
    print("OnSubFinish7717302")
    this:NpcDestroyImmediately(1159, npcs.Npc17333_1.alias)
end

function Quest77173:OnSubStart7717304(arg1)
    print("OnSubStart7717304")
end

function Quest77173:OnSubFinish7717304(arg1)
    print("OnSubFinish7717304")
end

function Quest77173:OnSubStart7717303(arg1)
    print("OnSubStart7717303")
end

function Quest77173:OnSubFinish7717303(arg1)
    print("OnSubFinish7717303")
end

return Quest77173
