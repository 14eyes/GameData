require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q502811Trigger = class("Q502811Trigger", GadgetActorProxy)
Q502811Trigger.defaultAlias = "Q502811Trigger"
local Q5028ClientConfig = require("Quest/Client/Q5028ClientConfig")

local this
local subIDs = Q5028ClientConfig.SubIDs
local datas = Q5028ClientConfig.Datas
local npcs = Q5028ClientConfig.Npcs
local points = Q5028ClientConfig.Points

function Q502811Trigger:OnPostDataPrepare()
    print("Q502811Trigger - OnPostDataPrepare")
    this = self
end

function Q502811Trigger:OnPostComponentPrepare()
    print("Q502811Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(50, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 5028)
end

function Q502811Trigger:TriggerIn()
    print("Q502811Trigger - TriggerIn")
    actorMgr:GetActor("5028"):PlayerEnterDungeonWithData(1, 1227, 502811, 1, datas.PlayerEnterDungeonData, nil, nil)
end

function Q502811Trigger:PreTriggerIn()
    print("Q502811Trigger - PreTriggerIn")
end

function Q502811Trigger:LightUpTriggerIn()
    print("Q502811Trigger - LightUpTriggerIn")
end

function Q502811Trigger:TriggerOut()
    print("Q502811Trigger - TriggerOut")
end

return Q502811Trigger
