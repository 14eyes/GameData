require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70009 = class("Quest70009", QuestActorProxy)
Quest70009.defaultAlias = "Quest70009"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest70009:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest70009:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7000901"] = self.OnSubStart7000901,
        ["7000903"] = self.OnSubStart7000903,
        ["7000904"] = self.OnSubStart7000904,
        ["7000905"] = self.OnSubStart7000905,
        ["7000906"] = self.OnSubStart7000906,
        ["7000907"] = self.OnSubStart7000907,
        ["7000908"] = self.OnSubStart7000908,
        ["7000909"] = self.OnSubStart7000909,
        ["7000910"] = self.OnSubStart7000910,
        ["7000911"] = self.OnSubStart7000911,
        ["7000912"] = self.OnSubStart7000912,
        ["7000913"] = self.OnSubStart7000913,
        ["7000902"] = self.OnSubStart7000902
    }
end

function Quest70009:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7000901"] = self.OnSubFinish7000901,
        ["7000903"] = self.OnSubFinish7000903,
        ["7000904"] = self.OnSubFinish7000904,
        ["7000905"] = self.OnSubFinish7000905,
        ["7000906"] = self.OnSubFinish7000906,
        ["7000907"] = self.OnSubFinish7000907,
        ["7000908"] = self.OnSubFinish7000908,
        ["7000909"] = self.OnSubFinish7000909,
        ["7000910"] = self.OnSubFinish7000910,
        ["7000911"] = self.OnSubFinish7000911,
        ["7000912"] = self.OnSubFinish7000912,
        ["7000913"] = self.OnSubFinish7000913,
        ["7000902"] = self.OnSubFinish7000902
    }
end

function Quest70009:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7000901"] = self.OnSubFailed7000901,
        ["7000903"] = self.OnSubFailed7000903,
        ["7000904"] = self.OnSubFailed7000904,
        ["7000905"] = self.OnSubFailed7000905,
        ["7000906"] = self.OnSubFailed7000906,
        ["7000907"] = self.OnSubFailed7000907,
        ["7000908"] = self.OnSubFailed7000908,
        ["7000909"] = self.OnSubFailed7000909,
        ["7000910"] = self.OnSubFailed7000910,
        ["7000911"] = self.OnSubFailed7000911,
        ["7000912"] = self.OnSubFailed7000912,
        ["7000913"] = self.OnSubFailed7000913,
        ["7000902"] = self.OnSubFailed7000902
    }
end

function Quest70009:Start()
    print("Start")
end

function Quest70009:OnDestroy()
    print("OnDestroy")
end

function Quest70009:OnMainFinished(arg1)
    print("OnMainFinished")
    self:DestroyQuestNpcActor(npcs.Npc1517Data.alias, 1008)
    self:DestroyQuestNpcActor(npcs.Npc1599DataChurch.alias, 1008)
    self:DestroyQuestNpcActor(npcs.Npc1599Data711.alias, 3)
    self:NotifyTo("Npc1600", 0, true)
    self:NotifyTo("Npc1473", 0, true)
    self:SafeDestroyQuestNpc(npcs.Npc1423Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1425Data.alias, 3)
end

function Quest70009:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70009:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:DestroyQuestNpcActor(npcs.Npc1517Data.alias, 1008)
    self:DestroyQuestNpcActor(npcs.Npc1599DataChurch.alias, 1008)
    self:DestroyQuestNpcActor(npcs.Npc1599Data711.alias, 3)
    actorMgr:DestroyEntityActor(datas.Q70009Trigger_.alias, 3, false)
    actorMgr:DestroyEntityActor(datas.Q70009TriggerInteract_.alias, 3, false)
    self:SafeDestroyQuestNpc(npcs.Npc1423Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1425Data.alias, 3)
    self:NotifyTo("Npc1600", 0, true)
    self:NotifyTo("Npc1473", 0, true)
end

function Quest70009:DestroyLilly()
    print("DestroyLilly")
    self:DestroyQuestNpcActor(npcs.Npc1599DataChurch.alias, 3)
end

function Quest70009:DestroyVictorLilly()
    print("DestroyVictorLilly")
    self:DestroyQuestNpcActor(npcs.Npc1517Data.alias, 1008)
    self:DestroyQuestNpcActor(npcs.Npc1599DataChurch.alias, 1008)
end

function Quest70009:InvokeOnInteraction(arg1)
    if arg1 == 1 then
        local actor = actorMgr:GetActor(clientData.ActorAlias)
        if actor ~= nil then
            actor:FinishQuestID(false, 7000909)
        end

        print("Talk7000904:Finishi Quest 7000909")
    end
end

function Quest70009:OnSubStart7000901(arg1)
    print("OnSubStart7000901")
end

function Quest70009:OnSubFinish7000901(arg1)
    print("OnSubFinish7000901")
end

function Quest70009:OnSubFailed7000901(arg1)
    print("OnSubFailed7000901")
end

function Quest70009:OnSubStart7000903(arg1)
    print("OnSubStart7000903")
    self.CreateQuestNpc(self, arg1, npcs.Npc1517Data.id, 1)
    self.CreateQuestNpc(self, arg1, npcs.Npc1599DataChurch.id, 2)
    self.ActionSafeCall(self, function()
        self:NotifyTo("Npc1600", 1, true)
        self:NotifyTo("Npc1473", 1, true)
    end)
end

function Quest70009:OnSubFinish7000903(arg1)
    print("OnSubFinish7000903")
end

function Quest70009:OnSubFailed7000903(arg1)
    print("OnSubFailed7000903")
end

function Quest70009:OnSubStart7000904(arg1)
    print("OnSubStart7000904")
    self.ActionSafeCall(self, function()
        self:NotifyTo("Npc1600", 1, true)
        self:NotifyTo("Npc1473", 1, true)
    end)
end

function Quest70009:OnSubFinish7000904(arg1)
    print("OnSubFinish7000904")
    self:ShowBlackScreen(0.5, 1, 0.5, self.DestroyLilly, nil, nil, "")
end

function Quest70009:OnSubFailed7000904(arg1)
    print("OnSubFailed7000904")
end

function Quest70009:OnSubStart7000905(arg1)
    print("OnSubStart7000905")
    actorMgr:CreateActorWithPos(datas.Q70009Trigger_.alias, datas.Q70009Trigger_.script, datas.Q70009Trigger_.id, 0, datas.Q70009Trigger_.point.pos, datas.Q70009Trigger_.point.rot, true, false, 3)
    self.ActionSafeCall(self, function()
        self:NotifyTo("Npc1600", 1, true)
        self:NotifyTo("Npc1473", 1, true)
        self:NotifyTo("Npc1599", 1, true)
    end)
end

function Quest70009:OnSubFinish7000905(arg1)
    print("OnSubFinish7000905")
    self:NarratorOnlyTask(datas.NarratorTable1, nil, "")
end

function Quest70009:OnSubFailed7000905(arg1)
    print("OnSubFailed7000905")
end

function Quest70009:OnSubStart7000906(arg1)
    print("OnSubStart7000906")
    self.CreateQuestNpc(self, arg1, npcs.Npc1599Data711.id, 3)
    self.ActionSafeCall(self, function()
        self:CreateQuestNpc(arg1, npcs.Npc1423Data.id, 7)
        self:NotifyTo("Npc1600", 1, true)
        self:NotifyTo("Npc1473", 1, true)
    end)
end

function Quest70009:OnSubFinish7000906(arg1)
    print("OnSubFinish7000906")
    self.ShowBlackScreen(self, 0.5, 1, 0.5, function()
        self:CreateQuestNpc(arg1, npcs.Npc1599DataFeed.id, 4)
        self:SafeDestroyQuestNpc(npcs.Npc1423Data.alias, 3)
    end, nil, nil, "")
end

function Quest70009:OnSubFailed7000906(arg1)
    print("OnSubFailed7000906")
end

function Quest70009:OnSubStart7000907(arg1)
    print("OnSubStart7000907")
    self.GetQuestNpcActor(self, npcs.Npc1599DataFeed.alias):Standby()
    self.ActionSafeCall(self, function()
        self:NotifyTo("Npc1600", 1, true)
        self:NotifyTo("Npc1473", 1, true)
        self:NotifyTo("Npc1423", 2, true)
    end)
end

function Quest70009:OnSubFinish7000907(arg1)
    print("OnSubFinish7000907")
end

function Quest70009:OnSubFailed7000907(arg1)
    print("OnSubFailed7000907")
end

function Quest70009:OnSubStart7000908(arg1)
    print("OnSubStart7000908")
    self.ActionSafeCall(self, function()
        self:NotifyTo("Npc1600", 1, true)
        self:NotifyTo("Npc1473", 1, true)
    end)
end

function Quest70009:OnSubFinish7000908(arg1)
    print("OnSubFinish7000908")
    self:ShowBlackScreen(0.5, 1, 0.5, self.DestroyLilly, nil, nil, "")
end

function Quest70009:OnSubFailed7000908(arg1)
    print("OnSubFailed7000908")
end

function Quest70009:OnSubStart7000909(arg1)
    print("OnSubStart7000909")
    self.ActionSafeCall(self, function()
        self:NotifyTo("Npc1600", 1, true)
        self:NotifyTo("Npc1473", 1, true)
    end)
end

function Quest70009:OnSubFinish7000909(arg1)
    print("OnSubFinish7000909")
end

function Quest70009:OnSubFailed7000909(arg1)
    print("OnSubFailed7000909")
end

function Quest70009:OnSubStart7000910(arg1)
    print("OnSubStart7000910")
    self.ActionSafeCall(self, function()
        self:CreateQuestNpc(arg1, npcs.Npc1423Data.id, 7)
        self:NotifyTo("Npc1600", 1, true)
        self:NotifyTo("Npc1473", 1, true)
        self:NotifyTo("Npc1599", 1, true)
    end)
end

function Quest70009:OnSubFinish7000910(arg1)
    print("OnSubFinish7000910")
    self.ShowBlackScreen(self, 0.5, 1, 0.5, function()
        self:DestroyLilly()
        self:SafeDestroyQuestNpc(npcs.Npc1423Data.alias, 3)
    end, nil, nil, "")
end

function Quest70009:OnSubFailed7000910(arg1)
    print("OnSubFailed7000910")
end

function Quest70009:OnSubStart7000911(arg1)
    print("OnSubStart7000911")
    self.ActionSafeCall(self, function()
        self:CreateQuestNpc(arg1, npcs.Npc1425Data.id, 8)
        self:NotifyTo("Npc1600", 1, true)
        self:NotifyTo("Npc1473", 1, true)
        self:NotifyTo("Npc1599", 1, true)
    end)
end

function Quest70009:OnSubFinish7000911(arg1)
    print("OnSubFinish7000911")
    self.ShowBlackScreen(self, 0.5, 1, 0.5, function()
        self:DestroyLilly()
        self:SafeDestroyQuestNpc(npcs.Npc1425Data.alias, 3)
    end, nil, nil, "")

    self.NarratorOnlyTask(self, datas.NarratorTable2, nil, "")
end

function Quest70009:OnSubFailed7000911(arg1)
    print("OnSubFailed7000911")
end

function Quest70009:OnSubStart7000912(arg1)
    print("OnSubStart7000912")
    actorMgr:CreateActorWithPos(datas.Q70009TriggerInteract_.alias, datas.Q70009TriggerInteract_.script, datas.Q70009TriggerInteract_.id, 0, datas.Q70009TriggerInteract_.point.pos, datas.Q70009TriggerInteract_.point.rot, true, false, 3)
    self.ActionSafeCall(self, function()
        self:NotifyTo("Npc1600", 1, true)
        self:NotifyTo("Npc1473", 1, true)
        self:NotifyTo("Npc1599", 1, true)
    end)
end

function Quest70009:OnSubFinish7000912(arg1)
    print("OnSubFinish7000912")
    self:ShowBlackScreen(0.5, 1, 0.5, self.DestroyLilly, nil, nil, "")
end

function Quest70009:OnSubFailed7000912(arg1)
    print("OnSubFailed7000912")
end

function Quest70009:OnSubStart7000913(arg1)
    print("OnSubStart7000913")
    self.ActionSafeCall(self, function()
        self:NotifyTo("Npc1600", 1, true)
        self:NotifyTo("Npc1473", 1, true)
        self:NotifyTo("Npc1599", 1, true)
    end)
end

function Quest70009:OnSubFinish7000913(arg1)
    print("OnSubFinish7000913")
end

function Quest70009:OnSubFailed7000913(arg1)
    print("OnSubFailed7000913")
end

function Quest70009:OnSubStart7000902(arg1)
    print("OnSubStart7000902")
    self.CreateQuestNpc(self, arg1, npcs.Npc1599DataChurch.id, 2)
    self.ActionSafeCall(self, function()
        self:NotifyTo("Npc1600", 1, true)
        self:NotifyTo("Npc1473", 1, true)
    end)
end

function Quest70009:OnSubFinish7000902(arg1)
    print("OnSubFinish7000902")
    self:ShowBlackScreen(0.5, 1, 0.5, self.DestroyVictorLilly, nil, nil, "")
end

function Quest70009:OnSubFailed7000902(arg1)
    print("OnSubFailed7000902")
end

return Quest70009
