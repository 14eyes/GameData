require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73019 = class("Quest73019", QuestActorProxy)
Quest73019.defaultAlias = "Quest73019"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest73019:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest73019:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7301901"] = self.OnSubStart7301901,
        ["7301902"] = self.OnSubStart7301902,
        ["7301903"] = self.OnSubStart7301903,
        ["7301904"] = self.OnSubStart7301904,
        ["7301905"] = self.OnSubStart7301905,
        ["7301906"] = self.OnSubStart7301906
    }
end

function Quest73019:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7301901"] = self.OnSubFinish7301901,
        ["7301902"] = self.OnSubFinish7301902,
        ["7301903"] = self.OnSubFinish7301903,
        ["7301904"] = self.OnSubFinish7301904,
        ["7301905"] = self.OnSubFinish7301905,
        ["7301906"] = self.OnSubFinish7301906
    }
end

function Quest73019:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73019:Start()
    print("Start")
end

function Quest73019:OnDestroy()
    print("OnDestroy")
end

function Quest73019:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73019:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73019:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73019:OnSubStart7301901(arg1)
    print("OnSubStart7301901")
    self:CreateQuestNpc(arg1, npcs.Npc20651Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc20651Data.alias):DoFreeStyle(1050, true, nil, true, true, false, false)
    self:CreateQuestNpc(arg1, npcs.Npc20727Data.id, 2)
    actorMgr:CreateActorWithPos("Q73019Trigger_7301901", "Actor/Gadget/Q73019Trigger_7301901", 70900002, 0, sceneData:GetDummyPoint(3, "Q7301901_N4193").pos, sceneData:GetDummyPoint(3, "Q7301901_N4193").rot, true, false, 3)
end

function Quest73019:OnSubFinish7301901(arg1)
    print("OnSubFinish7301901")
end

function Quest73019:OnSubStart7301902(arg1)
    print("OnSubStart7301902")
end

function Quest73019:OnSubFinish7301902(arg1)
    print("OnSubFinish7301902")
end

function Quest73019:OnSubStart7301903(arg1)
    print("OnSubStart7301903")
    self:CreateQuestNpc(arg1, npcs.Npc20599Data.id, 1)
    actorMgr:CreateActorWithPos("Q73019Trigger_7301903", "Actor/Gadget/Q73019Trigger_7301903", 70900002, 0, sceneData:GetDummyPoint(3, "Q7301903_guide").pos, sceneData:GetDummyPoint(3, "Q7301903_guide").rot, true, false, 3)
end

function Quest73019:OnSubFinish7301903(arg1)
    print("OnSubFinish7301903")
end

function Quest73019:OnSubStart7301904(arg1)
    print("OnSubStart7301904")
end

function Quest73019:OnSubFinish7301904(arg1)
    print("OnSubFinish7301904")
    self:CallDelay(1, function(arg1)
        arg1:NarratorOnlyTask(datas.Reminder_7301904, nil, "")
    end)
end

function Quest73019:OnSubStart7301905(arg1)
    print("OnSubStart7301905")
end

function Quest73019:OnSubFinish7301905(arg1)
    print("OnSubFinish7301905")
end

function Quest73019:OnSubStart7301906(arg1)
    print("OnSubStart7301906")
    self:RequestInteraction(npcs.Npc20651Data.alias)
end

function Quest73019:OnSubFinish7301906(arg1)
    print("OnSubFinish7301906")
    self:SafeDestroyQuestNpc(npcs.Npc20727Data.alias, 3)
end

return Quest73019
