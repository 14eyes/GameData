require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73059 = class("Quest73059", QuestActorProxy)
Quest73059.defaultAlias = "Quest73059"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest73059:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest73059:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7305901"] = self.OnSubStart7305901,
        ["7305902"] = self.OnSubStart7305902,
        ["7305904"] = self.OnSubStart7305904,
        ["7305903"] = self.OnSubStart7305903
    }
end

function Quest73059:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7305901"] = self.OnSubFinish7305901,
        ["7305902"] = self.OnSubFinish7305902,
        ["7305904"] = self.OnSubFinish7305904,
        ["7305903"] = self.OnSubFinish7305903
    }
end

function Quest73059:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73059:Start()
    print("Start")
end

function Quest73059:OnDestroy()
    print("OnDestroy")
end

function Quest73059:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73059:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73059:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73059:NpcDestroyWithBlackscreen(arg1, arg2)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest73059:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1 then
        actorUtils.FinishQuestID(false, 7305904)
    end
end

function Quest73059:OnSubStart7305901(arg1)
    print("OnSubStart7305901")
    self:CreateQuestNpc(arg1, npcs.Npc20744Data.id, 1)
    actorMgr:CreateActorWithPos("Q7305901Trigger", "Actor/Gadget/Q7305901Trigger", 70900002, 0, {x = 342.003, y = 182.5, z = 2270.888}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
end

function Quest73059:OnSubFinish7305901(arg1)
    print("OnSubFinish7305901")
end

function Quest73059:OnSubStart7305902(arg1)
    print("OnSubStart7305902")
end

function Quest73059:OnSubFinish7305902(arg1)
    print("OnSubFinish7305902")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc20744Data.alias)
    self:ActionSafeCall(function(arg1)
        arg1:NarratorOnlyTaskByData(datas.NarratorWithId)
    end)
end

function Quest73059:OnSubStart7305904(arg1)
    print("OnSubStart7305904")
end

function Quest73059:OnSubFinish7305904(arg1)
    print("OnSubFinish7305904")
end

function Quest73059:OnSubStart7305903(arg1)
    print("OnSubStart7305903")
    self:CreateQuestNpc(arg1, npcs.Npc20576Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc20577Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc20578Data.id, 3)
end

function Quest73059:OnSubFinish7305903(arg1)
    print("OnSubFinish7305903")
end

return Quest73059
