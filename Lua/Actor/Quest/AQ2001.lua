require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest2001 = class("Quest2001", QuestActorProxy)
Quest2001.defaultAlias = "Quest2001"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest2001:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest2001:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["200101"] = self.OnSubStart200101,
        ["200102"] = self.OnSubStart200102,
        ["200114"] = self.OnSubStart200114,
        ["200103"] = self.OnSubStart200103,
        ["200104"] = self.OnSubStart200104,
        ["200105"] = self.OnSubStart200105,
        ["200106"] = self.OnSubStart200106,
        ["200107"] = self.OnSubStart200107,
        ["200108"] = self.OnSubStart200108,
        ["200109"] = self.OnSubStart200109,
        ["200110"] = self.OnSubStart200110,
        ["200111"] = self.OnSubStart200111,
        ["200112"] = self.OnSubStart200112,
        ["200113"] = self.OnSubStart200113
    }
end

function Quest2001:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["200101"] = self.OnSubFinish200101,
        ["200102"] = self.OnSubFinish200102,
        ["200114"] = self.OnSubFinish200114,
        ["200103"] = self.OnSubFinish200103,
        ["200104"] = self.OnSubFinish200104,
        ["200105"] = self.OnSubFinish200105,
        ["200106"] = self.OnSubFinish200106,
        ["200107"] = self.OnSubFinish200107,
        ["200108"] = self.OnSubFinish200108,
        ["200109"] = self.OnSubFinish200109,
        ["200110"] = self.OnSubFinish200110,
        ["200111"] = self.OnSubFinish200111,
        ["200112"] = self.OnSubFinish200112,
        ["200113"] = self.OnSubFinish200113
    }
end

function Quest2001:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest2001:Start()
    print("Start")
end

function Quest2001:OnDestroy()
    print("OnDestroy")
end

function Quest2001:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest2001:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest2001:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest2001:Black14()
    print("Black14")
    this:ShowBlackScreen(0.5, 1, 0.5, self.Finish14)
end

function Quest2001:Finish14()
    print("Finish14")
    actorUtils.FinishQuestID(false, 200114)
    if this:GetQuestNpcActor(npcs.Npc1031Data.alias) == actorMgr.dummyActor then
        return
    else
        this:RequestInteraction(npcs.Npc1031Data.alias)
    end
end

function Quest2001:ReleaseInput()
    print("ReleaseInput")
    this:EnablePlayerInput(true)
end

function Quest2001:RequestRongshi()
    print("RequestRongshi")
    this:CreateQuestNpcById(200105, npcs.Npc10413Data.id, 3)
    this:RequestInteraction(npcs.Npc10413Data.alias)
end

function Quest2001:DelTrigger05()
    print("DelTrigger05")
    local actor = actorMgr:GetActor(datas.Q200105Trigger_.alias)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest2001:DestroyKazuha09()
    print("DestroyKazuha09")
    this:SafeDestroyQuestNpc(npcs.Npc1032Data.alias, 3)
    this:CallDelay(2, self.CreateKazuha10)
end

function Quest2001:Show02()
    print("Show02")
    this:NarratorOnlyTaskByData(datas.NarratorWithId01)
    this:CountDownUIStart(0, 3, 3)
end

function Quest2001:DelTrigger02()
    print("DelTrigger02")
    local actor = actorMgr:GetActor(datas.Q200102Trigger_.alias)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest2001:CreateKazuha10()
    print("CreateKazuha10")
    this:CreateQuestNpcById(200110, npcs.Npc1032Data.id, 1)
end

function Quest2001:DelayShow02()
    print("DelayShow02")
    this:CallDelay(1, self.Show02)
end

function Quest2001:DelayShow05()
    print("DelayShow05")
    this:CallDelay(1, self.Show05)
end

function Quest2001:Show05()
    print("Show05")
    this:NarratorOnlyTaskByData(datas.NarratorWithId03)
    this:CountDownUIStart(0, 3, 3)
end

function Quest2001:Black05()
    print("Black05")
    this:ShowBlackScreen(0.5, 1, 0.5, self.RequestRongshi, nil, nil, "")
end

function Quest2001:Narrator06()
    print("Narrator06")
    this:NarratorOnlyTaskByData(datas.NarratorWithId04)
end

function Quest2001:PaimonDis()
    print("PaimonDis")
    self:ActionSafeCall(function(arg1)
        local questNpcActor = arg1:GetQuestNpcActor(npcs.PaimonData.alias)
        if questNpcActor ~= nil then
            if questNpcActor.uActor ~= nil then
                questNpcActor:DestroyWithDisappear(false)
            end
        end
    end)

    self:ActionSafeCall(function(arg1)
        local actor = actorMgr:GetActor(npcs.PaimonData.alias)
        if actor ~= nil then
            if actor.uActor ~= nil then
                actor:DestroyWithDisappear(false)
            end
        end
    end)
end

function Quest2001:BanInput()
    print("BanInput")
    this:EnablePlayerInput(false)
    this:CallDelay(4, self.ReleaseInput)
end

function Quest2001:Narrator08()
    print("Narrator08")
    this:NarratorOnlyTaskByData(datas.NarratorWithId05)
end

function Quest2001:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1 then
        actorUtils.FinishQuestID(false, 200101)
    elseif arg1 == 2 then
        actorMgr:GetActor(actorAlias):TransmitPlayerByQuestId(200113, 1)
    elseif arg1 == 3 then
        self:ActionSafeCall(function(arg1)
            local questNpcActor = arg1:GetQuestNpcActor(npcs.PaimonData.alias)
            if questNpcActor ~= nil then
                if questNpcActor.uActor ~= nil then
                    questNpcActor:DestroyWithDisappear(false)
                end
            end
        end)

        self:ActionSafeCall(function(arg1)
            local actor = actorMgr:GetActor(npcs.PaimonData.alias)
            if actor ~= nil then
                if actor.uActor ~= nil then
                    actor:DestroyWithDisappear(false)
                end
            end
        end)
    end
end

function Quest2001:PkTransmit200101()
    print("PkTransmit200101")
    this:TransmitPlayerByQuestId(200101, 1, self.DelayShow02, self.BanInput)
end

function Quest2001:PkTransmit200104()
    print("PkTransmit200104")
    this:TransmitPlayerByQuestId(200104, 1, self.DelayShow05, self.BanInput)
end

function Quest2001:OnSubStart200101(arg1)
    print("OnSubStart200101")
end

function Quest2001:OnSubFinish200101(arg1)
    print("OnSubFinish200101")
    this:SafeDestroyQuestNpc(npcs.Npc10419Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc10420Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc10421Data.alias, 3)
    this:PaimonDis()
    this:ActionSafeCall(self.PkTransmit200101)
end

function Quest2001:OnSubStart200102(arg1)
    print("OnSubStart200102")
    this:CreateQuestNpc(arg1, npcs.Npc1031Data.id, 1)
    this:CreateQuestNpc(arg1, npcs.Npc1032Data.id, 2)
    actorMgr:CreateActorWithPos(datas.Q200102Trigger_.alias, datas.Q200102Trigger_.script, datas.Q200102Trigger_.id, 0, datas.Q200102Trigger_.point.pos, datas.Q200102Trigger_.point.rot, true, false, 3)
end

function Quest2001:OnSubFinish200102(arg1)
    print("OnSubFinish200102")
    this:DelTrigger02()
    this:CountDownUITerminate()
end

function Quest2001:OnSubStart200114(arg1)
    print("OnSubStart200114")
    this:NarratorOnlyTaskByData(datas.NarratorWithId02, self.Black14)
end

function Quest2001:OnSubFinish200114(arg1)
    print("OnSubFinish200114")
end

function Quest2001:OnSubStart200103(arg1)
    print("OnSubStart200103")
end

function Quest2001:OnSubFinish200103(arg1)
    print("OnSubFinish200103")
    this:PaimonDis()
end

function Quest2001:OnSubStart200104(arg1)
    print("OnSubStart200104")
    this:CreateQuestNpc(arg1, npcs.Npc1031Data.id, 1)
    this:GetQuestNpcActor(npcs.Npc1031Data.alias):DoFreeStyle(1230, true, nil, true, true, false)
    this:CreateQuestNpc(arg1, npcs.Npc1032Data.id, 2)
    this:GetQuestNpcActor(npcs.Npc1032Data.alias):DoFreeStyle(1180, true, nil, true, true, false)
end

function Quest2001:OnSubFinish200104(arg1)
    print("OnSubFinish200104")
    this:PaimonDis()
    this:PkTransmit200104()
end

function Quest2001:OnSubStart200105(arg1)
    print("OnSubStart200105")
    this:CreateQuestNpc(arg1, npcs.Npc1031Data.id, 1)
    this:CreateQuestNpc(arg1, npcs.Npc1032Data.id, 2)
    actorMgr:CreateActorWithPos(datas.Q200105Trigger_.alias, datas.Q200105Trigger_.script, datas.Q200105Trigger_.id, 0, datas.Q200105Trigger_.point.pos, datas.Q200105Trigger_.point.rot, true, false, 3)
    this:GetQuestNpcActor(npcs.Npc1031Data.alias):DoFreeStateTrigger()
    this:GetQuestNpcActor(npcs.Npc1032Data.alias):DoFreeStateTrigger()
end

function Quest2001:OnSubFinish200105(arg1)
    print("OnSubFinish200105")
    this:DelTrigger05()
    this:CountDownUITerminate()
    this:CallDelay(2, self.Black05)
end

function Quest2001:OnSubStart200106(arg1)
    print("OnSubStart200106")
end

function Quest2001:OnSubFinish200106(arg1)
    print("OnSubFinish200106")
    this:SafeDestroyQuestNpc(npcs.Npc10413Data.alias, 3)
    this:PaimonDis()
    this:CallDelay(2, self.Narrator06)
end

function Quest2001:OnSubStart200107(arg1)
    print("OnSubStart200107")
    this:CreateQuestNpc(arg1, npcs.Npc1031Data.id, 1)
    this:GetQuestNpcActor(npcs.Npc1031Data.alias):DoFreeStyle(1230, true, nil, true, true, false)
    this:CreateQuestNpc(arg1, npcs.Npc1032Data.id, 2)
    this:GetQuestNpcActor(npcs.Npc1032Data.alias):DoFreeStyle(1170, true, nil, true, true, false)
end

function Quest2001:OnSubFinish200107(arg1)
    print("OnSubFinish200107")
    this:PaimonDis()
end

function Quest2001:OnSubStart200108(arg1)
    print("OnSubStart200108")
end

function Quest2001:OnSubFinish200108(arg1)
    print("OnSubFinish200108")
    this:PaimonDis()
    this:CallDelay(2, self.Narrator08)
end

function Quest2001:OnSubStart200109(arg1)
    print("OnSubStart200109")
end

function Quest2001:OnSubFinish200109(arg1)
    print("OnSubFinish200109")
    this:PaimonDis()
end

function Quest2001:OnSubStart200110(arg1)
    print("OnSubStart200110")
    this:CreateQuestNpc(arg1, npcs.Npc1032Data.id, 1, false, 0)
    actorMgr:CreateActorWithPos(datas.Q200110Trigger_.alias, datas.Q200110Trigger_.script, datas.Q200110Trigger_.id, 0, datas.Q200110Trigger_.point.pos, datas.Q200110Trigger_.point.rot, true, false, 3)
end

function Quest2001:OnSubFinish200110(arg1)
    print("OnSubFinish200110")
    this:SafeDestroyQuestNpc(npcs.Npc1031Data.alias, 3)
end

function Quest2001:OnSubStart200111(arg1)
    print("OnSubStart200111")
end

function Quest2001:OnSubFinish200111(arg1)
    print("OnSubFinish200111")
    this:PaimonDis()
end

function Quest2001:OnSubStart200112(arg1)
    print("OnSubStart200112")
end

function Quest2001:OnSubFinish200112(arg1)
    print("OnSubFinish200112")
end

function Quest2001:OnSubStart200113(arg1)
    print("OnSubStart200113")
end

function Quest2001:OnSubFinish200113(arg1)
    print("OnSubFinish200113")
    this:SafeDestroyQuestNpc(npcs.Npc1032Data.alias, 3)
    this:PaimonDis()
end

return Quest2001
