require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q603802Trigger = class("Q603802Trigger", GadgetActorProxy)
Q603802Trigger.defaultAlias = "Q603802Trigger"
local Q6038ClientConfig = require("Quest/Client/Q6038ClientConfig")

local this
local subIDs = Q6038ClientConfig.SubIDs
local datas = Q6038ClientConfig.Datas
local npcs = Q6038ClientConfig.Npcs
local points = Q6038ClientConfig.Points

function Q603802Trigger:OnPostDataPrepare()
    print("Q603802Trigger - OnPostDataPrepare")
    this = self
end

function Q603802Trigger:OnPostComponentPrepare()
    print("Q603802Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 6038)
end

function Q603802Trigger:TriggerIn()
    print("Q603802Trigger - TriggerIn")
    actorMgr:GetActor("6038"):PlayerEnterDungeonWithData(3, 1315, 603802, 1, datas.TransmitData_blackscreen, nil, nil)
    this:DestroySelf()
end

function Q603802Trigger:PreTriggerIn()
    print("Q603802Trigger - PreTriggerIn")
end

function Q603802Trigger:LightUpTriggerIn()
    print("Q603802Trigger - LightUpTriggerIn")
end

function Q603802Trigger:TriggerOut()
    print("Q603802Trigger - TriggerOut")
end

return Q603802Trigger
