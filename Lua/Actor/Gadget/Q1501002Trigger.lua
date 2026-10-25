require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1501002Trigger = class("Q1501002Trigger", GadgetActorProxy)
Q1501002Trigger.defaultAlias = "Q1501002Trigger"
local Q15010ClientConfig = require("Quest/Client/Q15010ClientConfig")

local this
local subIDs = Q15010ClientConfig.SubIDs
local datas = Q15010ClientConfig.Datas
local npcs = Q15010ClientConfig.Npcs
local points = Q15010ClientConfig.Points

function Q1501002Trigger:OnPostDataPrepare()
    print("Q1501002Trigger - OnPostDataPrepare")
    this = self
end

function Q1501002Trigger:OnPostComponentPrepare()
    print("Q1501002Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 15010)
end

function Q1501002Trigger:TriggerIn()
    print("Q1501002Trigger - TriggerIn")
    actorMgr:GetActor("15010"):PlayerEnterDungeonPointWithDialogs(1379, 1218, 1501002, 1, datas.DialogIdsData, 1, nil, nil)
end

function Q1501002Trigger:PreTriggerIn()
    print("Q1501002Trigger - PreTriggerIn")
end

function Q1501002Trigger:LightUpTriggerIn()
    print("Q1501002Trigger - LightUpTriggerIn")
end

function Q1501002Trigger:TriggerOut()
    print("Q1501002Trigger - TriggerOut")
end

return Q1501002Trigger
