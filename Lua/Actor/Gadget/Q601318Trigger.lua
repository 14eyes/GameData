require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q601318Trigger = class("Q601318Trigger", GadgetActorProxy)
Q601318Trigger.defaultAlias = "Q601318Trigger"
local Q6013ClientConfig = require("Quest/Client/Q6013ClientConfig")

local this
local subIDs = Q6013ClientConfig.SubIDs
local datas = Q6013ClientConfig.Datas
local npcs = Q6013ClientConfig.Npcs
local points = Q6013ClientConfig.Points

function Q601318Trigger:OnPostDataPrepare()
    print("Q601318Trigger - OnPostDataPrepare")
    this = self
end

function Q601318Trigger:OnPostComponentPrepare()
    print("Q601318Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(70, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 6013)
end

function Q601318Trigger:TriggerIn()
    print("Q601318Trigger - TriggerIn")
    actorMgr:GetActor("6013"):PlayerEnterDungeonWithData(1793, 1273, 601318, 7, datas.PlayerEnterDungeonSpecial01, nil, nil)
    this:DestroySelf()
end

function Q601318Trigger:PreTriggerIn()
    print("Q601318Trigger - PreTriggerIn")
end

function Q601318Trigger:LightUpTriggerIn()
    print("Q601318Trigger - LightUpTriggerIn")
end

function Q601318Trigger:TriggerOut()
    print("Q601318Trigger - TriggerOut")
end

return Q601318Trigger
