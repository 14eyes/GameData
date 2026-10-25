require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74671 = class("Quest74671", QuestActorProxy)
Quest74671.defaultAlias = "Quest74671"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs

function Quest74671:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest74671:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7467101"] = self.OnSubStart7467101}
end

function Quest74671:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7467101"] = self.OnSubFinish7467101}
end

function Quest74671:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74671:Start()
    print("Start")
end

function Quest74671:OnDestroy()
    print("OnDestroy")
end

function Quest74671:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74671:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74671:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:SafeDestroyQuestNpc(npcs.Npc30395Data.alias, 3)
end

function Quest74671:OnSubStart7467101(arg1)
    print("OnSubStart7467101")
    this:CreateQuestNpc(arg1, npcs.Npc30395Data.id, 0)
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc30395Data.alias)
    questNpcActor:DisableInteeHeadCtrl(true)
    questNpcActor:DoFreeStyle(1240, true, nil, true, true, false, false)
end

function Quest74671:OnSubFinish7467101(arg1)
    print("OnSubFinish7467101")
    this:ShowBlackScreenWithDialogText(0.5, 1, 0.5, function(arg1)
        this:GetQuestNpcActor(npcs.Npc30395Data.alias):DisableInteeHeadCtrl(false)
        this:DestroyQuestNpcActor(npcs.Npc30395Data.alias, 3)
    end, function(arg1)
        this:ShowTutorialDialog(1552)
    end, nil, 0, false, true)
end

return Quest74671
