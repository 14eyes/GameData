require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72683 = class("Quest72683", QuestActorProxy)
Quest72683.defaultAlias = "Quest72683"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest72683:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest72683:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7268301"] = self.OnSubStart7268301, ["7268302"] = self.OnSubStart7268302}
end

function Quest72683:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7268301"] = self.OnSubFinish7268301, ["7268302"] = self.OnSubFinish7268302}
end

function Quest72683:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest72683:Start()
    print("Start")
end

function Quest72683:OnDestroy()
    print("OnDestroy")
end

function Quest72683:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72683:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72683:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc30160Data.alias, 3)
    actorMgr:DestroyEntityActor("Q7268301Trigger", 3, false)
end

function Quest72683:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1 then
        self:GetQuestNpcActor(npcs.Npc30160Data.alias):DisableInteeHeadCtrl(false)
    end
end

function Quest72683:OnSubStart7268301(arg1)
    print("OnSubStart7268301")
    self:CreateQuestNpc(arg1, npcs.Npc30160Data.id, 1)
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc30160Data.alias)
    questNpcActor:DoFreeStyle(1190, true, nil, true, true, false)
    actorMgr:CreateActorWithPos("Q7268301Trigger", "Actor/Gadget/Q7268301Trigger", 70900002, 0, {x = -3090.657, y = 242.603, z = -4364.188}, {x = 0, y = 0, z = 0}, true, false)
    questNpcActor:DisableInteeHeadCtrl(true)
end

function Quest72683:OnSubFinish7268301(arg1)
    print("OnSubFinish7268301")
    self:NarratorOnlyTask({{dialogID = 726839901, duration = 3}, {dialogID = 726839902, duration = 3}})
end

function Quest72683:OnSubStart7268302(arg1)
    print("OnSubStart7268302")
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc30160Data.alias)
    questNpcActor:DoFreeStyle(1190, true, nil, true, true, false)
    questNpcActor:DisableInteeHeadCtrl(true)
end

function Quest72683:OnSubFinish7268302(arg1)
    print("OnSubFinish7268302")
    self:ShowBlackScreen(0.3, 0.5, 0.3, function(arg1)
        arg1:SafeDestroyQuestNpc(npcs.Npc30160Data.alias, 3)
    end, function(arg1)
        arg1:ShowActivityPage(5068)
    end, nil, "", false, true)
end

return Quest72683
