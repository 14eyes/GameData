require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest11009 = class("Quest11009", QuestActorProxy)
Quest11009.defaultAlias = "Quest11009"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest11009:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest11009:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1100901"] = self.OnSubStart1100901,
        ["1100905"] = self.OnSubStart1100905,
        ["1100902"] = self.OnSubStart1100902,
        ["1100903"] = self.OnSubStart1100903,
        ["1100907"] = self.OnSubStart1100907,
        ["1100906"] = self.OnSubStart1100906,
        ["1100904"] = self.OnSubStart1100904
    }
end

function Quest11009:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1100901"] = self.OnSubFinish1100901,
        ["1100905"] = self.OnSubFinish1100905,
        ["1100902"] = self.OnSubFinish1100902,
        ["1100903"] = self.OnSubFinish1100903,
        ["1100907"] = self.OnSubFinish1100907,
        ["1100906"] = self.OnSubFinish1100906,
        ["1100904"] = self.OnSubFinish1100904
    }
end

function Quest11009:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["1100901"] = self.OnSubFailed1100901,
        ["1100905"] = self.OnSubFailed1100905,
        ["1100902"] = self.OnSubFailed1100902,
        ["1100903"] = self.OnSubFailed1100903,
        ["1100904"] = self.OnSubFailed1100904
    }
end

function Quest11009:Start()
    print("Start")
end

function Quest11009:OnDestroy()
    print("OnDestroy")
end

function Quest11009:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest11009:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest11009:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest11009:NpcCreate(arg1, arg2, arg3)
    self:CreateQuestNpc(arg1, arg2, arg3)
end

function Quest11009:NpcDestroy(arg1, arg2)
    self:SafeDestroyQuestNpc(arg1, arg2)
end

function Quest11009:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    print("Dialogue refresh medicine paper")
    local actor = actorMgr:GetActor(clientData.ActorAlias)
    if arg1 == 1 then
        actor:FinishQuestID(false, 1100906)
    elseif arg1 == 2 then
        actor:FinishQuestID(false, 1100907)
    end
end

function Quest11009:OnSubStart1100901(arg1)
    print("OnSubStart1100901")
    self:NpcCreate(arg1, npcs.Npc10211Data.id, 0)
    self:NpcCreate(arg1, npcs.Npc12373Data.id, 0)
    self:NpcCreate(arg1, npcs.Npc12374Data.id, 0)
    self:CreateQuestNpc(arg1, npcs.Npc12341Data.id, 0)
    self:CreateQuestNpc(arg1, npcs.Npc12342Data.id, 0)
    self:CreateQuestNpc(arg1, npcs.Npc12343Data.id, 0)
    self:CreateQuestNpc(arg1, npcs.Npc12442Data.id, 0)
    actorMgr:CreateActorWithPos("Q11009TriggerStart", "Actor/Gadget/Q11009TriggerStart", 70900002, 0, {x = -641.6898, y = 251.9508, z = 419.8184}, {x = 0, y = 0, z = 0}, true, false, 3)
    self:NotifyTo(npcs.Npc2071Data.alias, 1, true)
end

function Quest11009:OnSubFinish1100901(arg1)
    print("OnSubFinish1100901")
    self:AfterMainPageActiveSafeCall(function(arg1)
        arg1:NpcDestroy(npcs.Npc10211Data.alias, 3)
        arg1:NpcDestroy(npcs.Npc12373Data.alias, 3)
        arg1:NpcDestroy(npcs.Npc12374Data.alias, 3)
        arg1:NpcDestroy(npcs.Npc12341Data.alias, 3)
        arg1:NpcDestroy(npcs.Npc12342Data.alias, 3)
        arg1:NpcDestroy(npcs.Npc12343Data.alias, 3)
        arg1:NpcDestroy(npcs.Npc12442Data.alias, 3)
        arg1:NpcDestroy(npcs.Npc12443Data.alias, 3)
        arg1:NpcDestroy(npcs.Npc12444Data.alias, 3)
        arg1:CallDelay(1.5, function(arg1)
            arg1:NarratorOnlyTaskByData(datas.NarratorWithId)
        end)
    end)
end

function Quest11009:OnSubFailed1100901(arg1)
    print("OnSubFailed1100901")
end

function Quest11009:OnSubStart1100905(arg1)
    print("OnSubStart1100905")
    self:ActionSafeCall(function(arg1_2)
        arg1_2:NpcCreate(arg1, npcs.Npc12344Data.id, 0)
        arg1_2:NpcCreate(arg1, npcs.Npc12345Data.id, 0)
        arg1_2:NpcCreate(arg1, npcs.Npc12346Data.id, 0)
        arg1_2:NpcCreate(arg1, npcs.Npc12371Data.id, 0)
        arg1_2:NpcCreate(arg1, npcs.Npc12347Data.id, 0)
        arg1_2:NpcCreate(arg1, npcs.Npc12348Data.id, 0)
        arg1_2:NpcCreate(arg1, npcs.Npc2143Data.id, 0)
        arg1_2:NpcCreate(arg1, npcs.Npc12372Data.id, 0)
        actorMgr:CreateActorWithPos("Q11009TriggerFollow", "Actor/Gadget/Q11009TriggerFollow", 70900002, 0, {x = -514.0751, y = 249.0346, z = 457.4044}, {x = 0, y = 0, z = 0}, true, false)
        arg1_2:NotifyTo(npcs.Npc2029Data.alias, 1, true)
        arg1_2:NotifyTo(npcs.Npc2071Data.alias, 1, true)
        arg1_2:NotifyTo(npcs.Npc2027Data.alias, 1, true)
        arg1_2:NotifyTo(npcs.Npc2028Data.alias, 1, true)
    end)
end

function Quest11009:OnSubFinish1100905(arg1)
    print("OnSubFinish1100905")
    self:LightNotifyTo(npcs.Npc2071Data.alias, 0, true)
end

function Quest11009:OnSubFailed1100905(arg1)
    print("OnSubFailed1100905")
end

function Quest11009:OnSubStart1100902(arg1)
    print("OnSubStart1100902")
    self:NpcCreate(arg1, npcs.Npc1045Data.id, 0)
    self:NpcCreate(arg1, npcs.Npc12330Data.id, 0)
    self:NpcCreate(arg1, npcs.Npc12331Data.id, 0)
    actorMgr:CreateActorWithPos("Q11009TriggerTrouble", "Actor/Gadget/Q11009TriggerTrouble", 70900002, 0, {x = -480, y = 228.1001, z = 442.0775}, {x = 0, y = 0, z = 0}, true, false, 3)
    self:NotifyTo(npcs.Npc2029Data.alias, 1, true)
    self:NotifyTo(npcs.Npc2027Data.alias, 1, true)
    self:NotifyTo(npcs.Npc2028Data.alias, 1, true)
end

function Quest11009:OnSubFinish1100902(arg1)
    print("OnSubFinish1100902")
    self:ActionSafeCall(function(arg1)
        arg1:NpcDestroy(npcs.Npc1045Data.alias, 3)
        arg1:NpcDestroy(npcs.Npc12330Data.alias, 3)
        arg1:NpcDestroy(npcs.Npc12331Data.alias, 3)
        arg1:NpcDestroy(npcs.Npc12347Data.alias, 3)
        arg1:CallDelay(1.5, function(arg1)
            arg1:NarratorOnlyTaskByData(datas.NarratorWithId2)
        end)
    end)
end

function Quest11009:OnSubFailed1100902(arg1)
    print("OnSubFailed1100902")
end

function Quest11009:OnSubStart1100903(arg1)
    print("OnSubStart1100903")
    self:NpcCreate(arg1, npcs.Npc2103Data.id, 0)
    actorMgr:CreateActorWithPos("Q11009Trigger", "Actor/Gadget/Q11009Trigger", 70900002, 0, {x = -429.1018, y = 239.2466, z = 434.11}, {x = 0, y = 0, z = 0}, true, false)
    self:NotifyTo(npcs.Npc2029Data.alias, 1, true)
    self:NotifyTo(npcs.Npc2068Data.alias, 1, true)
    self:NotifyTo(npcs.Npc2027Data.alias, 1, true)
    self:NotifyTo(npcs.Npc2028Data.alias, 1, true)
end

function Quest11009:OnSubFinish1100903(arg1)
    print("OnSubFinish1100903")
    self:ClearNarratorTask()
    self:StopNarrator()
    self:ActionSafeCall(function(arg1)
        arg1:NpcDestroy(npcs.Npc2103Data.alias, 3)
        arg1:NpcDestroy(npcs.Npc12344Data.alias, 3)
        arg1:NpcDestroy(npcs.Npc12345Data.alias, 3)
        arg1:NpcDestroy(npcs.Npc12346Data.alias, 3)
        arg1:NpcDestroy(npcs.Npc12371Data.alias, 3)
        arg1:NpcDestroy(npcs.Npc12348Data.alias, 3)
        arg1:NpcDestroy(npcs.Npc2143Data.alias, 3)
        arg1:NpcDestroy(npcs.Npc12372Data.alias, 3)
        arg1:LightNotifyTo(npcs.Npc2029Data.alias, 0, true)
        arg1:LightNotifyTo(npcs.Npc2068Data.alias, 0, true)
        arg1:NpcDestroy(npcs.Npc10234Data.alias, 3)
        arg1:LightNotifyTo(npcs.Npc2027Data.alias, 0, true)
        arg1:LightNotifyTo(npcs.Npc2028Data.alias, 0, true)
    end)
end

function Quest11009:OnSubFailed1100903(arg1)
    print("OnSubFailed1100903")
end

function Quest11009:OnSubStart1100907(arg1)
    print("OnSubStart1100907")
end

function Quest11009:OnSubFinish1100907(arg1)
    print("OnSubFinish1100907")
end

function Quest11009:OnSubStart1100906(arg1)
    print("OnSubStart1100906")
end

function Quest11009:OnSubFinish1100906(arg1)
    print("OnSubFinish1100906")
end

function Quest11009:OnSubStart1100904(arg1)
    print("OnSubStart1100904")
end

function Quest11009:OnSubFinish1100904(arg1)
    print("OnSubFinish1100904")
end

function Quest11009:OnSubFailed1100904(arg1)
    print("OnSubFailed1100904")
end

return Quest11009
