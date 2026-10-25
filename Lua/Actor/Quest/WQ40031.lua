require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40031 = class("Quest40031", QuestActorProxy)
Quest40031.defaultAlias = "Quest40031"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest40031:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest40031:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4003101"] = self.OnSubStart4003101,
        ["4003102"] = self.OnSubStart4003102,
        ["4003103"] = self.OnSubStart4003103,
        ["4003110"] = self.OnSubStart4003110,
        ["4003109"] = self.OnSubStart4003109,
        ["4003104"] = self.OnSubStart4003104,
        ["4003105"] = self.OnSubStart4003105,
        ["4003106"] = self.OnSubStart4003106,
        ["4003107"] = self.OnSubStart4003107,
        ["4003108"] = self.OnSubStart4003108
    }
end

function Quest40031:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4003101"] = self.OnSubFinish4003101,
        ["4003102"] = self.OnSubFinish4003102,
        ["4003103"] = self.OnSubFinish4003103,
        ["4003110"] = self.OnSubFinish4003110,
        ["4003109"] = self.OnSubFinish4003109,
        ["4003104"] = self.OnSubFinish4003104,
        ["4003105"] = self.OnSubFinish4003105,
        ["4003106"] = self.OnSubFinish4003106,
        ["4003107"] = self.OnSubFinish4003107,
        ["4003108"] = self.OnSubFinish4003108
    }
end

function Quest40031:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest40031:Start()
    print("Start")
end

function Quest40031:OnDestroy()
    print("OnDestroy")
end

function Quest40031:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest40031:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest40031:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc3004Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc3041Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc3042Data.alias, 3)
    self:LightNotifyTo(npcs.Npc3042Data.alias, 0, true)
    actorMgr:DestroyEntityActor("Q4003103Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q4003106Trigger", 3, false)
end

function Quest40031:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    self:ActionSafeCall(function(arg1_2)
        arg1_2:NotifyTo(arg1, arg2, arg3)
    end)
end

function Quest40031:OnSubStart4003101(arg1)
    print("OnSubStart4003101")
end

function Quest40031:OnSubFinish4003101(arg1)
    print("OnSubFinish4003101")
end

function Quest40031:OnSubStart4003102(arg1)
    print("OnSubStart4003102")
    self:CreateQuestNpc(arg1, npcs.Npc3042Data.id, 1)
end

function Quest40031:OnSubFinish4003102(arg1)
    print("OnSubFinish4003102")
end

function Quest40031:OnSubStart4003103(arg1)
    print("OnSubStart4003103")
    self:CreateQuestNpc(arg1, npcs.Npc3042Data.id, 1)
    actorMgr:CreateActorWithPos("Q4003103Trigger", "Actor/Gadget/Q4003103Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q40031Longer02").pos, sceneData:GetDummyPoint(3, "Q40031Longer02").rot, true, false, 3)
end

function Quest40031:OnSubFinish4003103(arg1)
    print("OnSubFinish4003103")
    self:ActionSafeCall(function(arg1)
        arg1:CallDelay(2, function(arg1)
            arg1:ShowTutorialDialog(1102)
        end)
    end)
end

function Quest40031:OnSubStart4003110(arg1)
    print("OnSubStart4003110")
end

function Quest40031:OnSubFinish4003110(arg1)
    print("OnSubFinish4003110")
end

function Quest40031:OnSubStart4003109(arg1)
    print("OnSubStart4003109")
end

function Quest40031:OnSubFinish4003109(arg1)
    print("OnSubFinish4003109")
end

function Quest40031:OnSubStart4003104(arg1)
    print("OnSubStart4003104")
end

function Quest40031:OnSubFinish4003104(arg1)
    print("OnSubFinish4003104")
    self:NarratorOnlyTask(datas.NarratorTable4003104, nil, "")
end

function Quest40031:OnSubStart4003105(arg1)
    print("OnSubStart4003105")
end

function Quest40031:OnSubFinish4003105(arg1)
    print("OnSubFinish4003105")
    self:SafeDestroyQuestNpc(npcs.Npc3042Data.alias, 3)
end

function Quest40031:OnSubStart4003106(arg1)
    print("OnSubStart4003106")
    self:DailyNpcSafeHideSelf(npcs.Npc3042Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q4003106Trigger", "Actor/Gadget/Q4003106Trigger", 70900002, 0, {x = -3462.798, y = 207.096, z = -2150.611}, {x = 0, y = 0, z = 0}, true, false, 3)
end

function Quest40031:OnSubFinish4003106(arg1)
    print("OnSubFinish4003106")
    self:ShowBlackScreen(0.5, 3, 0.5, nil, function(arg1)
        arg1:ActionSafeCall(function(arg1)
            arg1:ShowTutorialDialog(1103)
        end)
    end, nil, "", false, true)
end

function Quest40031:OnSubStart4003107(arg1)
    print("OnSubStart4003107")
    self:DailyNpcSafeHideSelf(npcs.Npc3042Data.alias, 1, true)
end

function Quest40031:OnSubFinish4003107(arg1)
    print("OnSubFinish4003107")
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:TransmitPlayerById(arg1, 4003107)
    end, nil, nil, "", false, true)
end

function Quest40031:OnSubStart4003108(arg1)
    print("OnSubStart4003108")
    self:CreateQuestNpc(arg1, npcs.Npc3042Data.id, 1)
end

function Quest40031:OnSubFinish4003108(arg1)
    print("OnSubFinish4003108")
    self:SafeDestroyQuestNpc(npcs.Npc3042Data.alias, 3)
end

return Quest40031
