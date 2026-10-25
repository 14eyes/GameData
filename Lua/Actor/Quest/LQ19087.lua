require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest19087 = class("Quest19087", QuestActorProxy)
Quest19087.defaultAlias = "Quest19087"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest19087:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest19087:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1908708"] = self.OnSubStart1908708,
        ["1908701"] = self.OnSubStart1908701,
        ["1908706"] = self.OnSubStart1908706,
        ["1908703"] = self.OnSubStart1908703,
        ["1908704"] = self.OnSubStart1908704,
        ["1908715"] = self.OnSubStart1908715,
        ["1908710"] = self.OnSubStart1908710,
        ["1908711"] = self.OnSubStart1908711,
        ["1908705"] = self.OnSubStart1908705,
        ["1908702"] = self.OnSubStart1908702,
        ["1908712"] = self.OnSubStart1908712,
        ["1908714"] = self.OnSubStart1908714,
        ["1908713"] = self.OnSubStart1908713,
        ["1908709"] = self.OnSubStart1908709,
        ["1908707"] = self.OnSubStart1908707
    }
end

function Quest19087:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1908708"] = self.OnSubFinish1908708,
        ["1908701"] = self.OnSubFinish1908701,
        ["1908706"] = self.OnSubFinish1908706,
        ["1908703"] = self.OnSubFinish1908703,
        ["1908704"] = self.OnSubFinish1908704,
        ["1908715"] = self.OnSubFinish1908715,
        ["1908710"] = self.OnSubFinish1908710,
        ["1908711"] = self.OnSubFinish1908711,
        ["1908705"] = self.OnSubFinish1908705,
        ["1908702"] = self.OnSubFinish1908702,
        ["1908712"] = self.OnSubFinish1908712,
        ["1908714"] = self.OnSubFinish1908714,
        ["1908713"] = self.OnSubFinish1908713,
        ["1908709"] = self.OnSubFinish1908709,
        ["1908707"] = self.OnSubFinish1908707
    }
end

function Quest19087:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["1908708"] = self.OnSubFailed1908708,
        ["1908701"] = self.OnSubFailed1908701,
        ["1908706"] = self.OnSubFailed1908706,
        ["1908703"] = self.OnSubFailed1908703,
        ["1908704"] = self.OnSubFailed1908704,
        ["1908715"] = self.OnSubFailed1908715,
        ["1908710"] = self.OnSubFailed1908710,
        ["1908711"] = self.OnSubFailed1908711,
        ["1908705"] = self.OnSubFailed1908705,
        ["1908702"] = self.OnSubFailed1908702,
        ["1908712"] = self.OnSubFailed1908712,
        ["1908714"] = self.OnSubFailed1908714,
        ["1908713"] = self.OnSubFailed1908713,
        ["1908709"] = self.OnSubFailed1908709,
        ["1908707"] = self.OnSubFailed1908707
    }
end

function Quest19087:Start()
    print("Start")
end

function Quest19087:OnDestroy()
    print("OnDestroy")
end

function Quest19087:OnMainFinished(arg1)
    local actor = actorMgr:GetActor(datas.Q19087Trigger3_.alias)
    if actor ~= nil then
        actor:DestroySelf()
    end

    local v = actorMgr:GetActor(datas.Q19087Trigger4_.alias)
    if v ~= nil then
        v:DestroySelf()
    end
end

function Quest19087:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest19087:OnMainCanceled(arg1)
    self:SafeDestroyQuestNpc(npcs.Npc1027Data.alias, 1004)
    self:SafeDestroyQuestNpc(npcs.Npc140901Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc11009Data.alias, 1004)
    self:LightNotifyTo("Npc1409", 0, true)
    self:CountDownUITerminate()
    self:CountNumUITerminate()
    self:UnCallFunc(self.CountDown)
    local actor = actorMgr:GetActor(datas.Q19087Trigger3_.alias)
    if actor ~= nil then
        actor:DestroySelf()
    end

    local v = actorMgr:GetActor(datas.Q19087Trigger4_.alias)
    if v ~= nil then
        v:DestroySelf()
    end
end

function Quest19087:destroyNoel()
    print("destroyNoel")
    self:SafeDestroyQuestNpc(npcs.Npc1027Data.alias, 3)
end

function Quest19087:createNoelsuccess()
    print("createNoelsuccess")
    self:FinishQuestID(false, 1908715)
    self:CreateQuestNpcById(1908710, npcs.Npc1027Data.id, 1)
    self:RequestCoopInteractionFromSubStartPoint(103402, 1908704)
    self:RequestInteraction(npcs.Npc1027Data.alias)
end

function Quest19087:destroyNPC()
    self:SafeDestroyQuestNpc(npcs.Npc1027Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc140901Data.alias, 3)
    self:LightNotifyTo("Npc1409", 0, true)
end

function Quest19087:createNoelfail()
    print("createNoelfail")
    self:FinishQuestID(false, 1908715)
    self:CreateQuestNpcById(1908711, npcs.Npc1027Data.id, 1)
    self:RequestCoopInteractionFromSubStartPoint(103402, 1908705)
    self:RequestInteraction(npcs.Npc1027Data.alias)
end

function Quest19087:blackscreen1()
    print("blackscreen1")
    self:ShowBlackScreen(0.5, 0.5, 0.5, self.createNoelsuccess, nil, nil, "")
end

function Quest19087:blackscreen2()
    print("blackscreen2")
    self:ShowBlackScreen(0.5, 0.5, 0.5, self.createNoelfail, nil, nil, "")
end

function Quest19087:destroyreader()
    print("destroyreader")
    self:SafeDestroyQuestNpc(npcs.Npc1027Data.alias, 1004)
    self:SafeDestroyQuestNpc(npcs.Npc11009Data.alias, 1004)
end

function Quest19087:destroysalius()
    self:SafeDestroyQuestNpc(npcs.Npc140901Data.alias, 3)
    self:LightNotifyTo("Npc1409", 0, true)
end

function Quest19087:OnSubStart1908708(arg1)
    print("OnSubStart1908708")
    actorMgr:CreateActorWithPos(datas.Q19087Trigger3_.alias, datas.Q19087Trigger3_.script, datas.Q19087Trigger3_.id, 0, datas.Q19087Trigger3_.point.pos, datas.Q19087Trigger3_.point.rot, true, false, 3)
    self:NotifyTo("Npc1409", 1, true)
    self:CreateQuestNpc(arg1, npcs.Npc140901Data.id, 1)
end

function Quest19087:OnSubFinish1908708(arg1)
    print("OnSubFinish1908708")
end

function Quest19087:OnSubFailed1908708(arg1)
    print("OnSubFailed1908708")
end

function Quest19087:OnSubStart1908701(arg1)
    print("OnSubStart1908701")
    self:NotifyTo("Npc1409", 1, true)
    self:RequestCoopInteractionFromSubStartPoint(103402, 1908701)
end

function Quest19087:OnSubFinish1908701(arg1)
    self:ShowBlackScreen(0.5, 0.5, 0.5, self.destroyNoel, nil, nil, "")
end

function Quest19087:OnSubFailed1908701(arg1)
    print("OnSubFailed1908701")
end

function Quest19087:OnSubStart1908706(arg1)
    print("OnSubStart1908706")
    self:NotifyTo("Npc1409", 1, true)
    actorMgr:CreateActorWithPos(datas.Q19087Trigger4_.alias, datas.Q19087Trigger4_.script, datas.Q19087Trigger4_.id, 0, datas.Q19087Trigger4_.point.pos, datas.Q19087Trigger4_.point.rot, true, false, 3)
end

function Quest19087:OnSubFinish1908706(arg1)
    print("OnSubFinish1908706")
    self:ShowBlackScreen(0.5, 0.5, 0.5, nil, nil, nil, "")
end

function Quest19087:OnSubFailed1908706(arg1)
    print("OnSubFailed1908706")
end

function Quest19087:OnSubStart1908703(arg1)
    print("OnSubStart1908703")
    self:NotifyTo("Npc1409", 1, true)
end

function Quest19087:OnSubFinish1908703(arg1)
    self:FinishQuestID(true, 1908704)
end

function Quest19087:OnSubFailed1908703(arg1)
    print("OnSubFailed1908703")
end

function Quest19087:OnSubStart1908704(arg1)
    print("OnSubStart1908704")
    self:NotifyTo("Npc1409", 1, true)
end

function Quest19087:OnSubFinish1908704(arg1)
    self:FinishQuestID(true, 1908703)
end

function Quest19087:OnSubFailed1908704(arg1)
    print("OnSubFailed1908704")
end

function Quest19087:OnSubStart1908715(arg1)
    print("OnSubStart1908715")
end

function Quest19087:OnSubFinish1908715(arg1)
    print("OnSubFinish1908715")
end

function Quest19087:OnSubFailed1908715(arg1)
    print("OnSubFailed1908715")
end

function Quest19087:OnSubStart1908710(arg1)
    print("OnSubStart1908710")
    self:NotifyTo("Npc1409", 1, true)
    self:blackscreen1()
end

function Quest19087:OnSubFinish1908710(arg1)
    print("OnSubFinish1908710")
    self:ShowBlackScreen(0.5, 0.5, 0.5, self.destroyNoel, nil, nil, "")
    self:FinishQuestID(false, 1908711)
end

function Quest19087:OnSubFailed1908710(arg1)
    print("OnSubFailed1908710")
end

function Quest19087:OnSubStart1908711(arg1)
    print("OnSubStart1908711")
    self:NotifyTo("Npc1409", 1, true)
    self:blackscreen2()
end

function Quest19087:OnSubFinish1908711(arg1)
    print("OnSubFinish1908711")
    self:ShowBlackScreen(0.5, 0.5, 0.5, self.destroyNoel, nil, nil, "")
    self:FinishQuestID(false, 1908710)
end

function Quest19087:OnSubFailed1908711(arg1)
    print("OnSubFailed1908711")
end

function Quest19087:OnSubStart1908705(arg1)
    print("OnSubStart1908705")
end

function Quest19087:OnSubFinish1908705(arg1)
    print("OnSubFinish1908705")
end

function Quest19087:OnSubFailed1908705(arg1)
    print("OnSubFailed1908705")
end

function Quest19087:OnSubStart1908702(arg1)
    print("OnSubStart1908702")
    self:NotifyTo("Npc1409", 1, true)
    self:CreateQuestNpc(arg1, npcs.Npc140901Data.id, 2)
    self:RequestCoopInteractionFromSubStartPoint(103402, 1908702)
end

function Quest19087:OnSubFinish1908702(arg1)
    print("OnSubFinish1908702")
    self:ShowBlackScreen(0.5, 0.5, 0.5, self.destroyNPC, nil, nil, "")
end

function Quest19087:OnSubFailed1908702(arg1)
    print("OnSubFailed1908702")
end

function Quest19087:OnSubStart1908712(arg1)
    print("OnSubStart1908712")
    self:NotifyTo("Npc1409", 1, true)
    self:CreateQuestNpc(arg1, npcs.Npc140901Data.id, 2)
end

function Quest19087:OnSubFinish1908712(arg1)
    print("OnSubFinish1908712")
    self:ShowBlackScreen(0.5, 0.5, 0.5, self.destroysalius, nil, nil, "")
end

function Quest19087:OnSubFailed1908712(arg1)
    print("OnSubFailed1908712")
end

function Quest19087:OnSubStart1908714(arg1)
    print("OnSubStart1908714")
    self:NotifyTo("Npc1409", 1, true)
    self:RequestCoopInteractionFromSubStartPoint(103402, 1908802)
end

function Quest19087:OnSubFinish1908714(arg1)
    print("OnSubFinish1908714")
end

function Quest19087:OnSubFailed1908714(arg1)
    print("OnSubFailed1908714")
end

function Quest19087:OnSubStart1908713(arg1)
    print("OnSubStart1908713")
    self:NotifyTo("Npc1409", 1, true)
    self:RequestCoopInteractionFromSubStartPoint(103402, 1908703)
end

function Quest19087:OnSubFinish1908713(arg1)
    print("OnSubFinish1908713")
end

function Quest19087:OnSubFailed1908713(arg1)
    print("OnSubFailed1908713")
end

function Quest19087:OnSubStart1908709(arg1)
    self:CreateQuestNpc(arg1, npcs.Npc1027Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc1027Data.alias):DoFreeStyle(1240, true, nil, true, true)
    self:CreateQuestNpc(arg1, npcs.Npc11009Data.id, 2)
    self:RequestCoopInteractionFromSubStartPoint(103402, 1908902)
    actorMgr:DestroyNpcActorByAlias("Npc102719068")
end

function Quest19087:OnSubFinish1908709(arg1)
    print("OnSubFinish1908709")
    self:ShowBlackScreen(0.5, 0.5, 0.5, self.destroyreader, nil, nil, "")
end

function Quest19087:OnSubFailed1908709(arg1)
    print("OnSubFailed1908709")
end

function Quest19087:OnSubStart1908707(arg1)
    print("OnSubStart1908707")
end

function Quest19087:OnSubFinish1908707(arg1)
    print("OnSubFinish1908707")
end

function Quest19087:OnSubFailed1908707(arg1)
    print("OnSubFailed1908707")
end

return Quest19087
