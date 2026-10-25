require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70512 = class("Quest70512", QuestActorProxy)
Quest70512.defaultAlias = "Quest70512"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest70512:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest70512:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7051201"] = self.OnSubStart7051201,
        ["7051203"] = self.OnSubStart7051203,
        ["7051204"] = self.OnSubStart7051204,
        ["7051205"] = self.OnSubStart7051205,
        ["7051206"] = self.OnSubStart7051206,
        ["7051207"] = self.OnSubStart7051207,
        ["7051202"] = self.OnSubStart7051202
    }
end

function Quest70512:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7051201"] = self.OnSubFinish7051201,
        ["7051203"] = self.OnSubFinish7051203,
        ["7051204"] = self.OnSubFinish7051204,
        ["7051205"] = self.OnSubFinish7051205,
        ["7051206"] = self.OnSubFinish7051206,
        ["7051207"] = self.OnSubFinish7051207,
        ["7051202"] = self.OnSubFinish7051202
    }
end

function Quest70512:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest70512:Start()
    print("Start")
end

function Quest70512:OnDestroy()
    print("OnDestroy")
end

function Quest70512:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70512:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70512:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc1531Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc30192Data.alias, 3)
    actorMgr:DestroyEntityActor("Q7051201_TriggerIn", 3, false)
    actorMgr:DestroyEntityActor("Q7051203_TriggerIn", 3, false)
    actorMgr:DestroyEntityActor("Q7051205_TriggerIn", 3, false)
    self:LightNotifyTo(npcs.Npc1529Data.alias, 0, true)
end

function Quest70512:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    self:ActionSafeCall(function(arg1_2)
        arg1_2:NotifyTo(arg1, arg2, arg3)
    end)
end

local n = 0

function Quest70512:OnSubStart7051201(arg1)
    print("OnSubStart7051201")
    self:CreateQuestNpc(arg1, npcs.Npc1531Data.id, 1)
    self:DailyNpcSafeHideSelf(npcs.Npc1529Data.alias, 1, true)
    self:ActionSafeCall(function(arg1)
        if n == 0 then
            n = 1
            arg1:CallDelay(1, function(arg1)
                if arg1:GetQuestVar(7051201, 0) == 0 then
                    arg1:NarratorOnlyTaskByData(datas.NarratorWithId_7051201, function(arg1)
                        arg1:SetQuestVarByMainId(0, 1)
                    end, "")
                end
            end)

            actorMgr:CreateActorWithPos("Q7051201_TriggerIn", "Actor/Gadget/Q7051201_TriggerIn", 70900002, 0, sceneData:GetDummyPoint(3, "Q7051202_N1531").pos, sceneData:GetDummyPoint(3, "Q7051202_N1531").rot, true, false, 3)
        end
    end)
end

function Quest70512:OnSubFinish7051201(arg1)
    print("OnSubFinish7051201")
end

function Quest70512:OnSubStart7051203(arg1)
    print("OnSubStart7051203")
    self:DailyNpcSafeHideSelf(npcs.Npc1529Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q7051203_TriggerIn", "Actor/Gadget/Q7051203_TriggerIn", 70900002, 0, sceneData:GetDummyPoint(3, "Q7051203_guide").pos, sceneData:GetDummyPoint(3, "Q7051203_guide").rot, true, false, 3)
    self:ClearNarratorTask()
    self:StopNarrator()
end

function Quest70512:OnSubFinish7051203(arg1)
    print("OnSubFinish7051203")
end

function Quest70512:OnSubStart7051204(arg1)
    print("OnSubStart7051204")
    self:CreateQuestNpc(arg1, npcs.Npc30192Data.id, 1)
    self:DailyNpcSafeHideSelf(npcs.Npc1529Data.alias, 1, true)
end

function Quest70512:OnSubFinish7051204(arg1)
    print("OnSubFinish7051204")
    self:LightNotifyTo(npcs.Npc1529Data.alias, 0, true)
end

function Quest70512:OnSubStart7051205(arg1)
    print("OnSubStart7051205")
    self:CreateQuestNpc(arg1, npcs.Npc30192Data.id, 1)
    actorMgr:CreateActorWithPos("Q7051205_TriggerIn", "Actor/Gadget/Q7051205_TriggerIn", 70900002, 0, sceneData:GetDummyPoint(3, "Q7051205_guide").pos, sceneData:GetDummyPoint(3, "Q7051205_guide").rot, true, false, 3)
    self:ClearNarratorTask()
    self:StopNarrator()
end

function Quest70512:OnSubFinish7051205(arg1)
    print("OnSubFinish7051205")
    self:SafeDestroyQuestNpc(npcs.Npc30192Data.alias, 3)
end

function Quest70512:OnSubStart7051206(arg1)
    print("OnSubStart7051206")
end

function Quest70512:OnSubFinish7051206(arg1)
    print("OnSubFinish7051206")
end

function Quest70512:OnSubStart7051207(arg1)
    print("OnSubStart7051207")
    self:CallDelay(1.5, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc30192Data.id, 1)
        arg1_2:RequestInteraction(npcs.Npc30192Data.alias)
    end)
end

function Quest70512:OnSubFinish7051207(arg1)
    print("OnSubFinish7051207")
    self:SafeDestroyQuestNpc(npcs.Npc1531Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc30192Data.alias, 3)
end

function Quest70512:OnSubStart7051202(arg1)
    print("OnSubStart7051202")
end

function Quest70512:OnSubFinish7051202(arg1)
    print("OnSubFinish7051202")
end

return Quest70512
