require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest3013 = class("Quest3013", QuestActorProxy)
Quest3013.defaultAlias = "Quest3013"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest3013:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest3013:OnSubStartHandlerBuild()
    self.subStartHandlers = {["301302"] = self.OnSubStart301302, ["301301"] = self.OnSubStart301301}
end

function Quest3013:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["301302"] = self.OnSubFinish301302, ["301301"] = self.OnSubFinish301301}
end

function Quest3013:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest3013:Start()
    print("Start")
end

function Quest3013:OnDestroy()
    print("OnDestroy")
end

function Quest3013:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest3013:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest3013:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest3013:NpcCreate(arg1, arg2, arg3)
    self:CreateQuestNpc(arg1, arg2, arg3)
end

function Quest3013:NpcDestroy(arg1, arg2)
    self:SafeDestroyQuestNpc(arg1, arg2)
end

function Quest3013:OnSubStart301302(arg1)
    print("OnSubStart301302")
    self:ActionSafeCall(function(arg1_2)
        arg1_2:NpcCreate(arg1, npcs.Npc12555Data.id, 0)
        arg1_2:GetQuestNpcActor(npcs.Npc12555Data.alias):DoFreeStyle(4100, true, nil, true, true, true, false)
        arg1_2:NpcCreate(arg1, npcs.Npc12913Data.id, 0)
        arg1_2:NotifyTo(npcs.Npc4020Data.alias, 1, true)
        arg1_2:NotifyTo(npcs.Npc4021Data.alias, 1, true)
        arg1_2:NotifyTo(npcs.Npc4054Data.alias, 1, true)
        arg1_2:NotifyTo(npcs.Npc4044Data.alias, 1, true)
        arg1_2:NotifyTo(npcs.Npc4069Data.alias, 1, true)
        arg1_2:NotifyTo(npcs.Npc4068Data.alias, 1, true)
        arg1_2:NotifyTo(npcs.Npc4067Data.alias, 1, true)
        arg1_2:NotifyTo(npcs.Npc4066Data.alias, 1, true)
        arg1_2:NotifyTo(npcs.Npc4314Data.alias, 1, true)
        arg1_2:NotifyTo(npcs.Npc4070Data.alias, 1, true)
        arg1_2:NotifyTo(npcs.Npc4048Data.alias, 1, true)
        arg1_2:NotifyTo(npcs.Npc4049Data.alias, 1, true)
        arg1_2:NotifyTo(npcs.Npc4315Data.alias, 1, true)
        arg1_2:NotifyTo(npcs.Npc4065Data.alias, 1, true)
        arg1_2:NotifyTo(npcs.Npc4060Data.alias, 1, true)
        arg1_2:NotifyTo(npcs.Npc4062Data.alias, 1, true)
        arg1_2:NotifyTo(npcs.Npc4056Data.alias, 1, true)
        arg1_2:NotifyTo(npcs.Npc4077Data.alias, 1, true)
        arg1_2:NotifyTo(npcs.Npc4080Data.alias, 1, true)
        arg1_2:NotifyTo(npcs.Npc4098Data.alias, 1, true)
        arg1_2:NotifyTo(npcs.Npc4079Data.alias, 1, true)
        arg1_2:NotifyTo(npcs.Npc4074Data.alias, 1, true)
        arg1_2:NotifyTo(npcs.Npc4073Data.alias, 1, true)
        arg1_2:NotifyTo(npcs.Npc4072Data.alias, 1, true)
        arg1_2:NotifyTo(npcs.Npc4076Data.alias, 1, true)
        arg1_2:NotifyTo(npcs.Npc4075Data.alias, 1, true)
        arg1_2:NotifyTo(npcs.Npc4071Data.alias, 1, true)
        arg1_2:NotifyTo(npcs.Npc4078Data.alias, 1, true)
        arg1_2:NotifyTo(npcs.Npc4102Data.alias, 1, true)
        arg1_2:NotifyTo(npcs.Npc4019Data.alias, 1, true)
    end)
end

function Quest3013:OnSubFinish301302(arg1)
    print("OnSubFinish301302")
    self:NpcDestroy(npcs.Npc12913Data.alias, 3)
end

function Quest3013:OnSubStart301301(arg1)
    print("OnSubStart301301")
    self:ActionSafeCall(function(arg1_2)
        arg1_2:NpcCreate(arg1, npcs.Npc12913Data.id, 0)
        actorMgr:CreateActorWithPos("Q3013TriggerFin", "Actor/Gadget/Q3013TriggerFin", 70900002, 0, {x = -506.268, y = 223.092, z = 2788.937}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
    end)

    self:GetQuestNpcActor(npcs.Npc12555Data.alias):DoFreeStyle(4100, true, nil, true, true, true, false)
    self:NotifyTo(npcs.Npc4020Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4021Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4054Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4044Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4069Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4068Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4067Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4066Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4314Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4070Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4048Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4049Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4315Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4065Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4060Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4062Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4056Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4077Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4080Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4098Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4079Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4074Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4073Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4072Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4076Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4075Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4071Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4078Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4102Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4019Data.alias, 1, true)
end

function Quest3013:OnSubFinish301301(arg1)
    print("OnSubFinish301301")
    self:NpcDestroy(npcs.Npc12555Data.alias, 3)
    self:NpcDestroy(npcs.Npc12913Data.alias, 3)
    self:ActionSafeCall(function(arg1)
        arg1:LightNotifyTo(npcs.Npc4020Data.alias, 0, true)
        arg1:LightNotifyTo(npcs.Npc4021Data.alias, 0, true)
        arg1:LightNotifyTo(npcs.Npc4054Data.alias, 0, true)
        arg1:LightNotifyTo(npcs.Npc4044Data.alias, 0, true)
        arg1:LightNotifyTo(npcs.Npc4069Data.alias, 0, true)
        arg1:LightNotifyTo(npcs.Npc4068Data.alias, 0, true)
        arg1:LightNotifyTo(npcs.Npc4067Data.alias, 0, true)
        arg1:LightNotifyTo(npcs.Npc4066Data.alias, 0, true)
        arg1:LightNotifyTo(npcs.Npc4314Data.alias, 0, true)
        arg1:LightNotifyTo(npcs.Npc4070Data.alias, 0, true)
        arg1:LightNotifyTo(npcs.Npc4048Data.alias, 0, true)
        arg1:LightNotifyTo(npcs.Npc4049Data.alias, 0, true)
        arg1:LightNotifyTo(npcs.Npc4315Data.alias, 0, true)
        arg1:LightNotifyTo(npcs.Npc4065Data.alias, 0, true)
        arg1:LightNotifyTo(npcs.Npc4060Data.alias, 0, true)
        arg1:LightNotifyTo(npcs.Npc4062Data.alias, 0, true)
        arg1:LightNotifyTo(npcs.Npc4056Data.alias, 0, true)
        arg1:LightNotifyTo(npcs.Npc4077Data.alias, 0, true)
        arg1:LightNotifyTo(npcs.Npc4080Data.alias, 0, true)
        arg1:LightNotifyTo(npcs.Npc4098Data.alias, 0, true)
        arg1:LightNotifyTo(npcs.Npc4079Data.alias, 0, true)
        arg1:LightNotifyTo(npcs.Npc4074Data.alias, 0, true)
        arg1:LightNotifyTo(npcs.Npc4073Data.alias, 0, true)
        arg1:LightNotifyTo(npcs.Npc4072Data.alias, 0, true)
        arg1:LightNotifyTo(npcs.Npc4076Data.alias, 0, true)
        arg1:LightNotifyTo(npcs.Npc4075Data.alias, 0, true)
        arg1:LightNotifyTo(npcs.Npc4071Data.alias, 0, true)
        arg1:LightNotifyTo(npcs.Npc4078Data.alias, 0, true)
        arg1:LightNotifyTo(npcs.Npc4102Data.alias, 0, true)
        arg1:LightNotifyTo(npcs.Npc4019Data.alias, 0, true)
    end)
end

return Quest3013
