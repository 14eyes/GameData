require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1600110Trigger = class("Q1600110Trigger", GadgetActorProxy)
Q1600110Trigger.defaultAlias = "Q1600110Trigger"
local Q16001ClientConfig = require("Quest/Client/Q16001ClientConfig")

local this
local subIDs = Q16001ClientConfig.SubIDs
local datas = Q16001ClientConfig.Datas
local npcs = Q16001ClientConfig.Npcs
local points = Q16001ClientConfig.Points

function Q1600110Trigger:OnPostDataPrepare()
    print("Q1600110Trigger - OnPostDataPrepare")
    this = self
end

function Q1600110Trigger:OnPostComponentPrepare()
    print("Q1600110Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 16001)
end

function Q1600110Trigger:TriggerIn()
    print("Q1600110Trigger - TriggerIn")
    actorMgr:GetActor("16001"):PlayerEnterDungeonWithData(1878, 2205, 1600110, 1, datas.PlayerEnterDungeonData_Party, nil, nil)
end

function Q1600110Trigger:PreTriggerIn()
    print("Q1600110Trigger - PreTriggerIn")
end

function Q1600110Trigger:LightUpTriggerIn()
    print("Q1600110Trigger - LightUpTriggerIn")
end

function Q1600110Trigger:TriggerOut()
    print("Q1600110Trigger - TriggerOut")
end

return Q1600110Trigger
