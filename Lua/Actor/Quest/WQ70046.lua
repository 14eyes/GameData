require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70046 = class("Quest70046", QuestActorProxy)
Quest70046.defaultAlias = "Quest70046"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest70046:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest70046:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7004601"] = self.OnSubStart7004601}
end

function Quest70046:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7004601"] = self.OnSubFinish7004601}
end

function Quest70046:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest70046:Start()
    print("Start")
end

function Quest70046:OnDestroy()
    print("OnDestroy")
end

function Quest70046:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70046:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70046:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:SafeDestroyQuestNpc(npcs.Npc30773.alias, 3)
    this:UnCallDelayByQuest("1")
end

function Quest70046:NpcDestroyWithBlackscreen(arg1, arg2)
    globalActor:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "", false, true)
end

function Quest70046:OnSubStart7004601(arg1)
    print("OnSubStart7004601")
    this:CreateQuestNpc(arg1, npcs.Npc30773.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc30773.alias, 70046):DoFreeStyle(1230, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc30773.alias, 70046):DisableInteeHeadCtrl(true)
end

function Quest70046:OnSubFinish7004601(arg1)
    print("OnSubFinish7004601")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc30773.alias)
    this:ActionSafeCall(function(arg1)
        this:CallDelayByQuest("1", 2, function(arg1)
            this:ShowTutorialDialog(2057, nil)
        end)
    end)
end

return Quest70046
