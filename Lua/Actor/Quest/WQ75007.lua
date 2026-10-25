require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75007 = class("Quest75007", QuestActorProxy)
Quest75007.defaultAlias = "Quest75007"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest75007:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest75007:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7500701"] = self.OnSubStart7500701,
        ["7500702"] = self.OnSubStart7500702,
        ["7500703"] = self.OnSubStart7500703,
        ["7500704"] = self.OnSubStart7500704,
        ["7500705"] = self.OnSubStart7500705,
        ["7500706"] = self.OnSubStart7500706,
        ["7500707"] = self.OnSubStart7500707,
        ["7500708"] = self.OnSubStart7500708
    }
end

function Quest75007:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7500701"] = self.OnSubFinish7500701,
        ["7500702"] = self.OnSubFinish7500702,
        ["7500703"] = self.OnSubFinish7500703,
        ["7500704"] = self.OnSubFinish7500704,
        ["7500705"] = self.OnSubFinish7500705,
        ["7500706"] = self.OnSubFinish7500706,
        ["7500707"] = self.OnSubFinish7500707,
        ["7500708"] = self.OnSubFinish7500708
    }
end

function Quest75007:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75007:Start()
    print("Start")
end

function Quest75007:OnDestroy()
    print("OnDestroy")
end

function Quest75007:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75007:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75007:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest75007:NpcDestroyWithBlackscreen(arg1, arg2)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "")
end

function Quest75007:OnSubStart7500701(arg1)
    print("OnSubStart7500701")
    this:CreateQuestNpc(arg1, npcs.Npc2211Data.id, 0, false, 0)
end

function Quest75007:OnSubFinish7500701(arg1)
    print("OnSubFinish7500701")
end

function Quest75007:OnSubStart7500702(arg1)
    print("OnSubStart7500702")
    this:CreateQuestNpc(arg1, npcs.Npc2211Data.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Q7500702Trigger", "Actor/Gadget/Q7500702Trigger", 70900002, 0, {x = 0.0, y = 0.0, z = 0.0}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
end

function Quest75007:OnSubFinish7500702(arg1)
    print("OnSubFinish7500702")
    this:RequestInteraction("", "", true)
end

function Quest75007:OnSubStart7500703(arg1)
    print("OnSubStart7500703")
    this:CreateQuestNpc(arg1, npcs.Npc2211Data.id, 0, false, 0)
end

function Quest75007:OnSubFinish7500703(arg1)
    print("OnSubFinish7500703")
end

function Quest75007:OnSubStart7500704(arg1)
    print("OnSubStart7500704")
    this:CreateQuestNpc(arg1, npcs.Npc2211Data.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc2211Data.alias):DoFreeStyle(1070, true, nil, true, true, false, false)
    this:QuestNarratorTask(datas.NarratorWithId)
end

function Quest75007:OnSubFinish7500704(arg1)
    print("OnSubFinish7500704")
end

function Quest75007:OnSubStart7500705(arg1)
    print("OnSubStart7500705")
end

function Quest75007:OnSubFinish7500705(arg1)
    print("OnSubFinish7500705")
end

function Quest75007:OnSubStart7500706(arg1)
    print("OnSubStart7500706")
end

function Quest75007:OnSubFinish7500706(arg1)
    print("OnSubFinish7500706")
end

function Quest75007:OnSubStart7500707(arg1)
    print("OnSubStart7500707")
end

function Quest75007:OnSubFinish7500707(arg1)
    print("OnSubFinish7500707")
    this:ShowBlackScreenWithDialogText(0.5, 2, 0.5, function(arg1)
        this:RequestInteraction("", "", true)
    end, nil, nil, 0, false, true)
end

function Quest75007:OnSubStart7500708(arg1)
    print("OnSubStart7500708")
end

function Quest75007:OnSubFinish7500708(arg1)
    print("OnSubFinish7500708")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc2211Data.alias)
end

return Quest75007
