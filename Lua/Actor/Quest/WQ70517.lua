require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70517 = class("Quest70517", QuestActorProxy)
Quest70517.defaultAlias = "Quest70517"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest70517:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest70517:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7051701"] = self.OnSubStart7051701, ["7051702"] = self.OnSubStart7051702}
end

function Quest70517:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7051701"] = self.OnSubFinish7051701, ["7051702"] = self.OnSubFinish7051702}
end

function Quest70517:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest70517:Start()
    print("Start")
end

function Quest70517:OnDestroy()
    print("OnDestroy")
end

function Quest70517:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70517:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70517:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc30221Data.alias, 9)
    actorMgr:DestroyEntityActor("Q7051701_TriggerIn", 9, false)
end

function Quest70517:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 7051702 then
        actorUtils.FinishQuestID(false, 7051702)
    end
end

function Quest70517:OnSubStart7051701(arg1)
    print("OnSubStart7051701")
    self:CreateQuestNpc(arg1, npcs.Npc30221Data.id, 1)
    self:CallDelay(1, function(arg1)
        if arg1:GetQuestVar(7051701, 0) == 0 then
            arg1:NarratorOnlyTask(datas.NarratorTable, function(arg1)
                arg1:SetQuestVarByMainId(0, 1)
            end, "")
        end
    end)

    actorMgr:CreateActorWithPos("Q7051701_TriggerIn", "Actor/Gadget/Q7051701_TriggerIn", 70900002, 0, sceneData:GetDummyPoint(9, "Q7051701_T7051701_N30202").pos, sceneData:GetDummyPoint(9, "Q7051701_T7051701_N30202").rot, true, false, 9)
end

function Quest70517:OnSubFinish7051701(arg1)
    print("OnSubFinish7051701")
    self:SafeDestroyQuestNpc(npcs.Npc30221Data.alias, 3)
    self:ActionSafeCall(function(arg1)
        arg1:ShowTutorialDialog(861)
    end)
end

function Quest70517:OnSubStart7051702(arg1)
    print("OnSubStart7051702")
end

function Quest70517:OnSubFinish7051702(arg1)
    print("OnSubFinish7051702")
end

return Quest70517
