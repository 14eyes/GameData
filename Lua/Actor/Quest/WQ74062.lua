require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74062 = class("Quest74062", QuestActorProxy)
Quest74062.defaultAlias = "Quest74062"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points

function Quest74062:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest74062:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7406201"] = self.OnSubStart7406201,
        ["7406202"] = self.OnSubStart7406202,
        ["7406203"] = self.OnSubStart7406203,
        ["7406204"] = self.OnSubStart7406204
    }
end

function Quest74062:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7406201"] = self.OnSubFinish7406201,
        ["7406202"] = self.OnSubFinish7406202,
        ["7406203"] = self.OnSubFinish7406203,
        ["7406204"] = self.OnSubFinish7406204
    }
end

function Quest74062:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74062:Start()
    print("Start")
end

function Quest74062:OnDestroy()
    print("OnDestroy")
end

function Quest74062:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74062:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74062:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest74062:NpcCreateWithBlackscreenInteraction(arg1, arg2, arg3, arg4)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:CreateQuestNpc(arg1, arg2, arg3)
        this:RequestInteraction(arg4)
    end)
end

function Quest74062:NpcDestroyWithBlackscreen(arg1, arg2)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "")
end

function Quest74062:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1 then
        this:ShowQuestLikingBar(74062, 21102, 50, false, "FETTER_EXP_NAME")
    elseif arg1 == 101 then
        self:UpdateQuestLikingBar(30, false, "FETTER_LEVEL_DOWN")
    elseif arg1 == 102 then
        self:UpdateQuestLikingBar(60, false, "FETTER_LEVEL_UP")
    elseif arg1 == 103 then
        self:UpdateQuestLikingBar(40, false, "FETTER_LEVEL_DOWN")
    elseif arg1 == 104 then
        self:UpdateQuestLikingBar(20, false, "FETTER_LEVEL_DOWN")
    elseif arg1 == 105 then
        self:UpdateQuestLikingBar(10, false, "FETTER_LEVEL_DOWN")
    elseif arg1 == 106 then
        self:UpdateQuestLikingBar(60, false, "FETTER_LEVEL_UP")
    elseif arg1 == 107 then
        self:UpdateQuestLikingBar(40, false, "FETTER_LEVEL_UP")
    elseif arg1 == 108 then
        self:HideQuestLikingBar()
    end
end

function Quest74062:OnSubStart7406201(arg1)
    print("OnSubStart7406201")
    this:CreateQuestNpc(arg1, npcs.Npc5220Data.id, 0)
end

function Quest74062:OnSubFinish7406201(arg1)
    print("OnSubFinish7406201")
    self:SetNavigationByMainId(74062, true)
end

function Quest74062:OnSubStart7406202(arg1)
    print("OnSubStart7406202")
    actorMgr:CreateActorWithPos("Q7406202Trigger", "Actor/Gadget/Q7406202Trigger", 70900002, 0, points.TPos_Q7406202Trigger.pos, points.TPos_Q7406202Trigger.rot, true, false, 3)
end

function Quest74062:OnSubFinish7406202(arg1)
    print("OnSubFinish7406202")
end

function Quest74062:OnSubStart7406203(arg1)
    print("OnSubStart7406203")
    this:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc21102Data.id, 0, npcs.Npc21102Data.alias)
    this:CreateQuestNpc(arg1, npcs.PaimonData.id, 0)
    this:HideQuestLikingBar()
end

function Quest74062:OnSubFinish7406203(arg1)
    print("OnSubFinish7406203")
    this:SafeDestroyQuestNpc(npcs.Npc21102Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.PaimonData.alias, 3)
end

function Quest74062:OnSubStart7406204(arg1)
    print("OnSubStart7406204")
    this:HideQuestLikingBar()
end

function Quest74062:OnSubFinish7406204(arg1)
    print("OnSubFinish7406204")
    self:SetNavigationByMainId(74025, true)
    this:NpcDestroyWithBlackscreen(3, npcs.Npc5220Data.alias)
end

return Quest74062
