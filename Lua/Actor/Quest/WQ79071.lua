require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest79071 = class("Quest79071", QuestActorProxy)
Quest79071.defaultAlias = "Quest79071"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest79071:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest79071:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7907101"] = self.OnSubStart7907101}
end

function Quest79071:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7907101"] = self.OnSubFinish7907101}
end

function Quest79071:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7907101"] = self.OnSubFailed7907101}
end

function Quest79071:Start()
    print("Start")
end

function Quest79071:OnDestroy()
    print("OnDestroy")
end

function Quest79071:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest79071:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest79071:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:SafeDestroyQuestNpc(npcs.Npc30606.alias, 100)
end

function Quest79071:NpcDestroyWithBlackscreen(arg1, arg2)
    globalActor:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg1, arg2)
    end, nil, nil, "", false, true)
end

function Quest79071:OnSubStart7907101(arg1)
    print("OnSubStart7907101")
    this:CreateQuestNpc(arg1, npcs.Npc30606.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc30606.alias, 79071):DoFreeStyle(8, true, nil, true, true, false, false)
end

function Quest79071:OnSubFinish7907101(arg1)
    print("OnSubFinish7907101")
    this:ShowBlackScreenWithDialogText(0.5, 1, 0.5, function(arg1)
        this:NpcDestroyWithBlackscreen(npcs.Npc30606.alias, 100)
    end, function(arg1)
        this:ShowTutorialDialog(1838, nil)
    end, nil, 0, false, true)
end

function Quest79071:OnSubFailed7907101(arg1)
    print("OnSubFailed7907101")
end

return Quest79071
