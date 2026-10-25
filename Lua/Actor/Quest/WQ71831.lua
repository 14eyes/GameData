require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71831 = class("Quest71831", QuestActorProxy)
Quest71831.defaultAlias = "Quest71831"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest71831:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest71831:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7183101"] = self.OnSubStart7183101,
        ["7183102"] = self.OnSubStart7183102,
        ["7183103"] = self.OnSubStart7183103,
        ["7183104"] = self.OnSubStart7183104,
        ["7183105"] = self.OnSubStart7183105
    }
end

function Quest71831:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7183101"] = self.OnSubFinish7183101,
        ["7183102"] = self.OnSubFinish7183102,
        ["7183103"] = self.OnSubFinish7183103,
        ["7183104"] = self.OnSubFinish7183104,
        ["7183105"] = self.OnSubFinish7183105
    }
end

function Quest71831:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest71831:Start()
    print("Start")
end

function Quest71831:OnDestroy()
    print("OnDestroy")
end

function Quest71831:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71831:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71831:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest71831:NpcDestroyWithBlackscreen(arg1, arg2)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest71831:OnSubStart7183101(arg1)
    print("OnSubStart7183101")
    self:CreateQuestNpc(arg1, npcs.Npc12326Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc12326Data.alias):DoFreeStyle(1190, true, nil, true, true, false)
end

function Quest71831:OnSubFinish7183101(arg1)
    print("OnSubFinish7183101")
end

function Quest71831:OnSubStart7183102(arg1)
    print("OnSubStart7183102")
    self:CreateQuestNpc(arg1, npcs.Npc12326Data.id, 1)
    actorMgr:CreateActorWithPos("Q7183102Trigger", "Actor/Gadget/Q7183102Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q7183102_N12326").pos, {x = 0, y = 0, z = 0}, true, false)
end

function Quest71831:OnSubFinish7183102(arg1)
    print("OnSubFinish7183102")
end

function Quest71831:OnSubStart7183103(arg1)
    print("OnSubStart7183103")
end

function Quest71831:OnSubFinish7183103(arg1)
    print("OnSubFinish7183103")
end

function Quest71831:OnSubStart7183104(arg1)
    print("OnSubStart7183104")
end

function Quest71831:OnSubFinish7183104(arg1)
    print("OnSubFinish7183104")
end

function Quest71831:OnSubStart7183105(arg1)
    print("OnSubStart7183105")
end

function Quest71831:OnSubFinish7183105(arg1)
    print("OnSubFinish7183105")
    self:ShowBlackScreen(0.4, 2, 0.4, function(arg1)
        arg1:SafeDestroyQuestNpc(npcs.Npc12326Data.alias, 3)
    end, nil, nil, "", false, true)
end

return Quest71831
