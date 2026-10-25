require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q603811Trigger = class("Q603811Trigger", GadgetActorProxy)
Q603811Trigger.defaultAlias = "Q603811Trigger"
local Q6038ClientConfig = require("Quest/Client/Q6038ClientConfig")

local this
local subIDs = Q6038ClientConfig.SubIDs
local datas = Q6038ClientConfig.Datas
local npcs = Q6038ClientConfig.Npcs
local points = Q6038ClientConfig.Points

function Q603811Trigger:OnPostDataPrepare()
    print("Q603811Trigger - OnPostDataPrepare")
    this = self
end

function Q603811Trigger:OnPostComponentPrepare()
    print("Q603811Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(1, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 6038)
end

function Q603811Trigger:TriggerIn()
    print("Q603811Trigger - TriggerIn")
    actorMgr:GetActor("6038"):PlayerEnterDungeonWithData(0, 0, 0, 0, nil, nil, nil)
    this:DestroySelf()
end

function Q603811Trigger:PreTriggerIn()
    print("Q603811Trigger - PreTriggerIn")
end

function Q603811Trigger:LightUpTriggerIn()
    print("Q603811Trigger - LightUpTriggerIn")
end

function Q603811Trigger:TriggerOut()
    print("Q603811Trigger - TriggerOut")
end

return Q603811Trigger
