require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest79073 = class("Quest79073", QuestActorProxy)
Quest79073.defaultAlias = "Quest79073"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest79073:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest79073:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7907301"] = self.OnSubStart7907301}
end

function Quest79073:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7907301"] = self.OnSubFinish7907301}
end

function Quest79073:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7907301"] = self.OnSubFailed7907301}
end

function Quest79073:Start()
    print("Start")
end

function Quest79073:OnDestroy()
    print("OnDestroy")
end

function Quest79073:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest79073:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest79073:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:SafeDestroyQuestNpc(npcs.Npc30604.alias, 100)
end

function Quest79073:NpcDestroyWithBlackscreen(arg1, arg2)
    globalActor:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg1, arg2)
    end, nil, nil, "", false, true)
end

function Quest79073:OnSubStart7907301(arg1)
    print("OnSubStart7907301")
    this:CreateQuestNpc(arg1, npcs.Npc30604.id, 0, false, 0)
end

function Quest79073:OnSubFinish7907301(arg1)
    print("OnSubFinish7907301")
    this:ShowBlackScreenWithDialogText(0.5, 1, 0.5, function(arg1)
        this:NpcDestroyWithBlackscreen(npcs.Npc30604.alias, 100)
    end, function(arg1)
        this:ShowTutorialDialog(1833, nil)
    end, nil, 0, false, true)
end

function Quest79073:OnSubFailed7907301(arg1)
    print("OnSubFailed7907301")
end

return Quest79073
