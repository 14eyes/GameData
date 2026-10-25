require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76071 = class("Quest76071", QuestActorProxy)
Quest76071.defaultAlias = "Quest76071"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest76071:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest76071:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7607101"] = self.OnSubStart7607101,
        ["7607102"] = self.OnSubStart7607102,
        ["7607103"] = self.OnSubStart7607103,
        ["7607104"] = self.OnSubStart7607104,
        ["7607105"] = self.OnSubStart7607105
    }
end

function Quest76071:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7607101"] = self.OnSubFinish7607101,
        ["7607102"] = self.OnSubFinish7607102,
        ["7607103"] = self.OnSubFinish7607103,
        ["7607104"] = self.OnSubFinish7607104,
        ["7607105"] = self.OnSubFinish7607105
    }
end

function Quest76071:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest76071:Start()
    print("Start")
end

function Quest76071:OnDestroy()
    print("OnDestroy")
end

function Quest76071:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76071:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76071:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest76071:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest76071:NpcDestroyWithBlackscreen(arg1, arg2)
    globalActor:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "", false, true)
end

function Quest76071:OnSubStart7607101(arg1)
    print("OnSubStart7607101")
    this:CreateQuestNpc(arg1, npcs.Npc7621.id, 0, false, 0)
end

function Quest76071:OnSubFinish7607101(arg1)
    print("OnSubFinish7607101")
end

function Quest76071:OnSubStart7607102(arg1)
    print("OnSubStart7607102")
end

function Quest76071:OnSubFinish7607102(arg1)
    print("OnSubFinish7607102")
end

function Quest76071:OnSubStart7607103(arg1)
    print("OnSubStart7607103")
end

function Quest76071:OnSubFinish7607103(arg1)
    print("OnSubFinish7607103")
end

function Quest76071:OnSubStart7607104(arg1)
    print("OnSubStart7607104")
end

function Quest76071:OnSubFinish7607104(arg1)
    print("OnSubFinish7607104")
end

function Quest76071:OnSubStart7607105(arg1)
    print("OnSubStart7607105")
end

function Quest76071:OnSubFinish7607105(arg1)
    print("OnSubFinish7607105")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc7621.alias)
end

return Quest76071
