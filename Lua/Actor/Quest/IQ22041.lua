require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest22041 = class("Quest22041", QuestActorProxy)
Quest22041.defaultAlias = "Quest22041"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest22041:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest22041:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["2204101"] = self.OnSubStart2204101,
        ["2204102"] = self.OnSubStart2204102,
        ["2204103"] = self.OnSubStart2204103
    }
end

function Quest22041:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["2204101"] = self.OnSubFinish2204101,
        ["2204102"] = self.OnSubFinish2204102,
        ["2204103"] = self.OnSubFinish2204103
    }
end

function Quest22041:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["2204101"] = self.OnSubFailed2204101,
        ["2204102"] = self.OnSubFailed2204102,
        ["2204103"] = self.OnSubFailed2204103
    }
end

function Quest22041:Start()
    print("Start")
end

function Quest22041:OnDestroy()
    print("OnDestroy")
end

function Quest22041:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest22041:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest22041:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc20283Data.alias, 3)
    self:ActorDestroy("Q22041Trigger1")
end

function Quest22041:NpcDestroyWithBlackscreen(arg1, arg2)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest22041:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest22041:StartHelp()
    print("StartHelp")
    actorMgr:GetActor("Npc20379"):DoFreeStyle(1)
end

function Quest22041:CountDown()
    print("CountDown")
    self:FinishQuestID(true, 2204102)
end

function Quest22041:StartCount()
    print("StartCount")
    self:CountDownUIStart(60, 10, 3)
    self:CallDelay(63, self.CountDown)
end

function Quest22041:OnSubStart2204101(arg1)
    print("OnSubStart2204101")
    self:CreateQuestNpc(arg1, npcs.Npc20283Data.id, 1)
end

function Quest22041:OnSubFinish2204101(arg1)
    print("OnSubFinish2204101")
    self:NarratorOnlyTask(datas.NarratorTable, nil, "")
end

function Quest22041:OnSubFailed2204101(arg1)
    print("OnSubFailed2204101")
end

function Quest22041:OnSubStart2204102(arg1)
    print("OnSubStart2204102")
    actorMgr:CreateActorWithPos("Q22041Trigger1", "Actor/Gadget/Q22041Trigger1", 70900002, 0, sceneData:GetDummyPoint(3, "Q22041_QINZI").pos, {x = 0, y = 0, z = 0}, true, true)
    self:CallDelay(1, self.StartHelp)
end

function Quest22041:OnSubFinish2204102(arg1)
    print("OnSubFinish2204102")
    self:NarratorOnlyTask(datas.NarratorTable1, nil, "")
    self:ActorDestroy("Q22041Trigger1")
end

function Quest22041:OnSubFailed2204102(arg1)
    print("OnSubFailed2204102")
    self:ActorDestroy("Q22041Trigger1")
    self:NarratorOnlyTask(datas.NarratorTable2, nil, "")
end

function Quest22041:OnSubStart2204103(arg1)
    print("OnSubStart2204103")
    self:CountDownUITerminate()
    self:UnCallFunc(self.CountDown)
    self:CountNumUITerminate()
end

function Quest22041:OnSubFinish2204103(arg1)
    print("OnSubFinish2204103")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc20283Data.alias)
end

function Quest22041:OnSubFailed2204103(arg1)
    print("OnSubFailed2204103")
end

return Quest22041
