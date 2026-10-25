require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7710432Trigger02 = class("Q7710432Trigger02", GadgetActorProxy)
Q7710432Trigger02.defaultAlias = "Q7710432Trigger02"
local Q77104ClientConfig = require("Quest/Client/Q77104ClientConfig")

local this
local subIDs = Q77104ClientConfig.SubIDs
local datas = Q77104ClientConfig.Datas
local npcs = Q77104ClientConfig.Npcs
local points = Q77104ClientConfig.Points

function Q7710432Trigger02:OnPostDataPrepare()
    print("Q7710432Trigger02 - OnPostDataPrepare")
    this = self
end

function Q7710432Trigger02:OnPostComponentPrepare()
    print("Q7710432Trigger02 - OnPostComponentPrepare")
    this:AddCubeShapeTrigger(45, 10, 4, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77104)
end

function Q7710432Trigger02:TriggerIn()
    print("Q7710432Trigger02 - TriggerIn")
    actorMgr:GetActor("77104"):RequestInteraction(npcs.Npc3417.alias, "", true)
end

function Q7710432Trigger02:PreTriggerIn()
    print("Q7710432Trigger02 - PreTriggerIn")
end

function Q7710432Trigger02:LightUpTriggerIn()
    print("Q7710432Trigger02 - LightUpTriggerIn")
end

function Q7710432Trigger02:TriggerOut()
    print("Q7710432Trigger02 - TriggerOut")
end

return Q7710432Trigger02
