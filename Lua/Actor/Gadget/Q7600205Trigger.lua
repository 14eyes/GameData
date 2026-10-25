require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7600205Trigger = class("Q7600205Trigger", GadgetActorProxy)
Q7600205Trigger.defaultAlias = "Q7600205Trigger"
local Q76002ClientConfig = require("Quest/Client/Q76002ClientConfig")

local this
local subIDs = Q76002ClientConfig.SubIDs
local datas = Q76002ClientConfig.Datas
local npcs = Q76002ClientConfig.Npcs
local points = Q76002ClientConfig.Points

function Q7600205Trigger:OnPostDataPrepare()
    print("Q7600205Trigger - OnPostDataPrepare")
    this = self
end

function Q7600205Trigger:OnPostComponentPrepare()
    print("Q7600205Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76002)
end

function Q7600205Trigger:TriggerIn()
    print("Q7600205Trigger - TriggerIn")
    actorMgr:GetActor("76002"):ShowBlackScreen(0.5, 2, 0.5, function(arg1)
        actorMgr:GetActor("76002"):CreateQuestNpcById(7600205, npcs.Npc22020.id, 0, false, 0)
        actorMgr:GetActor("76002"):CreateQuestNpcById(7600205, npcs.Npc22056.id, 0, false, 0)
        actorMgr:GetActor("76002"):CreateQuestNpcById(7600205, npcs.Npc22057.id, 0, false, 0)
        actorMgr:GetActor("76002"):RequestInteraction(npcs.Npc22020.alias, "", true)
        this:DestroySelf()
    end, nil, nil, "", false, true)
end

function Q7600205Trigger:PreTriggerIn()
    print("Q7600205Trigger - PreTriggerIn")
end

function Q7600205Trigger:LightUpTriggerIn()
    print("Q7600205Trigger - LightUpTriggerIn")
end

function Q7600205Trigger:TriggerOut()
    print("Q7600205Trigger - TriggerOut")
end

return Q7600205Trigger
