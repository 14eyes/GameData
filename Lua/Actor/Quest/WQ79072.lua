require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest79072 = class("Quest79072", QuestActorProxy)
Quest79072.defaultAlias = "Quest79072"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest79072:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest79072:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7907201"] = self.OnSubStart7907201}
end

function Quest79072:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7907201"] = self.OnSubFinish7907201}
end

function Quest79072:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7907201"] = self.OnSubFailed7907201}
end

function Quest79072:Start()
    print("Start")
end

function Quest79072:OnDestroy()
    print("OnDestroy")
end

function Quest79072:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest79072:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest79072:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:SafeDestroyQuestNpc(npcs.Npc30603.alias, 100)
end

function Quest79072:NpcDestroyWithBlackscreen(arg1, arg2)
    globalActor:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg1, arg2)
    end, nil, nil, "", false, true)
end

function Quest79072:OnSubStart7907201(arg1)
    print("OnSubStart7907201")
    this:CreateQuestNpc(arg1, npcs.Npc30603.id, 0, false, 0)
end

function Quest79072:OnSubFinish7907201(arg1)
    print("OnSubFinish7907201")
    this:ShowBlackScreenWithDialogText(0.5, 1, 0.5, function(arg1)
        this:NpcDestroyWithBlackscreen(npcs.Npc30603.alias, 100)
    end, function(arg1)
        this:ShowTutorialDialog(1834, nil)
    end, nil, 0, false, true)
end

function Quest79072:OnSubFailed7907201(arg1)
    print("OnSubFailed7907201")
end

return Quest79072
