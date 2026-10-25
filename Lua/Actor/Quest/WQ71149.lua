require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71149 = class("Quest71149", QuestActorProxy)
Quest71149.defaultAlias = "Quest71149"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest71149:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest71149:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7114901"] = self.OnSubStart7114901}
end

function Quest71149:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7114901"] = self.OnSubFinish7114901}
end

function Quest71149:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest71149:Start()
    print("Start")
end

function Quest71149:OnDestroy()
    print("OnDestroy")
end

function Quest71149:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71149:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71149:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc30924.alias, 3)
    this:ActorDestroy("Q7114904Trigger_PaimengKC")
end

function Quest71149:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
    this:ActorDestroy("Q7114904Trigger_PaimengKC")
end

function Quest71149:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest71149:NpcDestroyWithBlackscreen(arg1, arg2)
    globalActor:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "", false, true)
end

function Quest71149:OnSubStart7114901(arg1)
    print("OnSubStart7114901")
    this:CreateQuestNpc(arg1, npcs.Npc30924.id, 0, false, 0)
end

function Quest71149:OnSubFinish7114901(arg1)
    print("OnSubFinish7114901")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc30924.alias)
end

return Quest71149
