require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest23019 = class("Quest23019", QuestActorProxy)
Quest23019.defaultAlias = "Quest23019"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest23019:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest23019:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["2301901"] = self.OnSubStart2301901,
        ["2301902"] = self.OnSubStart2301902,
        ["2301905"] = self.OnSubStart2301905,
        ["2301903"] = self.OnSubStart2301903,
        ["2301904"] = self.OnSubStart2301904
    }
end

function Quest23019:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["2301901"] = self.OnSubFinish2301901,
        ["2301902"] = self.OnSubFinish2301902,
        ["2301905"] = self.OnSubFinish2301905,
        ["2301903"] = self.OnSubFinish2301903,
        ["2301904"] = self.OnSubFinish2301904
    }
end

function Quest23019:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest23019:Start()
    print("Start")
end

function Quest23019:OnDestroy()
    print("OnDestroy")
end

function Quest23019:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest23019:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest23019:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc4032Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc4031Data.alias, 3)
    self:LightNotifyTo(npcs.Npc4031Data.alias, 0, true)
    actorMgr:DestroyEntityActor("Q2301902Trigger", 3, false)
end

function Quest23019:NpcDestroyWithBlackscreen(arg1, arg2)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest23019:OnSubStart2301901(arg1)
    print("OnSubStart2301901")
    self:CreateQuestNpc(arg1, npcs.Npc4032Data.id, 1)
    self:NotifyTo(npcs.Npc4031Data.alias, 1, true)
end

function Quest23019:OnSubFinish2301901(arg1)
    print("OnSubFinish2301901")
end

function Quest23019:OnSubStart2301902(arg1)
    print("OnSubStart2301902")
    actorMgr:CreateActorWithPos("Q2301902Trigger", "Actor/Gadget/Q2301902Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q2301901_GUIDE").pos, sceneData:GetDummyPoint(3, "Q2301901_GUIDE").rot, true, false, 3)
    self:NotifyTo(npcs.Npc4031Data.alias, 1, true)
end

function Quest23019:OnSubFinish2301902(arg1)
    print("OnSubFinish2301902")
end

function Quest23019:OnSubStart2301905(arg1)
    print("OnSubStart2301905")
    self:NotifyTo(npcs.Npc4031Data.alias, 1, true)
end

function Quest23019:OnSubFinish2301905(arg1)
    print("OnSubFinish2301905")
    self:NarratorOnlyTask(datas.NarratorTable05, nil, "")
end

function Quest23019:OnSubStart2301903(arg1)
    print("OnSubStart2301903")
    self:NotifyTo(npcs.Npc4031Data.alias, 1, true)
end

function Quest23019:OnSubFinish2301903(arg1)
    print("OnSubFinish2301903")
    self:NarratorOnlyTask(datas.NarratorTable03, nil, "")
end

function Quest23019:OnSubStart2301904(arg1)
    print("OnSubStart2301904")
    self:NotifyTo(npcs.Npc4031Data.alias, 1, true)
end

function Quest23019:OnSubFinish2301904(arg1)
    print("OnSubFinish2301904")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc4032Data.alias)
    self:LightNotifyTo(npcs.Npc4031Data.alias, 0, true)
end

return Quest23019
