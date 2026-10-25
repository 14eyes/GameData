require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest13013 = class("Quest13013", QuestActorProxy)
Quest13013.defaultAlias = "Quest13013"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest13013:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest13013:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1301301"] = self.OnSubStart1301301,
        ["1301302"] = self.OnSubStart1301302,
        ["1301303"] = self.OnSubStart1301303,
        ["1301308"] = self.OnSubStart1301308,
        ["1301304"] = self.OnSubStart1301304,
        ["1301309"] = self.OnSubStart1301309,
        ["1301310"] = self.OnSubStart1301310,
        ["1301311"] = self.OnSubStart1301311,
        ["1301305"] = self.OnSubStart1301305,
        ["1301306"] = self.OnSubStart1301306,
        ["1301307"] = self.OnSubStart1301307
    }
end

function Quest13013:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1301301"] = self.OnSubFinish1301301,
        ["1301302"] = self.OnSubFinish1301302,
        ["1301303"] = self.OnSubFinish1301303,
        ["1301308"] = self.OnSubFinish1301308,
        ["1301304"] = self.OnSubFinish1301304,
        ["1301309"] = self.OnSubFinish1301309,
        ["1301310"] = self.OnSubFinish1301310,
        ["1301311"] = self.OnSubFinish1301311,
        ["1301305"] = self.OnSubFinish1301305,
        ["1301306"] = self.OnSubFinish1301306,
        ["1301307"] = self.OnSubFinish1301307
    }
end

function Quest13013:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest13013:Start()
    print("Start")
end

function Quest13013:OnDestroy()
    print("OnDestroy")
end

function Quest13013:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest13013:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest13013:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest13013:NpcCreate(arg1, arg2, arg3)
    self:CreateQuestNpc(arg1, arg2, arg3)
end

function Quest13013:NpcCreateWithActionSafeCall(arg1, arg2, arg3)
    self:ActionSafeCall(function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, arg2, arg3)
    end)
end

function Quest13013:NpcDestroyWithBlackscreen(arg1, arg2)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest13013:NpcDestroy(arg1, arg2)
    self:SafeDestroyQuestNpc(arg1, arg2)
end

function Quest13013:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    print("Dialogue refresh groupfight")
    local actor = actorMgr:GetActor(clientData.ActorAlias)
    if arg1 == 1 then
        actor:FinishQuestID(false, 1301311)
    end
end

function Quest13013:OnSubStart1301301(arg1)
    print("OnSubStart1301301")
    self:NpcCreate(arg1, npcs.Npc12839Data.id, 0)
    actorMgr:CreateActorWithPos("Q13013TriggerStart", "Actor/Gadget/Q13013TriggerStart", 70900002, 0, {x = -496.231, y = 222.724, z = 2780.892}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
    self:NotifyTo(npcs.Npc4010Data.alias, 1, true)
end

function Quest13013:OnSubFinish1301301(arg1)
    print("OnSubFinish1301301")
end

function Quest13013:OnSubStart1301302(arg1)
    print("OnSubStart1301302")
    self:RequestInteraction(npcs.Npc12839Data.alias)
    self:NotifyTo(npcs.Npc4010Data.alias, 1, true)
end

function Quest13013:OnSubFinish1301302(arg1)
    print("OnSubFinish1301302")
    self:ActionSafeCall(function(arg1)
        arg1:CallDelay(1, function(arg1)
            arg1:NarratorOnlyTaskByData(datas.NarratorWithId)
        end)
    end)

    self:NpcDestroyWithBlackscreen(3, npcs.Npc12839Data.alias)
end

function Quest13013:OnSubStart1301303(arg1)
    print("OnSubStart1301303")
    self:CreateQuestNpcWithTriggerBlack("Q1301303Trigger", 1301303, npcs.Npc12839Data.id, 0, 11, 1.5)
    self:NotifyTo(npcs.Npc4010Data.alias, 1, true)
    self:NpcCreate(arg1, npcs.Npc12842Data.id, 0)
    self:NpcCreateWithActionSafeCall(arg1, npcs.Npc12840Data.id, 0)
    self:NpcCreateWithActionSafeCall(arg1, npcs.Npc12843Data.id, 0)
    self:NpcCreateWithActionSafeCall(arg1, npcs.Npc12967Data.id, 0)
    self:NpcCreateWithActionSafeCall(arg1, npcs.Npc12951Data.id, 0)
    self:NpcCreateWithActionSafeCall(arg1, npcs.Npc12841Data.id, 0)
end

function Quest13013:OnSubFinish1301303(arg1)
    print("OnSubFinish1301303")
    self:StopNarrator()
    self:ClearNarratorTask()
    self:NpcDestroy(npcs.Npc12951Data.alias, 3)
    self:LightNotifyTo(npcs.Npc4010Data.alias, 0, true)
end

function Quest13013:OnSubStart1301308(arg1)
    print("OnSubStart1301308")
    self:ActionSafeCall(function(arg1)
        arg1:GetQuestNpcActor(npcs.Npc12840Data.alias):SitOnChair(0)
        local questNpcActor = arg1:GetQuestNpcActor(npcs.Npc1056Data.alias)
        questNpcActor:DisableInteeHeadCtrl(true)
        local v = arg1:GetQuestNpcActor(npcs.Npc12843Data.alias)
        v:DisableInteeHeadCtrl(true)
        questNpcActor:DoFreeStyle(1192, true, nil, true, true, false, true)
        v:DoFreeStyle(1180, true, nil, true, true, false, true)
    end)
end

function Quest13013:OnSubFinish1301308(arg1)
    print("OnSubFinish1301308")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc12840Data.alias)
    self:NpcDestroy(npcs.Npc1056Data.alias, 3)
end

function Quest13013:OnSubStart1301304(arg1)
    print("OnSubStart1301304")
    actorMgr:CreateActorWithPos("Q13013TriggerEventA", "Actor/Gadget/Q13013TriggerEventA", 70900002, 0, {x = -1050.206, y = 258.318, z = 2496.878}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
    self:GetQuestNpcActor(npcs.Npc12842Data.alias):CancelDefaultFreeStyleEx()
    self:GetQuestNpcActor(npcs.Npc12843Data.alias):CancelDefaultFreeStyleEx()
end

function Quest13013:OnSubFinish1301304(arg1)
    print("OnSubFinish1301304")
end

function Quest13013:OnSubStart1301309(arg1)
    print("OnSubStart1301309")
    self:CreateQuestNpcWithTriggerBlack("Q1301309", 1301309, npcs.Npc12840Data.id, 0, 20, 2)
end

function Quest13013:OnSubFinish1301309(arg1)
    print("OnSubFinish1301309")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc12840Data.alias)
end

function Quest13013:OnSubStart1301310(arg1)
    print("OnSubStart1301310")
    self:CreateQuestNpcWithTriggerBlack("Q1301310", 1301310, npcs.Npc1056Data.id, 0, 17, 3.5)
end

function Quest13013:OnSubFinish1301310(arg1)
    print("OnSubFinish1301310")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc1056Data.alias)
end

function Quest13013:OnSubStart1301311(arg1)
    print("OnSubStart1301311")
end

function Quest13013:OnSubFinish1301311(arg1)
    print("OnSubFinish1301311")
end

function Quest13013:OnSubStart1301305(arg1)
    print("OnSubStart1301305")
end

function Quest13013:OnSubFinish1301305(arg1)
    print("OnSubFinish1301305")
end

function Quest13013:OnSubStart1301306(arg1)
    print("OnSubStart1301306")
    self:CreateQuestNpcWithTriggerBlack("Q1301306", 1301306, npcs.Npc12840Data.id, 0, 20, 2.5)
end

function Quest13013:OnSubFinish1301306(arg1)
    print("OnSubFinish1301306")
    self:StopNarrator()
    self:ClearNarratorTask()
    self:NpcDestroyWithBlackscreen(3, npcs.Npc12840Data.alias)
end

function Quest13013:OnSubStart1301307(arg1)
    print("OnSubStart1301307")
    actorMgr:CreateActorWithPos("Q13013TriggerBackClub1", "Actor/Gadget/Q13013TriggerBackClub1", 70900002, 0, {x = -423.239, y = 250.097, z = 2739.017}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
    self:NpcCreate(arg1, npcs.Npc12842Data.id, 0)
    self:NpcCreate(arg1, npcs.Npc12967Data.id, 0)
end

function Quest13013:OnSubFinish1301307(arg1)
    print("OnSubFinish1301307")
    self:NpcDestroy(npcs.Npc12839Data.alias, 3)
    self:NpcDestroy(npcs.Npc12842Data.alias, 3)
    self:NpcDestroyWithBlackscreen(3, npcs.Npc12840Data.alias)
    self:NpcDestroy(npcs.Npc12843Data.alias, 3)
    self:NpcDestroy(npcs.Npc12967Data.alias, 3)
end

return Quest13013
