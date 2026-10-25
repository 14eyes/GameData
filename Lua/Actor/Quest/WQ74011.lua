require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74011 = class("Quest74011", QuestActorProxy)
Quest74011.defaultAlias = "Quest74011"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points
local datas

function Quest74011:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
    datas = clientData.Datas
end

function Quest74011:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7401101"] = self.OnSubStart7401101,
        ["7401102"] = self.OnSubStart7401102,
        ["7401125"] = self.OnSubStart7401125,
        ["7401103"] = self.OnSubStart7401103,
        ["7401104"] = self.OnSubStart7401104,
        ["7401105"] = self.OnSubStart7401105,
        ["7401106"] = self.OnSubStart7401106,
        ["7401108"] = self.OnSubStart7401108,
        ["7401107"] = self.OnSubStart7401107,
        ["7401109"] = self.OnSubStart7401109,
        ["7401110"] = self.OnSubStart7401110,
        ["7401124"] = self.OnSubStart7401124,
        ["7401113"] = self.OnSubStart7401113,
        ["7401114"] = self.OnSubStart7401114,
        ["7401115"] = self.OnSubStart7401115,
        ["7401116"] = self.OnSubStart7401116,
        ["7401117"] = self.OnSubStart7401117,
        ["7401118"] = self.OnSubStart7401118,
        ["7401119"] = self.OnSubStart7401119,
        ["7401120"] = self.OnSubStart7401120,
        ["7401121"] = self.OnSubStart7401121,
        ["7401122"] = self.OnSubStart7401122,
        ["7401123"] = self.OnSubStart7401123,
        ["7401112"] = self.OnSubStart7401112,
        ["7401111"] = self.OnSubStart7401111
    }
end

function Quest74011:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7401101"] = self.OnSubFinish7401101,
        ["7401102"] = self.OnSubFinish7401102,
        ["7401125"] = self.OnSubFinish7401125,
        ["7401103"] = self.OnSubFinish7401103,
        ["7401104"] = self.OnSubFinish7401104,
        ["7401105"] = self.OnSubFinish7401105,
        ["7401106"] = self.OnSubFinish7401106,
        ["7401108"] = self.OnSubFinish7401108,
        ["7401107"] = self.OnSubFinish7401107,
        ["7401109"] = self.OnSubFinish7401109,
        ["7401110"] = self.OnSubFinish7401110,
        ["7401124"] = self.OnSubFinish7401124,
        ["7401113"] = self.OnSubFinish7401113,
        ["7401114"] = self.OnSubFinish7401114,
        ["7401115"] = self.OnSubFinish7401115,
        ["7401116"] = self.OnSubFinish7401116,
        ["7401117"] = self.OnSubFinish7401117,
        ["7401118"] = self.OnSubFinish7401118,
        ["7401119"] = self.OnSubFinish7401119,
        ["7401120"] = self.OnSubFinish7401120,
        ["7401121"] = self.OnSubFinish7401121,
        ["7401122"] = self.OnSubFinish7401122,
        ["7401123"] = self.OnSubFinish7401123,
        ["7401112"] = self.OnSubFinish7401112,
        ["7401111"] = self.OnSubFinish7401111
    }
end

function Quest74011:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7401101"] = self.OnSubFailed7401101}
end

function Quest74011:Start()
    print("Start")
end

function Quest74011:OnDestroy()
    print("OnDestroy")
end

function Quest74011:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74011:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74011:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:SafeDestroyQuestNpc(npcs.Npc21037Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc5311Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21098Data.alias, 3)
    actorMgr:DestroyEntityActor("Q74011TriggerRUN1", 3, false)
    actorMgr:DestroyEntityActor("Q74011TriggerRUN2", 3, false)
    actorMgr:DestroyEntityActor("Q74011TriggerRUN3", 3, false)
    actorMgr:DestroyEntityActor("Q7401103Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q7401113Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q7401114Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q7401115Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q7401117Trigger", 0, false)
    actorMgr:DestroyEntityActor("Q7401118Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q7401119Trigger", 0, false)
end

function Quest74011:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1 then
        actorUtils.FinishQuestID(false, 7401125)
    end
end

function Quest74011:OnSubStart7401101(arg1)
    print("OnSubStart7401101")
    this:CreateQuestNpc(arg1, npcs.Npc5311Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc5311Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
end

function Quest74011:OnSubFinish7401101(arg1)
    print("OnSubFinish7401101")
    this:SafeDestroyQuestNpc(npcs.Npc5311Data.alias, 3)
end

function Quest74011:OnSubFailed7401101(arg1)
    print("OnSubFailed7401101")
    this:DestroyQuestNpcActor(npcs.Npc5311Data.alias, 3)
end

function Quest74011:OnSubStart7401102(arg1)
    print("OnSubStart7401102")
    this:CreateQuestNpc(arg1, npcs.Npc21037Data.id, 0)
end

function Quest74011:OnSubFinish7401102(arg1)
    print("OnSubFinish7401102")
end

function Quest74011:OnSubStart7401125(arg1)
    print("OnSubStart7401125")
end

function Quest74011:OnSubFinish7401125(arg1)
    print("OnSubFinish7401125")
end

function Quest74011:OnSubStart7401103(arg1)
    print("OnSubStart7401103")
    this:CreateQuestNpc(arg1, npcs.Npc21037Data.id, 0)
    actorMgr:CreateActorWithPos("Q7401103Trigger", "Actor/Gadget/Q7401103Trigger", 70900002, 0, points.TPos_Q7401103Trigger.pos, points.TPos_Q7401103Trigger.rot, true, false, 3)
end

function Quest74011:OnSubFinish7401103(arg1)
    print("OnSubFinish7401103")
    this:SafeDestroyQuestNpc(npcs.Npc21037Data.alias, 3)
end

function Quest74011:OnSubStart7401104(arg1)
    print("OnSubStart7401104")
    this:CreateQuestNpc(arg1, npcs.Npc5311Data.id, 0)
end

function Quest74011:OnSubFinish7401104(arg1)
    print("OnSubFinish7401104")
end

function Quest74011:OnSubStart7401105(arg1)
    print("OnSubStart7401105")
    this:CreateQuestNpc(arg1, npcs.Npc5311Data.id, 0)
end

function Quest74011:OnSubFinish7401105(arg1)
    print("OnSubFinish7401105")
end

function Quest74011:OnSubStart7401106(arg1)
    print("OnSubStart7401106")
    this:CreateQuestNpc(arg1, npcs.Npc5311Data.id, 0)
end

function Quest74011:OnSubFinish7401106(arg1)
    print("OnSubFinish7401106")
end

function Quest74011:OnSubStart7401108(arg1)
    print("OnSubStart7401108")
    this:CreateQuestNpc(arg1, npcs.Npc5311Data.id, 0)
end

function Quest74011:OnSubFinish7401108(arg1)
    print("OnSubFinish7401108")
end

function Quest74011:OnSubStart7401107(arg1)
    print("OnSubStart7401107")
    this:CreateQuestNpc(arg1, npcs.Npc5311Data.id, 0)
    this:RequestInteraction(npcs.Npc5311Data.alias)
end

function Quest74011:OnSubFinish7401107(arg1)
    print("OnSubFinish7401107")
end

function Quest74011:OnSubStart7401109(arg1)
    print("OnSubStart7401109")
    this:CreateQuestNpc(arg1, npcs.Npc5311Data.id, 0)
    this:RequestInteraction(npcs.Npc5311Data.alias)
end

function Quest74011:OnSubFinish7401109(arg1)
    print("OnSubFinish7401109")
end

function Quest74011:OnSubStart7401110(arg1)
    print("OnSubStart7401110")
    this:CreateQuestNpc(arg1, npcs.Npc5311Data.id, 0)
    this:RequestInteraction(npcs.Npc5311Data.alias)
end

function Quest74011:OnSubFinish7401110(arg1)
    print("OnSubFinish7401110")
    this:ActionSafeCall(function(arg1)
        this:TransmitPlayerUseCustomizedTplByQuestId(7401112, 1, 15)
        this:SafeDestroyQuestNpc(npcs.Npc5311Data.alias, 3)
    end)

    this:SafeDestroyQuestNpc(npcs.Npc5311Data.alias, 3)
end

function Quest74011:OnSubStart7401124(arg1)
    print("OnSubStart7401124")
    this:CreateQuestNpcWithTrigger("npc1", 7401124, 21037, 1, 10)
end

function Quest74011:OnSubFinish7401124(arg1)
    print("OnSubFinish7401124")
    this:SafeDestroyQuestNpc(npcs.Npc21037Data.alias, 3)
end

function Quest74011:OnSubStart7401113(arg1)
    print("OnSubStart7401113")
    this:CreateQuestNpc(arg1, npcs.Npc5311Data.id, 0)
    actorMgr:CreateActorWithPos("Q7401113Trigger", "Actor/Gadget/Q7401113Trigger", 70900002, 0, points.TPos_Q7401113Trigger.pos, points.TPos_Q7401113Trigger.rot, true, false, 3)
    this:ActionSafeCall(function(arg1)
        actorMgr:CreateActorWithPos("Q74011TriggerRUN1", "Actor/Gadget/Q74011TriggerRUN1", 70900002, 0, points.TPos_Q74011TriggerRUN1.pos, points.TPos_Q74011TriggerRUN1.rot, true, false, 3)
    end)
end

function Quest74011:OnSubFinish7401113(arg1)
    print("OnSubFinish7401113")
    this:GetQuestNpcActor(npcs.Npc5311Data.alias):DestroyWithDitherEx(2)
end

function Quest74011:OnSubStart7401114(arg1)
    print("OnSubStart7401114")
    this:CallDelayByQuest("c1", 3, function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc5311Data.id, 0)
        this:CallDelayByQuest("c11", 0.5, function(arg1)
            actorMgr:CreateActorWithPos("Q74011TriggerRUN2", "Actor/Gadget/Q74011TriggerRUN2", 70900002, 0, points.TPos_Q74011TriggerRUN2.pos, points.TPos_Q74011TriggerRUN2.rot, true, false, 3)
        end)
    end)

    actorMgr:CreateActorWithPos("Q7401114Trigger", "Actor/Gadget/Q7401114Trigger", 70900002, 0, points.TPos_Q7401114Trigger.pos, points.TPos_Q7401114Trigger.rot, true, false, 3)
end

function Quest74011:OnSubFinish7401114(arg1)
    print("OnSubFinish7401114")
    this:GetQuestNpcActor(npcs.Npc5311Data.alias):DestroyWithDitherEx(2)
end

function Quest74011:OnSubStart7401115(arg1)
    print("OnSubStart7401115")
    this:CallDelayByQuest("c2", 3, function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc5311Data.id, 0)
    end)

    actorMgr:CreateActorWithPos("Q7401115Trigger", "Actor/Gadget/Q7401115Trigger", 70900002, 0, {x = 2368.115, y = -348.466, z = 4809.168}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest74011:OnSubFinish7401115(arg1)
    print("OnSubFinish7401115")
    this:GetQuestNpcActor(npcs.Npc5311Data.alias):DestroyWithDitherEx(3)
end

function Quest74011:OnSubStart7401116(arg1)
    print("OnSubStart7401116")
    this:CreateQuestNpc(arg1, npcs.Npc21037Data.id, 0)
end

function Quest74011:OnSubFinish7401116(arg1)
    print("OnSubFinish7401116")
    this:SafeDestroyQuestNpc(npcs.Npc21037Data.alias, 3)
end

function Quest74011:OnSubStart7401117(arg1)
    print("OnSubStart7401117")
    actorMgr:CreateActorWithPos("Q7401117Trigger", "Actor/Gadget/Q7401117Trigger", 70900002, 0, {x = 2345.563, y = -261.483, z = 4808.665}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
end

function Quest74011:OnSubFinish7401117(arg1)
    print("OnSubFinish7401117")
end

function Quest74011:OnSubStart7401118(arg1)
    print("OnSubStart7401118")
    this:CreateQuestNpc(arg1, npcs.Npc5311Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21098Data.id, 0)
    actorMgr:CreateActorWithPos("Q7401118Trigger", "Actor/Gadget/Q7401118Trigger", 70900002, 0, {x = 2376.092, y = -255.409, z = 4846.039}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest74011:OnSubFinish7401118(arg1)
    print("OnSubFinish7401118")
end

function Quest74011:OnSubStart7401119(arg1)
    print("OnSubStart7401119")
    this:CreateQuestNpc(arg1, npcs.Npc5311Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21098Data.id, 0)
    actorMgr:CreateActorWithPos("Q7401119Trigger", "Actor/Gadget/Q7401119Trigger", 70900002, 0, {x = 2385.782, y = -252.597, z = 4845.016}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
end

function Quest74011:OnSubFinish7401119(arg1)
    print("OnSubFinish7401119")
    this:GetQuestNpcActor(npcs.Npc5311Data.alias):DestroyWithDitherEx(2)
    this:GetQuestNpcActor(npcs.Npc21098Data.alias):DestroyWithDitherEx(2)
end

function Quest74011:OnSubStart7401120(arg1)
    print("OnSubStart7401120")
end

function Quest74011:OnSubFinish7401120(arg1)
    print("OnSubFinish7401120")
end

function Quest74011:OnSubStart7401121(arg1)
    print("OnSubStart7401121")
    this:CreateQuestNpc(arg1, npcs.Npc21037Data.id, 0)
    this:RequestInteraction(npcs.Npc21037Data.alias)
end

function Quest74011:OnSubFinish7401121(arg1)
    print("OnSubFinish7401121")
    this:SafeDestroyQuestNpc(npcs.Npc21037Data.alias, 3)
end

function Quest74011:OnSubStart7401122(arg1)
    print("OnSubStart7401122")
end

function Quest74011:OnSubFinish7401122(arg1)
    print("OnSubFinish7401122")
end

function Quest74011:OnSubStart7401123(arg1)
    print("OnSubStart7401123")
    this:CreateQuestNpc(arg1, npcs.Npc5311Data.id, 0)
end

function Quest74011:OnSubFinish7401123(arg1)
    print("OnSubFinish7401123")
    this:SafeDestroyQuestNpc(npcs.Npc5311Data.alias, 3)
end

function Quest74011:OnSubStart7401112(arg1)
    print("OnSubStart7401112")
    this:CreateQuestNpc(arg1, npcs.Npc5311Data.id, 0)
end

function Quest74011:OnSubFinish7401112(arg1)
    print("OnSubFinish7401112")
    this:SafeDestroyQuestNpc(npcs.Npc5311Data.alias, 3)
end

function Quest74011:OnSubStart7401111(arg1)
    print("OnSubStart7401111")
    this:CreateQuestNpc(arg1, npcs.Npc5311Data.id, 0)
end

function Quest74011:OnSubFinish7401111(arg1)
    print("OnSubFinish7401111")
end

return Quest74011
