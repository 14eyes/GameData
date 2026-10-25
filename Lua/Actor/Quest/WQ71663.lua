require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71663 = class("Quest71663", QuestActorProxy)
Quest71663.defaultAlias = "Quest71663"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest71663:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest71663:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7166301"] = self.OnSubStart7166301, ["7166302"] = self.OnSubStart7166302}
end

function Quest71663:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7166301"] = self.OnSubFinish7166301, ["7166302"] = self.OnSubFinish7166302}
end

function Quest71663:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest71663:Start()
    print("Start")
end

function Quest71663:OnDestroy()
    print("OnDestroy")
end

function Quest71663:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71663:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71663:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc30159Data.alias, 3)
    actorMgr:DestroyEntityActor("Q7166301Trigger", 3, false)
end

function Quest71663:OnSubStart7166301(arg1)
    print("OnSubStart7166301")
    self:GetQuestNpcActor(npcs.Npc30159Data.alias):DoFreeStyle(1160, true, nil, true, true, false)
    self:CreateQuestNpc(arg1, npcs.Npc30159Data.id, 1)
    actorMgr:CreateActorWithPos("Q7166301Trigger", "Actor/Gadget/Q7166301Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q7166301_guide").pos, sceneData:GetDummyPoint(3, "Q7166301_guide").rot, true, false, 3)
end

function Quest71663:OnSubFinish7166301(arg1)
    print("OnSubFinish7166301")
    self:NarratorOnlyTask({{dialogID = 716639901, duration = 3}, {dialogID = 716639902, duration = 3}})
end

function Quest71663:OnSubStart7166302(arg1)
    print("OnSubStart7166302")
    self:GetQuestNpcActor(npcs.Npc30159Data.alias):DoFreeStyle(1160, true, nil, true, true, false)
end

function Quest71663:OnSubFinish7166302(arg1)
    print("OnSubFinish7166302")
    self:ShowBlackScreen(0.3, 0.8, 0.3, function(arg1)
        arg1:SafeDestroyQuestNpc(npcs.Npc30159Data.alias, 3)
    end, function(arg1)
        arg1:ShowTutorialDialog(1136)
    end, nil, "", false, true)
end

return Quest71663
