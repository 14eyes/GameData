require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest12029 = class("Quest12029", QuestActorProxy)
Quest12029.defaultAlias = "Quest12029"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local gadgets
local datas

function Quest12029:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    gadgets = clientData.Gadgets
    datas = clientData.Datas
end

function Quest12029:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1202901"] = self.OnSubStart1202901,
        ["1202903"] = self.OnSubStart1202903,
        ["1202910"] = self.OnSubStart1202910,
        ["1202907"] = self.OnSubStart1202907,
        ["1202908"] = self.OnSubStart1202908,
        ["1202902"] = self.OnSubStart1202902,
        ["1202911"] = self.OnSubStart1202911,
        ["1202915"] = self.OnSubStart1202915,
        ["1202914"] = self.OnSubStart1202914,
        ["1202913"] = self.OnSubStart1202913,
        ["1202912"] = self.OnSubStart1202912,
        ["1202904"] = self.OnSubStart1202904,
        ["1202909"] = self.OnSubStart1202909,
        ["1202905"] = self.OnSubStart1202905,
        ["1202906"] = self.OnSubStart1202906
    }
end

function Quest12029:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1202901"] = self.OnSubFinish1202901,
        ["1202903"] = self.OnSubFinish1202903,
        ["1202910"] = self.OnSubFinish1202910,
        ["1202907"] = self.OnSubFinish1202907,
        ["1202908"] = self.OnSubFinish1202908,
        ["1202902"] = self.OnSubFinish1202902,
        ["1202911"] = self.OnSubFinish1202911,
        ["1202915"] = self.OnSubFinish1202915,
        ["1202914"] = self.OnSubFinish1202914,
        ["1202913"] = self.OnSubFinish1202913,
        ["1202912"] = self.OnSubFinish1202912,
        ["1202904"] = self.OnSubFinish1202904,
        ["1202909"] = self.OnSubFinish1202909,
        ["1202905"] = self.OnSubFinish1202905,
        ["1202906"] = self.OnSubFinish1202906
    }
end

function Quest12029:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["1202906"] = self.OnSubFailed1202906}
end

function Quest12029:Start()
    print("Start")
end

function Quest12029:OnDestroy()
    print("OnDestroy")
end

function Quest12029:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest12029:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest12029:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest12029:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    local actor = actorMgr:GetActor("12029")
    if arg1 == 1 then
        local n = actor:GetQuestVar(1202915, 0) + 1
        self:SetQuestVar(1202915, 0, n)
        print("set questvar index 0 value +1")
    elseif arg1 == 0 then
        self:SetQuestVar(1202915, 0, 0)
        self:SetQuestVar(1202915, 1, 0)
        print("set questvar index 0 value 0")
    elseif arg1 == 10 then
        local n = actor:GetQuestVar(1202915, 0) + 10
        self:SetQuestVar(1202915, 0, n)
        print("set questvar index 0 value +10")
    elseif arg1 == 100 then
        local n = actor:GetQuestVar(1202915, 0) + 100
        self:SetQuestVar(1202915, 0, n)
        print("set questvar index 0 value +100")
    elseif arg1 == 199 then
        print("questvar index*******")
        local questVar = actor:GetQuestVar(1202915, 0)
        print(questVar)
        if questVar == 12 or questVar == 102 or questVar == 3 then
            self:SetQuestVar(1202915, 1, 1)
            print("questvar index 1 value 1")
        elseif questVar == 21 or questVar == 120 or questVar == 30 then
            self:SetQuestVar(1202915, 1, 2)
            print("questvar index 1 value 2")
        elseif questVar == 201 or questVar == 210 or questVar == 300 then
            self:SetQuestVar(1202915, 1, 3)
            print("questvar index 1 value 3")
        elseif questVar == 111 then
            self:SetQuestVar(1202915, 1, 4)
            print("questvar index 1 value 4")
        end
    end
end

function Quest12029:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    self:ActionSafeCall(function(arg1_2)
        arg1_2:NotifyTo(arg1, arg2, arg3)
    end)
end

function Quest12029:OnSubStart1202901(arg1)
    print("OnSubStart1202901")
    self:CreateQuestNpcWithTriggerBlack("1202901", 1202901, npcs.Npc1034Data.id, 1, 5, 2)
end

function Quest12029:OnSubFinish1202901(arg1)
    print("OnSubFinish1202901")
    self:SafeDestroyQuestNpc(npcs.Npc1034Data.alias, 3)
end

function Quest12029:OnSubStart1202903(arg1)
    print("OnSubStart1202903")
    self:CreateQuestNpc(arg1, npcs.Npc12366Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc12368Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc12405Data.id, 3)
    self:CreateQuestNpc(arg1, npcs.Npc12369Data.id, 4)
    self:DailyNpcSafeHideSelf(npcs.Npc3045Data.alias, 1, true)
end

function Quest12029:OnSubFinish1202903(arg1)
    print("OnSubFinish1202903")
end

function Quest12029:OnSubStart1202910(arg1)
    print("OnSubStart1202910")
    self:CreateQuestNpc(arg1, npcs.Npc12366Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc12368Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc12405Data.id, 3)
    self:CreateQuestNpc(arg1, npcs.Npc12369Data.id, 4)
    self:DailyNpcSafeHideSelf(npcs.Npc3045Data.alias, 1, true)
end

function Quest12029:OnSubFinish1202910(arg1)
    print("OnSubFinish1202910")
end

function Quest12029:OnSubStart1202907(arg1)
    print("OnSubStart1202907")
    self:CreateQuestNpc(arg1, npcs.Npc12366Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc12368Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc12405Data.id, 3)
    self:CreateQuestNpc(arg1, npcs.Npc12369Data.id, 4)
    self:DailyNpcSafeHideSelf(npcs.Npc3045Data.alias, 1, true)
end

function Quest12029:OnSubFinish1202907(arg1)
    print("OnSubFinish1202907")
end

function Quest12029:OnSubStart1202908(arg1)
    print("OnSubStart1202908")
    self:DailyNpcSafeHideSelf(npcs.Npc3045Data.alias, 1, true)
end

function Quest12029:OnSubFinish1202908(arg1)
    print("OnSubFinish1202908")
end

function Quest12029:OnSubStart1202902(arg1)
    print("OnSubStart1202902")
    self:CreateQuestNpc(arg1, npcs.Npc1034Data.id, 1)
    self:DailyNpcSafeHideSelf(npcs.Npc3045Data.alias, 1, true)
end

function Quest12029:OnSubFinish1202902(arg1)
    print("OnSubFinish1202902")
end

function Quest12029:OnSubStart1202911(arg1)
    print("OnSubStart1202911")
    self:DelaySpawnGadget(arg1, gadgets.Gadget70710646Data.id, 1, 0)
    self:CreateQuestNpcWithTriggerBlack("1202911", 1202911, npcs.Npc1034Data.id, 1, 10, 2)
    self:ActionSafeCall(function(arg1)
        if arg1.GetQuestVar(arg1, 1202911, 4) == 0 then
            arg1.NarratorOnlyTaskByData(arg1, datas.NarratorWithId, function()
                arg1:SetQuestVar(1202911, 4, 1)
            end)
        end
    end)

    self:DailyNpcSafeHideSelf(npcs.Npc3045Data.alias, 1, true)
end

function Quest12029:OnSubFinish1202911(arg1)
    print("OnSubFinish1202911")
    self:UnSpawn(gadgets.Gadget70710646Data.alias)
end

function Quest12029:OnSubStart1202915(arg1)
    print("OnSubStart1202915")
end

function Quest12029:OnSubFinish1202915(arg1)
    print("OnSubFinish1202915")
end

function Quest12029:OnSubStart1202914(arg1)
    print("OnSubStart1202914")
end

function Quest12029:OnSubFinish1202914(arg1)
    print("OnSubFinish1202914")
end

function Quest12029:OnSubStart1202913(arg1)
    print("OnSubStart1202913")
end

function Quest12029:OnSubFinish1202913(arg1)
    print("OnSubFinish1202913")
end

function Quest12029:OnSubStart1202912(arg1)
    print("OnSubStart1202912")
end

function Quest12029:OnSubFinish1202912(arg1)
    print("OnSubFinish1202912")
end

function Quest12029:OnSubStart1202904(arg1)
    print("OnSubStart1202904")
    self:GetQuestNpcActor(npcs.Npc12435Data.alias):DisableInteeHeadCtrl(true)
    print("OnSubStart1202904******************")
    self:CreateQuestNpc(arg1, npcs.Npc3029Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc12366Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc12368Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc12405Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc12369Data.id, 3)
    self:DailyNpcSafeHideSelf(npcs.Npc3045Data.alias, 1, true)
end

function Quest12029:OnSubFinish1202904(arg1)
    print("OnSubFinish1202904")
end

function Quest12029:OnSubStart1202909(arg1)
    print("OnSubStart1202909")
    self:CreateQuestNpc(arg1, npcs.Npc12366Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc12405Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc12369Data.id, 3)
    self:DailyNpcSafeHideSelf(npcs.Npc3045Data.alias, 1, true)
end

function Quest12029:OnSubFinish1202909(arg1)
    print("OnSubFinish1202909")
end

function Quest12029:OnSubStart1202905(arg1)
    print("OnSubStart1202905")
    self:DailyNpcSafeHideSelf(npcs.Npc3045Data.alias, 1, true)
end

function Quest12029:OnSubFinish1202905(arg1)
    print("OnSubFinish1202905")
end

function Quest12029:OnSubStart1202906(arg1)
    print("OnSubStart1202906")
    self:CreateQuestNpc(arg1, npcs.Npc12366Data.id, 2)
    self:DailyNpcSafeHideSelf(npcs.Npc3045Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q12029Trigger1", "Actor/Gadget/Q12029Trigger1", 70900002, 0, sceneData:GetDummyPoint(3, "Q1202903_T1202903_N1034").pos, sceneData:GetDummyPoint(3, "Q1202903_T1202903_N1034").rot, true, false, 3)
end

function Quest12029:OnSubFinish1202906(arg1)
    print("OnSubFinish1202906")
    self:SafeDestroyQuestNpc(npcs.Npc3029Data.alias, 3)
    self:LightNotifyTo(npcs.Npc3045Data.alias, 0, true)
end

function Quest12029:OnSubFailed1202906(arg1)
    print("OnSubFailed1202906")
    self:SafeDestroyQuestNpc(npcs.Npc12366Data.alias, 3)
    local actor = actorMgr:GetActor(actorAlias)
    actorMgr:DestroyEntityActor("Q12029Trigger1", 3, false)
end

return Quest12029
