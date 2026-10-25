require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40071 = class("Quest40071", QuestActorProxy)
Quest40071.defaultAlias = "Quest40071"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest40071:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest40071:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4007101"] = self.OnSubStart4007101,
        ["4007102"] = self.OnSubStart4007102,
        ["4007117"] = self.OnSubStart4007117,
        ["4007103"] = self.OnSubStart4007103,
        ["4007104"] = self.OnSubStart4007104,
        ["4007105"] = self.OnSubStart4007105,
        ["4007108"] = self.OnSubStart4007108,
        ["4007109"] = self.OnSubStart4007109,
        ["4007110"] = self.OnSubStart4007110,
        ["4007111"] = self.OnSubStart4007111,
        ["4007112"] = self.OnSubStart4007112,
        ["4007119"] = self.OnSubStart4007119,
        ["4007116"] = self.OnSubStart4007116,
        ["4007113"] = self.OnSubStart4007113,
        ["4007118"] = self.OnSubStart4007118,
        ["4007106"] = self.OnSubStart4007106,
        ["4007114"] = self.OnSubStart4007114,
        ["4007107"] = self.OnSubStart4007107,
        ["4007115"] = self.OnSubStart4007115
    }
end

function Quest40071:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4007101"] = self.OnSubFinish4007101,
        ["4007102"] = self.OnSubFinish4007102,
        ["4007117"] = self.OnSubFinish4007117,
        ["4007103"] = self.OnSubFinish4007103,
        ["4007104"] = self.OnSubFinish4007104,
        ["4007105"] = self.OnSubFinish4007105,
        ["4007108"] = self.OnSubFinish4007108,
        ["4007109"] = self.OnSubFinish4007109,
        ["4007110"] = self.OnSubFinish4007110,
        ["4007111"] = self.OnSubFinish4007111,
        ["4007112"] = self.OnSubFinish4007112,
        ["4007119"] = self.OnSubFinish4007119,
        ["4007116"] = self.OnSubFinish4007116,
        ["4007113"] = self.OnSubFinish4007113,
        ["4007118"] = self.OnSubFinish4007118,
        ["4007106"] = self.OnSubFinish4007106,
        ["4007114"] = self.OnSubFinish4007114,
        ["4007107"] = self.OnSubFinish4007107,
        ["4007115"] = self.OnSubFinish4007115
    }
end

function Quest40071:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest40071:Start()
    print("Start")
end

function Quest40071:OnDestroy()
    print("OnDestroy")
end

function Quest40071:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest40071:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest40071:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc1032Data.alias, 9)
    self:SafeDestroyQuestNpc(npcs.Npc1032Data.alias, 20137)
    self:SafeDestroyQuestNpc(npcs.Npc1032Data.alias, 20143)
    self:SafeDestroyQuestNpc(npcs.Npc1042Data.alias, 9)
    self:SafeDestroyQuestNpc(npcs.Npc1042Data.alias, 20137)
    self:SafeDestroyQuestNpc(npcs.Npc1042Data.alias, 20143)
    self:SafeDestroyQuestNpc(npcs.Npc10095Data.alias, 9)
    self:SafeDestroyQuestNpc(npcs.Npc10095Data.alias, 20137)
    self:SafeDestroyQuestNpc(npcs.Npc10095Data.alias, 20143)
    self:SafeDestroyQuestNpc(npcs.Npc12626Data.alias, 20137)
    self:SafeDestroyQuestNpc(npcs.Npc12628Data.alias, 20143)
    self:SafeDestroyQuestNpc(npcs.Npc12629Data.alias, 9)
    actorMgr:GetActor("40071"):UnSpawn(nil)
    actorMgr:DestroyEntityActor("Q4007102_Trigger", 9, false)
    actorMgr:DestroyEntityActor("Q4007103_Trigger", 20137, false)
    actorMgr:DestroyEntityActor("Q4007105_Trigger", 20137, false)
    actorMgr:DestroyEntityActor("Q4007109_Trigger", 20137, false)
    actorMgr:DestroyEntityActor("Q4007112_Trigger", 20137, false)
    actorMgr:DestroyEntityActor("Q4007115_Trigger", 9, false)
    actorMgr:DestroyEntityActor("Q4007104_SafeTrigger", 0, false)
end

function Quest40071:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 0 then
        actorUtils.FinishQuestID(false, 4007117)
    elseif arg1 == 1 then
        actorUtils.FinishQuestID(false, 4007119)
    end
end

function Quest40071:OnSubStart4007101(arg1)
    print("OnSubStart4007101")
end

function Quest40071:OnSubFinish4007101(arg1)
    print("OnSubFinish4007101")
end

function Quest40071:OnSubStart4007102(arg1)
    print("OnSubStart4007102")
    actorMgr:CreateActorWithPos("Q4007102_Trigger", "Actor/Gadget/Q4007102_Trigger", 70900002, 0, {x = 403.165, y = 121.409, z = -401.442}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 9)
end

function Quest40071:OnSubFinish4007102(arg1)
    print("OnSubFinish4007102")
    self:SafeDestroyQuestNpc(npcs.Npc1032Data.alias, 9)
    self:SafeDestroyQuestNpc(npcs.Npc1042Data.alias, 9)
    self:SafeDestroyQuestNpc(npcs.Npc10095Data.alias, 9)
    self:ActionSafeCall(function(arg1)
        globalActor:PlayerEnterDungeonPoint(15, 1141, 4007102, 1)
    end)
end

function Quest40071:OnSubStart4007117(arg1)
    print("OnSubStart4007117")
end

function Quest40071:OnSubFinish4007117(arg1)
    print("OnSubFinish4007117")
end

function Quest40071:OnSubStart4007103(arg1)
    print("OnSubStart4007103")
    self:LevelLoadFinishSafeCall(function(arg1)
        actorMgr:CreateActorWithPos("Q4007103_Trigger", "Actor/Gadget/Q4007103_Trigger", 70900002, 0, {x = 554.969, y = 49.613, z = -255.62}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 20137)
    end)
end

function Quest40071:OnSubFinish4007103(arg1)
    print("OnSubFinish4007103")
    self:SafeDestroyQuestNpc(npcs.Npc1032Data.alias, 20137)
    self:SafeDestroyQuestNpc(npcs.Npc1042Data.alias, 20137)
    self:SafeDestroyQuestNpc(npcs.Npc10095Data.alias, 20137)
    self:ActionSafeCall(function(arg1)
        arg1:NarratorOnlyTaskByData(datas.Narrator_4007101, nil, 40071)
    end)
end

function Quest40071:OnSubStart4007104(arg1)
    print("OnSubStart4007104")
    actorMgr:CreateActorWithPos("Q4007104_SafeTrigger", "Actor/Gadget/Q4007104_SafeTrigger", 70900002, 0, {x = 549.64, y = 62.408, z = -201.151}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 20137)
end

function Quest40071:OnSubFinish4007104(arg1)
    print("OnSubFinish4007104")
    self:NarratorOnlyTaskByData(datas.Narrator_4007102, nil, 40071)
end

function Quest40071:OnSubStart4007105(arg1)
    print("OnSubStart4007105")
    actorMgr:CreateActorWithPos("Q4007105_Trigger", "Actor/Gadget/Q4007105_Trigger", 70900002, 0, {x = 548.882, y = 74.158, z = -184.095}, {x = 0.0, y = 45.0, z = 0.0}, true, false, 20137)
end

function Quest40071:OnSubFinish4007105(arg1)
    print("OnSubFinish4007105")
    self:NarratorOnlyTaskByData(datas.Narrator_4007103, nil, 40071)
end

function Quest40071:OnSubStart4007108(arg1)
    print("OnSubStart4007108")
    actorMgr:CreateActorWithPos("Q4007108_SafeTrigger", "Actor/Gadget/Q4007108_SafeTrigger", 70900002, 0, {x = 672.312, y = 74.009, z = -141.413}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 20137)
end

function Quest40071:OnSubFinish4007108(arg1)
    print("OnSubFinish4007108")
    self:NarratorOnlyTaskByData(datas.Narrator_4007104, nil, 40071)
end

function Quest40071:OnSubStart4007109(arg1)
    print("OnSubStart4007109")
    actorMgr:CreateActorWithPos("Q4007109_Trigger", "Actor/Gadget/Q4007109_Trigger", 70900002, 0, {x = 687.644, y = 74.019, z = -141.899}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 20137)
end

function Quest40071:OnSubFinish4007109(arg1)
    print("OnSubFinish4007109")
    self:NarratorOnlyTaskByData(datas.Narrator_4007105, nil, 40071)
end

function Quest40071:OnSubStart4007110(arg1)
    print("OnSubStart4007110")
    self:CreateQuestNpcWithTrigger("Q4007110_Trigger", 4007110, npcs.Npc12626Data.id, 4, 5)
end

function Quest40071:OnSubFinish4007110(arg1)
    print("OnSubFinish4007110")
    self:SafeDestroyQuestNpc(npcs.Npc1032Data.alias, 20137)
    self:SafeDestroyQuestNpc(npcs.Npc1042Data.alias, 20137)
    self:SafeDestroyQuestNpc(npcs.Npc10095Data.alias, 20137)
    self:SafeDestroyQuestNpc(npcs.Npc12626Data.alias, 20137)
end

function Quest40071:OnSubStart4007111(arg1)
    print("OnSubStart4007111")
end

function Quest40071:OnSubFinish4007111(arg1)
    print("OnSubFinish4007111")
end

function Quest40071:OnSubStart4007112(arg1)
    print("OnSubStart4007112")
    self:CreateQuestNpc(arg1, npcs.Npc12626Data.id, 4)
    actorMgr:CreateActorWithPos("Q4007112_Trigger", "Actor/Gadget/Q4007112_Trigger", 70900002, 0, {x = 690.304, y = 73.81, z = -115.892}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 20137)
end

function Quest40071:OnSubFinish4007112(arg1)
    print("OnSubFinish4007112")
    self:SafeDestroyQuestNpc(npcs.Npc1032Data.alias, 20137)
    self:SafeDestroyQuestNpc(npcs.Npc1042Data.alias, 20137)
    self:SafeDestroyQuestNpc(npcs.Npc10095Data.alias, 20137)
    self:SafeDestroyQuestNpc(npcs.Npc12626Data.alias, 20137)
end

function Quest40071:OnSubStart4007119(arg1)
    print("OnSubStart4007119")
end

function Quest40071:OnSubFinish4007119(arg1)
    print("OnSubFinish4007119")
end

function Quest40071:OnSubStart4007116(arg1)
    print("OnSubStart4007116")
end

function Quest40071:OnSubFinish4007116(arg1)
    print("OnSubFinish4007116")
    self:NarratorOnlyTaskByData(datas.Narrator_4007107, nil, 40071)
end

function Quest40071:OnSubStart4007113(arg1)
    print("OnSubStart4007113")
    self:CreateQuestNpcWithTriggerBlack("Q4007113_Trigger", 4007113, npcs.Npc1032Data.id, 1, 6, 1)
end

function Quest40071:OnSubFinish4007113(arg1)
    print("OnSubFinish4007113")
    self:SafeDestroyQuestNpc(npcs.Npc1032Data.alias, 20137)
    self:SafeDestroyQuestNpc(npcs.Npc1042Data.alias, 20137)
    self:SafeDestroyQuestNpc(npcs.Npc10095Data.alias, 20137)
end

function Quest40071:OnSubStart4007118(arg1)
    print("OnSubStart4007118")
end

function Quest40071:OnSubFinish4007118(arg1)
    print("OnSubFinish4007118")
end

function Quest40071:OnSubStart4007106(arg1)
    print("OnSubStart4007106")
    globalActor:PlayerEnterDungeonPoint(23, 1147, 4007106, 1)
end

function Quest40071:OnSubFinish4007106(arg1)
    print("OnSubFinish4007106")
end

function Quest40071:OnSubStart4007114(arg1)
    print("OnSubStart4007114")
    self:CreateQuestNpc(arg1, npcs.Npc12628Data.id, 4)
    self:LevelLoadFinishSafeCall(function(arg1)
        arg1:RequestInteraction(npcs.Npc12628Data.alias)
    end)
end

function Quest40071:OnSubFinish4007114(arg1)
    print("OnSubFinish4007114")
    self:SafeDestroyQuestNpc(npcs.Npc1032Data.alias, 20143)
    self:SafeDestroyQuestNpc(npcs.Npc1042Data.alias, 20143)
    self:SafeDestroyQuestNpc(npcs.Npc10095Data.alias, 20143)
    self:SafeDestroyQuestNpc(npcs.Npc12628Data.alias, 20143)
end

function Quest40071:OnSubStart4007107(arg1)
    print("OnSubStart4007107")
end

function Quest40071:OnSubFinish4007107(arg1)
    print("OnSubFinish4007107")
end

function Quest40071:OnSubStart4007115(arg1)
    print("OnSubStart4007115")
    if sceneData.currSceneID == 20143 then
        self:LevelLoadFinishSafeCall(function(arg1_2)
            arg1_2:TransmitPlayerWithTextById(arg1, 1, datas.TextmapId, 1)
            arg1_2:CreateQuestNpcWithTriggerBlack("Q4007115_Trigger", 4007115, npcs.Npc10095Data.id, 3, 15, 1)
        end)
    else
        self:CreateQuestNpcWithTriggerBlack("Q4007115_Trigger", 4007115, npcs.Npc10095Data.id, 3, 15, 1)
    end
end

function Quest40071:OnSubFinish4007115(arg1)
    print("OnSubFinish4007115")
    self:SafeDestroyQuestNpc(npcs.Npc1032Data.alias, 9)
    self:SafeDestroyQuestNpc(npcs.Npc1042Data.alias, 9)
    self:SafeDestroyQuestNpc(npcs.Npc10095Data.alias, 9)
    self:SafeDestroyQuestNpc(npcs.Npc12629Data.alias, 9)
end

return Quest40071
