require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76213 = class("Quest76213", QuestActorProxy)
Quest76213.defaultAlias = "Quest76213"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest76213:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest76213:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7621302"] = self.OnSubStart7621302,
        ["7621303"] = self.OnSubStart7621303,
        ["7621304"] = self.OnSubStart7621304
    }
end

function Quest76213:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7621302"] = self.OnSubFinish7621302,
        ["7621303"] = self.OnSubFinish7621303,
        ["7621304"] = self.OnSubFinish7621304
    }
end

function Quest76213:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest76213:Start()
    print("Start")
end

function Quest76213:OnDestroy()
    print("OnDestroy")
end

function Quest76213:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76213:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76213:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest76213:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest76213:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest76213:NpcDestroyWithDither(arg1, arg2)
    this:GetQuestNpcActor(arg2, 0):DestroyWithDitherEx(1)
    this:CallDelay(1, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end)
end

function Quest76213:OnSubStart7621302(arg1)
    print("OnSubStart7621302")
    this:NpcCreateWithNpcTrigger(npcs.Npc7735.id, 0, 4, 7621302)
end

function Quest76213:OnSubFinish7621302(arg1)
    print("OnSubFinish7621302")
end

function Quest76213:OnSubStart7621303(arg1)
    print("OnSubStart7621303")
end

function Quest76213:OnSubFinish7621303(arg1)
    print("OnSubFinish7621303")
end

function Quest76213:OnSubStart7621304(arg1)
    print("OnSubStart7621304")
end

function Quest76213:OnSubFinish7621304(arg1)
    print("OnSubFinish7621304")
    this:NpcDestroyWithDither(103, npcs.Npc7735.alias)
end

return Quest76213
